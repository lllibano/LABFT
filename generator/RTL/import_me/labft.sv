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
	input logic interrupt,
	//Control
	input logic loadingWeights,
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
	logic [inputBits-1:0] a_0_clean;
	logic [inputBits-1:0] b_0_clean;
	logic [inputBits-1:0] c_0_clean;
	logic [inputBits-1:0] d_0_clean;
	logic [inputBits-1:0] a_1_clean;
	logic [inputBits-1:0] b_1_clean;
	logic [inputBits-1:0] c_1_clean;
	logic [inputBits-1:0] d_1_clean;
	logic [inputBits-1:0] a_2_clean;
	logic [inputBits-1:0] b_2_clean;
	logic [inputBits-1:0] c_2_clean;
	logic [inputBits-1:0] d_2_clean;
	logic [inputBits-1:0] a_3_clean;
	logic [inputBits-1:0] b_3_clean;
	logic [inputBits-1:0] c_3_clean;
	logic [inputBits-1:0] d_3_clean;
	assign a_0_clean = (validInputs) ? a_0:{inputBits{1'b0}};
	assign b_0_clean = (validInputs) ? b_0:{inputBits{1'b0}};
	assign c_0_clean = (validInputs) ? c_0:{inputBits{1'b0}};
	assign d_0_clean = (validInputs) ? d_0:{inputBits{1'b0}};
	assign a_1_clean = (validInputs) ? a_1:{inputBits{1'b0}};
	assign b_1_clean = (validInputs) ? b_1:{inputBits{1'b0}};
	assign c_1_clean = (validInputs) ? c_1:{inputBits{1'b0}};
	assign d_1_clean = (validInputs) ? d_1:{inputBits{1'b0}};
	assign a_2_clean = (validInputs) ? a_2:{inputBits{1'b0}};
	assign b_2_clean = (validInputs) ? b_2:{inputBits{1'b0}};
	assign c_2_clean = (validInputs) ? c_2:{inputBits{1'b0}};
	assign d_2_clean = (validInputs) ? d_2:{inputBits{1'b0}};
	assign a_3_clean = (validInputs) ? a_3:{inputBits{1'b0}};
	assign b_3_clean = (validInputs) ? b_3:{inputBits{1'b0}};
	assign c_3_clean = (validInputs) ? c_3:{inputBits{1'b0}};
	assign d_3_clean = (validInputs) ? d_3:{inputBits{1'b0}};
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
	abcd_n_acc_n abcd_n_acc_n(clk, rst, interrupt, validInputs,
								a_0_clean, b_0_clean, c_0_clean, d_0_clean, a_0_acc, b_0_acc, c_0_acc, d_0_acc,
								a_1_clean, b_1_clean, c_1_clean, d_1_clean, a_1_acc, b_1_acc, c_1_acc, d_1_acc,
								a_2_clean, b_2_clean, c_2_clean, d_2_clean, a_2_acc, b_2_acc, c_2_acc, d_2_acc,
								a_3_clean, b_3_clean, c_3_clean, d_3_clean, a_3_acc, b_3_acc, c_3_acc, d_3_acc,
								dot_nxn_selector, dot_nxn_clear);
	//e
	logic [1*inputBits+1*arraySize-1:0] e_0_acc;
	logic [1*inputBits+1*arraySize-1:0] e_1_acc;
	logic [1*inputBits+1*arraySize-1:0] e_2_acc;
	logic [1*inputBits+1*arraySize-1:0] e_3_acc;
	e_n_acc_n e_n_acc_n(clk, rst, interrupt, loadingWeights, validInputs,
							e_0, e_0_acc,
							e_1, e_1_acc,
							e_2, e_2_acc,
							e_3, e_3_acc);
	//dot
	logic [2*inputBits+3*arraySize-1:0] ae_dot;
	logic [2*inputBits+3*arraySize-1:0] be_dot;
	logic [2*inputBits+3*arraySize-1:0] ce_dot;
	logic [2*inputBits+3*arraySize-1:0] de_dot;
	logic valid_dot;
	abcde_dot_nxn abcde_dot_nxn(clk, rst, dot_nxn_selector, dot_nxn_clear, valid_dot,
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
	logic valid_acc;
	wxyz_acc_nxn wxyz_acc_nxn(clk, rst, interrupt, validOutputs, valid_acc,
								w_0, x_0, y_0, z_0,
								w_1, x_1, y_1, z_1,
								w_2, x_2, y_2, z_2,
								w_3, x_3, y_3, z_3,
								w_acc, x_acc, y_acc, z_acc);

	//labft_error_detector
	labft_error_detector #(arraySize) labft_error_detector(clk, rst, interrupt, valid_dot, valid_acc,
									ae_dot, be_dot, ce_dot, de_dot,
									w_acc, x_acc, y_acc, z_acc,
									error);

endmodule