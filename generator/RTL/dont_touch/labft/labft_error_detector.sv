module labft_error_detector
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = $clog2(arraySize),
	parameter counterWidth = $clog2(2*arraySize+1)
)
(
    input logic clk,
    input logic rst,
    input logic valid_dot,
    input logic valid_acc,
    input logic [2*inputBits+3*arraySize-1:0] ae_dot,
    input logic [2*inputBits+3*arraySize-1:0] be_dot,
    input logic [2*inputBits+3*arraySize-1:0] ce_dot,
    input logic [2*inputBits+3*arraySize-1:0] de_dot,
    input logic [2*inputBits+3*arraySize-1:0] w_acc,
    input logic [2*inputBits+3*arraySize-1:0] x_acc,
    input logic [2*inputBits+3*arraySize-1:0] y_acc,
    input logic [2*inputBits+3*arraySize-1:0] z_acc,
    output logic [3:0] error
);

    //delay **_dot
    logic [2*inputBits+3*arraySize-1:0] ae_dot_0;
    logic [2*inputBits+3*arraySize-1:0] ae_dot_1;
    dff_enbl #(2*inputBits+3*arraySize) dff_ae_dot_0(clk, valid_dot, ae_dot, ae_dot_0);
    dff_enbl #(2*inputBits+3*arraySize) dff_ae_dot_1(clk, valid_dot, ae_dot_0, ae_dot_1);
    logic [2*inputBits+3*arraySize-1:0] be_dot_0;
    logic [2*inputBits+3*arraySize-1:0] be_dot_1;
    dff_enbl #(2*inputBits+3*arraySize) dff_be_dot_0(clk, valid_dot, be_dot, be_dot_0);
    dff_enbl #(2*inputBits+3*arraySize) dff_be_dot_1(clk, valid_dot, be_dot_0, be_dot_1);
    logic [2*inputBits+3*arraySize-1:0] ce_dot_0;
    logic [2*inputBits+3*arraySize-1:0] ce_dot_1;
    dff_enbl #(2*inputBits+3*arraySize) dff_ce_dot_0(clk, valid_dot, ce_dot, ce_dot_0);
    dff_enbl #(2*inputBits+3*arraySize) dff_ce_dot_1(clk, valid_dot, ce_dot_0, ce_dot_1);
    logic [2*inputBits+3*arraySize-1:0] de_dot_0;
    logic [2*inputBits+3*arraySize-1:0] de_dot_1;
    dff_enbl #(2*inputBits+3*arraySize) dff_de_dot_0(clk, valid_dot, de_dot, de_dot_0);
    dff_enbl #(2*inputBits+3*arraySize) dff_de_dot_1(clk, valid_dot, de_dot_0, de_dot_1);
    
    //detect
    logic w_error;
    dff_enbl #(1) dff_w_error(clk, valid_acc, (ae_dot_1 != w_acc), w_error);
    logic x_error;
    dff_enbl #(1) dff_x_error(clk, valid_acc, (be_dot_1 != x_acc), x_error);
    logic y_error;
    dff_enbl #(1) dff_y_error(clk, valid_acc, (ce_dot_1 != y_acc), y_error);
    logic z_error;
    dff_enbl #(1) dff_z_error(clk, valid_acc, (de_dot_1 != z_acc), z_error);
    logic [3:0] error_flags;
    assign error_flags = {w_error, x_error, y_error, z_error};
    
    //control
    typedef enum logic [1:0] {idleState=2'd0, normalState, errorState} stateType;
    stateType currentState, nextState;
    dff #(2) state(clk, rst, nextState[1:0], currentState[1:0]);
    
    logic [3:0] dff_error_in;
    logic [3:0] dff_error_out;
    dff #(4) dff_error(clk, rst, dff_error_in, dff_error_out);
    
    always_comb begin
        unique case(currentState)
            idleState: begin
                dff_error_in = 4'b0000;
                nextState = (valid_acc) ? normalState:idleState;
            end
            normalState: begin
                dff_error_in = error_flags;
                nextState = (error_flags == 4'b0000) ? normalState:errorState;
            end
            errorState: begin
                dff_error_in = dff_error_out;
                nextState = errorState;
            end
        endcase
    end
    
    assign error = dff_error_out;
        
endmodule

