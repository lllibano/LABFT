module fsm
#(
    parameter words = 2,
    parameter addressWidth = $clog2(words),
    parameter latency = 6+words, //6 = pipeline stages on PE + memory read delay
    parameter cycleCounterWidth = $clog2(latency+1)
)
(
    //clk, rst
    input logic clk,
    input logic rst,
    //global control
    input logic start,
    input logic interrupt,
    //axi inout
    output logic S_AXIS_TREADY,
    input logic S_AXIS_TVALID,
    input logic S_AXIS_TLAST,
    input logic M_AXIS_TREADY,
    output logic M_AXIS_TVALID,
    output logic M_AXIS_TLAST,
    //loadingWeightsState
    output logic loadingWeights,
    //runningState - inputs [mem -> array]
    output logic validInputs,
    //runningState - outputs [array -> mem]
    output logic validOutputs
);

    typedef enum logic [1:0] {idleState=2'd0, loadingWeightsState, runningState} stateType;
    stateType currentState, nextState;
    dff #(2) state(clk, rst, nextState[1:0], currentState[1:0]);

    logic [cycleCounterWidth-1:0] cycleCounter_mux;
    logic [cycleCounterWidth-1:0] cycleCounter_dff_in;
    logic [cycleCounterWidth-1:0] cycleCounter_dff_out;
    dff #(cycleCounterWidth) dff_cycleCounter(clk, rst, cycleCounter_dff_in, cycleCounter_dff_out);

    always_comb begin
        //defaults
        loadingWeights = 1'b0;
        validInputs = 1'b0;
        validOutputs = 1'b0;
        cycleCounter_dff_in = {cycleCounterWidth{1'b0}};
        S_AXIS_TREADY = 1'b0;
        M_AXIS_TVALID = 1'b0;
        M_AXIS_TLAST = 1'b0;
        //logic
        unique case(currentState)
            idleState: begin
                loadingWeights = 1'b0;
                validInputs = 1'b0;
                validOutputs = 1'b0;
                cycleCounter_mux = {cycleCounterWidth{1'b0}};
                cycleCounter_dff_in = {cycleCounterWidth{1'b0}};
                S_AXIS_TREADY = 1'b0;
                M_AXIS_TVALID = 1'b0;
                M_AXIS_TLAST = 1'b0;
                nextState = (start) ? (loadingWeightsState):(idleState);
            end
            loadingWeightsState: begin
                loadingWeights = 1'b1;
                validInputs = 1'b0;
                validOutputs = 1'b0;
                cycleCounter_mux = (S_AXIS_TVALID) ? (cycleCounter_dff_out + 1'b1):(cycleCounter_dff_out);
                cycleCounter_dff_in = (cycleCounter_dff_out == words-1) ? ({cycleCounterWidth{1'b0}}):(cycleCounter_mux);
                S_AXIS_TREADY = 1'b1;
                M_AXIS_TVALID = 1'b0;
                M_AXIS_TLAST = 1'b0;
                nextState = (cycleCounter_dff_out == words-1) ? runningState:loadingWeightsState;
            end
            runningState: begin
                loadingWeights = 1'b0;
                validInputs = (interrupt) ? 1'b0:1'b1;
                validOutputs = (cycleCounter_dff_out == latency-1) ? 1'b1:1'b0;
                cycleCounter_mux = {cycleCounterWidth{1'b0}};
                cycleCounter_dff_in = (cycleCounter_dff_out == latency-1) ? (cycleCounter_dff_out):(cycleCounter_dff_out + 1'b1);              
                S_AXIS_TREADY = 1'b1;
                M_AXIS_TVALID = (cycleCounter_dff_out == latency-1) ? (1'b1):(1'b0);
                M_AXIS_TLAST = (cycleCounter_dff_out == latency-1) ? (1'b1):(1'b0);
                nextState = (interrupt) ? (idleState):(runningState);
            end
        endcase
    end

endmodule