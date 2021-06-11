module top //4x4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = 2,
	parameter s_axi_tdata_width = arraySize*inputBits*5 + 96,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*4 + 0,
	parameter m_axi_tkeep_width = m_axi_tdata_width/8
)
(
	//CLK, RST
	input logic clk,
	input logic rst,
	input logic clk2x,
	//Global Control
	input logic start,
	input logic interrupt,
	//AXIS Slave Input Port
	input logic [s_axi_tdata_width-1:0] S_AXIS_TDATA,
	input logic [s_axi_tkeep_width-1:0] S_AXIS_TKEEP,
	input logic S_AXIS_TLAST,
	input logic S_AXIS_TVALID,
	output logic S_AXIS_TREADY,
	//AXIS Master Input Port
	output logic [m_axi_tdata_width-1:0] M_AXIS_TDATA,
	output logic [m_axi_tkeep_width-1:0] M_AXIS_TKEEP,
	output logic M_AXIS_TLAST,
	output logic M_AXIS_TVALID,
	input logic M_AXIS_TREADY,
	//LABFT
	output logic [3:0] error
);

	//signals
	//fsm
	logic loadingWeights;
	logic validInputs;
	logic validOutputs;
	//others
	//abcd
	//line0
	logic [inputBits-1:0] array_a_0_input;
	logic [inputBits-1:0] array_b_0_input;
	logic [inputBits-1:0] array_c_0_input;
	logic [inputBits-1:0] array_d_0_input;
	//line1
	logic [inputBits-1:0] array_a_1_input;
	logic [inputBits-1:0] array_b_1_input;
	logic [inputBits-1:0] array_c_1_input;
	logic [inputBits-1:0] array_d_1_input;
	//line2
	logic [inputBits-1:0] array_a_2_input;
	logic [inputBits-1:0] array_b_2_input;
	logic [inputBits-1:0] array_c_2_input;
	logic [inputBits-1:0] array_d_2_input;
	//line3
	logic [inputBits-1:0] array_a_3_input;
	logic [inputBits-1:0] array_b_3_input;
	logic [inputBits-1:0] array_c_3_input;
	logic [inputBits-1:0] array_d_3_input;
	//e
	//column0
	logic [inputBits-1:0] array_e_0_input;
	//column1
	logic [inputBits-1:0] array_e_1_input;
	//column2
	logic [inputBits-1:0] array_e_2_input;
	//column3
	logic [inputBits-1:0] array_e_3_input;
	//wxyz
	//column0
	logic [outputBits-1:0] array_w_0_output;
	logic [outputBits-1:0] array_x_0_output;
	logic [outputBits-1:0] array_y_0_output;
	logic [outputBits-1:0] array_z_0_output;
	//column1
	logic [outputBits-1:0] array_w_1_output;
	logic [outputBits-1:0] array_x_1_output;
	logic [outputBits-1:0] array_y_1_output;
	logic [outputBits-1:0] array_z_1_output;
	//column2
	logic [outputBits-1:0] array_w_2_output;
	logic [outputBits-1:0] array_x_2_output;
	logic [outputBits-1:0] array_y_2_output;
	logic [outputBits-1:0] array_z_2_output;
	//column3
	logic [outputBits-1:0] array_w_3_output;
	logic [outputBits-1:0] array_x_3_output;
	logic [outputBits-1:0] array_y_3_output;
	logic [outputBits-1:0] array_z_3_output;

	//modules
	//fsm
	fsm #(arraySize) fsm(clk, rst, start, interrupt,
						 S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,
						 M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,
						 loadingWeights,
						 validInputs,
						 validOutputs);
	//abcd
	//line 0
	assign array_a_0_input = S_AXIS_TDATA[1*inputBits-1:0*inputBits];
	assign array_b_0_input = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	assign array_c_0_input = S_AXIS_TDATA[9*inputBits-1:8*inputBits];
	assign array_d_0_input = S_AXIS_TDATA[13*inputBits-1:12*inputBits];
	//line 1
	assign array_a_1_input = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	assign array_b_1_input = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	assign array_c_1_input = S_AXIS_TDATA[10*inputBits-1:9*inputBits];
	assign array_d_1_input = S_AXIS_TDATA[14*inputBits-1:13*inputBits];
	//line 2
	assign array_a_2_input = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	assign array_b_2_input = S_AXIS_TDATA[7*inputBits-1:6*inputBits];
	assign array_c_2_input = S_AXIS_TDATA[11*inputBits-1:10*inputBits];
	assign array_d_2_input = S_AXIS_TDATA[15*inputBits-1:14*inputBits];
	//line 3
	assign array_a_3_input = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	assign array_b_3_input = S_AXIS_TDATA[8*inputBits-1:7*inputBits];
	assign array_c_3_input = S_AXIS_TDATA[12*inputBits-1:11*inputBits];
	assign array_d_3_input = S_AXIS_TDATA[16*inputBits-1:15*inputBits];
	//e
	//column 0
	assign array_e_0_input = S_AXIS_TDATA[17*inputBits-1:16*inputBits];
	//column 1
	assign array_e_1_input = S_AXIS_TDATA[18*inputBits-1:17*inputBits];
	//column 2
	assign array_e_2_input = S_AXIS_TDATA[19*inputBits-1:18*inputBits];
	//column 3
	assign array_e_3_input = S_AXIS_TDATA[20*inputBits-1:19*inputBits];
	//array
	array #(inputBits, outputBits) array(clk, rst, clk2x, loadingWeights,
										 array_a_0_input, array_b_0_input, array_c_0_input, array_d_0_input,
										 array_e_0_input,
										 array_w_0_output, array_x_0_output, array_y_0_output, array_z_0_output,
										 array_a_1_input, array_b_1_input, array_c_1_input, array_d_1_input,
										 array_e_1_input,
										 array_w_1_output, array_x_1_output, array_y_1_output, array_z_1_output,
										 array_a_2_input, array_b_2_input, array_c_2_input, array_d_2_input,
										 array_e_2_input,
										 array_w_2_output, array_x_2_output, array_y_2_output, array_z_2_output,
										 array_a_3_input, array_b_3_input, array_c_3_input, array_d_3_input,
										 array_e_3_input,
										 array_w_3_output, array_x_3_output, array_y_3_output, array_z_3_output);
	//wxyz
	//column 0
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = array_w_0_output;
	assign M_AXIS_TDATA[5*outputBits-1:4*outputBits] = array_x_0_output;
	assign M_AXIS_TDATA[9*outputBits-1:8*outputBits] = array_y_0_output;
	assign M_AXIS_TDATA[13*outputBits-1:12*outputBits] = array_z_0_output;
	//column 1
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = array_w_1_output;
	assign M_AXIS_TDATA[6*outputBits-1:5*outputBits] = array_x_1_output;
	assign M_AXIS_TDATA[10*outputBits-1:9*outputBits] = array_y_1_output;
	assign M_AXIS_TDATA[14*outputBits-1:13*outputBits] = array_z_1_output;
	//column 2
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = array_w_2_output;
	assign M_AXIS_TDATA[7*outputBits-1:6*outputBits] = array_x_2_output;
	assign M_AXIS_TDATA[11*outputBits-1:10*outputBits] = array_y_2_output;
	assign M_AXIS_TDATA[15*outputBits-1:14*outputBits] = array_z_2_output;
	//column 3
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = array_w_3_output;
	assign M_AXIS_TDATA[8*outputBits-1:7*outputBits] = array_x_3_output;
	assign M_AXIS_TDATA[12*outputBits-1:11*outputBits] = array_y_3_output;
	assign M_AXIS_TDATA[16*outputBits-1:15*outputBits] = array_z_3_output;
	//
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

	//LABFT
	labft labft(clk, rst, interrupt, loadingWeights, validInputs, validOutputs,
					array_a_0_input, array_b_0_input, array_c_0_input, array_d_0_input,
					array_a_1_input, array_b_1_input, array_c_1_input, array_d_1_input,
					array_a_2_input, array_b_2_input, array_c_2_input, array_d_2_input,
					array_a_3_input, array_b_3_input, array_c_3_input, array_d_3_input,
					array_e_0_input,
					array_e_1_input,
					array_e_2_input,
					array_e_3_input,
					array_w_0_output, array_x_0_output, array_y_0_output, array_z_0_output,
					array_w_1_output, array_x_1_output, array_y_1_output, array_z_1_output,
					array_w_2_output, array_x_2_output, array_y_2_output, array_z_2_output,
					array_w_3_output, array_x_3_output, array_y_3_output, array_z_3_output,
					error[3:0]);

endmodule