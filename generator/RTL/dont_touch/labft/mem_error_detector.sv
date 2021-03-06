module mem_error_detector
#(
	parameter arraySize = 4
)
(
    input logic clk,
    input logic rst,
    input logic validOutputs,
    input logic [arraySize-1:0] mem_abcd_errors,
    input logic [arraySize-1:0] mem_e_errors,
    input logic [arraySize-1:0] mem_w_errors,
    input logic [arraySize-1:0] mem_x_errors,
    input logic [arraySize-1:0] mem_y_errors,
    input logic [arraySize-1:0] mem_z_errors,
    output logic [6*arraySize-1:0] error
);

    logic [6*arraySize-1:0] error_flags;
    assign error_flags = {mem_abcd_errors, mem_e_errors, mem_w_errors, mem_x_errors, mem_y_errors, mem_z_errors};
    
    //control
    typedef enum logic [1:0] {idleState=2'd0, normalState, errorState} stateType;
    stateType currentState, nextState;
    dff #(2) state(clk, rst, nextState[1:0], currentState[1:0]);
    
    logic [6*arraySize-1:0] dff_error_in;
    logic [6*arraySize-1:0] dff_error_out;
    dff #(6*arraySize) dff_error(clk, rst, dff_error_in, dff_error_out);
    
    always_comb begin
        unique case(currentState)
            idleState: begin
                dff_error_in = {6*arraySize{1'b0}};
                nextState = (validOutputs) ? normalState:idleState;
            end
            normalState: begin
                dff_error_in = error_flags;
                nextState = (error_flags == {6*arraySize{1'b0}}) ? normalState:errorState;
            end
            errorState: begin
                dff_error_in = dff_error_out;
                nextState = errorState;
            end
        endcase
    end
    
    assign error = dff_error_out;
        
endmodule
