module labft //4x4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = 2
)
(
	//CLK, RST
	input logic clk,
	input logic rst,
	//Control
	input logic validInputs,
	input logic validOutputs,
	//ABCD
	input logic [inputBits-1:0] a_0,
	input logic [inputBits-1:0] b_0,
	input logic [inputBits-1:0] c_0,
	input logic [inputBits-1:0] d_0,
	input logic [inputBits-1:0] a_1,
	input logic [inputBits-1:0] b_1,
	input logic [inputBits-1:0] c_1,
	input logic [inputBits-1:0] d_1,
	input logic [inputBits-1:0] a_2,
	input logic [inputBits-1:0] b_2,
	input logic [inputBits-1:0] c_2,
	input logic [inputBits-1:0] d_2,
	input logic [inputBits-1:0] a_3,
	input logic [inputBits-1:0] b_3,
	input logic [inputBits-1:0] c_3,
	input logic [inputBits-1:0] d_3,
	//E
	input logic [inputBits-1:0] e_0,
	input logic [inputBits-1:0] e_1,
	input logic [inputBits-1:0] e_2,
	input logic [inputBits-1:0] e_3,
	//WXYZ
	input logic [outputBits-1:0] w_0,
	input logic [outputBits-1:0] x_0,
	input logic [outputBits-1:0] y_0,
	input logic [outputBits-1:0] z_0,
	input logic [outputBits-1:0] w_1,
	input logic [outputBits-1:0] x_1,
	input logic [outputBits-1:0] y_1,
	input logic [outputBits-1:0] z_1,
	input logic [outputBits-1:0] w_2,
	input logic [outputBits-1:0] x_2,
	input logic [outputBits-1:0] y_2,
	input logic [outputBits-1:0] z_2,
	input logic [outputBits-1:0] w_3,
	input logic [outputBits-1:0] x_3,
	input logic [outputBits-1:0] y_3,
	input logic [outputBits-1:0] z_3,
	//Error Detection
	output logic [3:0] error
);

	//abcd
	logic [1*inputBits+1*arraySize-1:0] a_0_acc;
	logic [1*inputBits+1*arraySize-1:0] b_0_acc;
	logic [1*inputBits+1*arraySize-1:0] c_0_acc;
	logic [1*inputBits+1*arraySize-1:0] d_0_acc;
	logic [1*inputBits+1*arraySize-1:0] a_1_acc;
	logic [1*inputBits+1*arraySize-1:0] b_1_acc;
	logic [1*inputBits+1*arraySize-1:0] c_1_acc;
	logic [1*inputBits+1*arraySize-1:0] d_1_acc;
	logic [1*inputBits+1*arraySize-1:0] a_2_acc;
	logic [1*inputBits+1*arraySize-1:0] b_2_acc;
	logic [1*inputBits+1*arraySize-1:0] c_2_acc;
	logic [1*inputBits+1*arraySize-1:0] d_2_acc;
	logic [1*inputBits+1*arraySize-1:0] a_3_acc;
	logic [1*inputBits+1*arraySize-1:0] b_3_acc;
	logic [1*inputBits+1*arraySize-1:0] c_3_acc;
	logic [1*inputBits+1*arraySize-1:0] d_3_acc;
	logic [addressWidth-1:0] dot_nxn_selector;
	logic dot_nxn_clear;
	abcd_n_acc_n abcd_n_acc_n(clk, rst, validInputs,
								a_0, b_0, c_0, d_0, a_0_acc, b_0_acc, c_0_acc, d_0_acc,
								a_1, b_1, c_1, d_1, a_1_acc, b_1_acc, c_1_acc, d_1_acc,
								a_2, b_2, c_2, d_2, a_2_acc, b_2_acc, c_2_acc, d_2_acc,
								a_3, b_3, c_3, d_3, a_3_acc, b_3_acc, c_3_acc, d_3_acc,
								dot_nxn_selector, dot_nxn_clear);
	//e
	logic [1*inputBits+1*arraySize-1:0] e_0_acc;
	logic [1*inputBits+1*arraySize-1:0] e_1_acc;
	logic [1*inputBits+1*arraySize-1:0] e_2_acc;
	logic [1*inputBits+1*arraySize-1:0] e_3_acc;
	e_n_acc_n e_n_acc_n(clk, rst, validInputs,
							e_0, e_0_acc,
							e_1, e_1_acc,
							e_2, e_2_acc,
							e_3, e_3_acc);
	//dot
	logic [2*(inputBits+arraySize)+arraySize-1:0] ae_dot;
	logic [2*(inputBits+arraySize)+arraySize-1:0] be_dot;
	logic [2*(inputBits+arraySize)+arraySize-1:0] ce_dot;
	logic [2*(inputBits+arraySize)+arraySize-1:0] de_dot;
	abcde_dot_nxn abcde_dot_nxn(clk, rst, dot_nxn_selector, dot_nxn_clear,
									a_0_acc, b_0_acc, c_0_acc, d_0_acc, e_0_acc,
									a_1_acc, b_1_acc, c_1_acc, d_1_acc, e_1_acc,
									a_2_acc, b_2_acc, c_2_acc, d_2_acc, e_2_acc,
									a_3_acc, b_3_acc, c_3_acc, d_3_acc, e_3_acc,
									ae_dot, be_dot, ce_dot, de_dot);
	//wxyz
	logic [2*inputBits+3*arraySize-1:0] w_acc;
	logic [2*inputBits+3*arraySize-1:0] x_acc;
	logic [2*inputBits+3*arraySize-1:0] y_acc;
	logic [2*inputBits+3*arraySize-1:0] z_acc;
	wxyz_acc_nxn wxyz_acc_nxn(clk, rst, validOutputs,
								w_0, x_0, y_0, z_0,
								w_1, x_1, y_1, z_1,
								w_2, x_2, y_2, z_2,
								w_3, x_3, y_3, z_3,
								w_acc, x_acc, y_acc, z_acc);

endmodule