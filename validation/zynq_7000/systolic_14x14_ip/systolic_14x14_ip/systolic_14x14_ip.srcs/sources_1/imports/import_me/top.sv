module top //14x14
#(
	parameter arraySize = 14,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = 4,
	parameter s_axi_tdata_width = arraySize*inputBits*5 + 464,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*4 + 256,
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
	input logic M_AXIS_TREADY
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
	//line4
	logic [inputBits-1:0] array_a_4_input;
	logic [inputBits-1:0] array_b_4_input;
	logic [inputBits-1:0] array_c_4_input;
	logic [inputBits-1:0] array_d_4_input;
	//line5
	logic [inputBits-1:0] array_a_5_input;
	logic [inputBits-1:0] array_b_5_input;
	logic [inputBits-1:0] array_c_5_input;
	logic [inputBits-1:0] array_d_5_input;
	//line6
	logic [inputBits-1:0] array_a_6_input;
	logic [inputBits-1:0] array_b_6_input;
	logic [inputBits-1:0] array_c_6_input;
	logic [inputBits-1:0] array_d_6_input;
	//line7
	logic [inputBits-1:0] array_a_7_input;
	logic [inputBits-1:0] array_b_7_input;
	logic [inputBits-1:0] array_c_7_input;
	logic [inputBits-1:0] array_d_7_input;
	//line8
	logic [inputBits-1:0] array_a_8_input;
	logic [inputBits-1:0] array_b_8_input;
	logic [inputBits-1:0] array_c_8_input;
	logic [inputBits-1:0] array_d_8_input;
	//line9
	logic [inputBits-1:0] array_a_9_input;
	logic [inputBits-1:0] array_b_9_input;
	logic [inputBits-1:0] array_c_9_input;
	logic [inputBits-1:0] array_d_9_input;
	//line10
	logic [inputBits-1:0] array_a_10_input;
	logic [inputBits-1:0] array_b_10_input;
	logic [inputBits-1:0] array_c_10_input;
	logic [inputBits-1:0] array_d_10_input;
	//line11
	logic [inputBits-1:0] array_a_11_input;
	logic [inputBits-1:0] array_b_11_input;
	logic [inputBits-1:0] array_c_11_input;
	logic [inputBits-1:0] array_d_11_input;
	//line12
	logic [inputBits-1:0] array_a_12_input;
	logic [inputBits-1:0] array_b_12_input;
	logic [inputBits-1:0] array_c_12_input;
	logic [inputBits-1:0] array_d_12_input;
	//line13
	logic [inputBits-1:0] array_a_13_input;
	logic [inputBits-1:0] array_b_13_input;
	logic [inputBits-1:0] array_c_13_input;
	logic [inputBits-1:0] array_d_13_input;
	//e
	//column0
	logic [inputBits-1:0] array_e_0_input;
	//column1
	logic [inputBits-1:0] array_e_1_input;
	//column2
	logic [inputBits-1:0] array_e_2_input;
	//column3
	logic [inputBits-1:0] array_e_3_input;
	//column4
	logic [inputBits-1:0] array_e_4_input;
	//column5
	logic [inputBits-1:0] array_e_5_input;
	//column6
	logic [inputBits-1:0] array_e_6_input;
	//column7
	logic [inputBits-1:0] array_e_7_input;
	//column8
	logic [inputBits-1:0] array_e_8_input;
	//column9
	logic [inputBits-1:0] array_e_9_input;
	//column10
	logic [inputBits-1:0] array_e_10_input;
	//column11
	logic [inputBits-1:0] array_e_11_input;
	//column12
	logic [inputBits-1:0] array_e_12_input;
	//column13
	logic [inputBits-1:0] array_e_13_input;
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
	//column4
	logic [outputBits-1:0] array_w_4_output;
	logic [outputBits-1:0] array_x_4_output;
	logic [outputBits-1:0] array_y_4_output;
	logic [outputBits-1:0] array_z_4_output;
	//column5
	logic [outputBits-1:0] array_w_5_output;
	logic [outputBits-1:0] array_x_5_output;
	logic [outputBits-1:0] array_y_5_output;
	logic [outputBits-1:0] array_z_5_output;
	//column6
	logic [outputBits-1:0] array_w_6_output;
	logic [outputBits-1:0] array_x_6_output;
	logic [outputBits-1:0] array_y_6_output;
	logic [outputBits-1:0] array_z_6_output;
	//column7
	logic [outputBits-1:0] array_w_7_output;
	logic [outputBits-1:0] array_x_7_output;
	logic [outputBits-1:0] array_y_7_output;
	logic [outputBits-1:0] array_z_7_output;
	//column8
	logic [outputBits-1:0] array_w_8_output;
	logic [outputBits-1:0] array_x_8_output;
	logic [outputBits-1:0] array_y_8_output;
	logic [outputBits-1:0] array_z_8_output;
	//column9
	logic [outputBits-1:0] array_w_9_output;
	logic [outputBits-1:0] array_x_9_output;
	logic [outputBits-1:0] array_y_9_output;
	logic [outputBits-1:0] array_z_9_output;
	//column10
	logic [outputBits-1:0] array_w_10_output;
	logic [outputBits-1:0] array_x_10_output;
	logic [outputBits-1:0] array_y_10_output;
	logic [outputBits-1:0] array_z_10_output;
	//column11
	logic [outputBits-1:0] array_w_11_output;
	logic [outputBits-1:0] array_x_11_output;
	logic [outputBits-1:0] array_y_11_output;
	logic [outputBits-1:0] array_z_11_output;
	//column12
	logic [outputBits-1:0] array_w_12_output;
	logic [outputBits-1:0] array_x_12_output;
	logic [outputBits-1:0] array_y_12_output;
	logic [outputBits-1:0] array_z_12_output;
	//column13
	logic [outputBits-1:0] array_w_13_output;
	logic [outputBits-1:0] array_x_13_output;
	logic [outputBits-1:0] array_y_13_output;
	logic [outputBits-1:0] array_z_13_output;

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
	assign array_b_0_input = S_AXIS_TDATA[15*inputBits-1:14*inputBits];
	assign array_c_0_input = S_AXIS_TDATA[29*inputBits-1:28*inputBits];
	assign array_d_0_input = S_AXIS_TDATA[43*inputBits-1:42*inputBits];
	//line 1
	assign array_a_1_input = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	assign array_b_1_input = S_AXIS_TDATA[16*inputBits-1:15*inputBits];
	assign array_c_1_input = S_AXIS_TDATA[30*inputBits-1:29*inputBits];
	assign array_d_1_input = S_AXIS_TDATA[44*inputBits-1:43*inputBits];
	//line 2
	assign array_a_2_input = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	assign array_b_2_input = S_AXIS_TDATA[17*inputBits-1:16*inputBits];
	assign array_c_2_input = S_AXIS_TDATA[31*inputBits-1:30*inputBits];
	assign array_d_2_input = S_AXIS_TDATA[45*inputBits-1:44*inputBits];
	//line 3
	assign array_a_3_input = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	assign array_b_3_input = S_AXIS_TDATA[18*inputBits-1:17*inputBits];
	assign array_c_3_input = S_AXIS_TDATA[32*inputBits-1:31*inputBits];
	assign array_d_3_input = S_AXIS_TDATA[46*inputBits-1:45*inputBits];
	//line 4
	assign array_a_4_input = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	assign array_b_4_input = S_AXIS_TDATA[19*inputBits-1:18*inputBits];
	assign array_c_4_input = S_AXIS_TDATA[33*inputBits-1:32*inputBits];
	assign array_d_4_input = S_AXIS_TDATA[47*inputBits-1:46*inputBits];
	//line 5
	assign array_a_5_input = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	assign array_b_5_input = S_AXIS_TDATA[20*inputBits-1:19*inputBits];
	assign array_c_5_input = S_AXIS_TDATA[34*inputBits-1:33*inputBits];
	assign array_d_5_input = S_AXIS_TDATA[48*inputBits-1:47*inputBits];
	//line 6
	assign array_a_6_input = S_AXIS_TDATA[7*inputBits-1:6*inputBits];
	assign array_b_6_input = S_AXIS_TDATA[21*inputBits-1:20*inputBits];
	assign array_c_6_input = S_AXIS_TDATA[35*inputBits-1:34*inputBits];
	assign array_d_6_input = S_AXIS_TDATA[49*inputBits-1:48*inputBits];
	//line 7
	assign array_a_7_input = S_AXIS_TDATA[8*inputBits-1:7*inputBits];
	assign array_b_7_input = S_AXIS_TDATA[22*inputBits-1:21*inputBits];
	assign array_c_7_input = S_AXIS_TDATA[36*inputBits-1:35*inputBits];
	assign array_d_7_input = S_AXIS_TDATA[50*inputBits-1:49*inputBits];
	//line 8
	assign array_a_8_input = S_AXIS_TDATA[9*inputBits-1:8*inputBits];
	assign array_b_8_input = S_AXIS_TDATA[23*inputBits-1:22*inputBits];
	assign array_c_8_input = S_AXIS_TDATA[37*inputBits-1:36*inputBits];
	assign array_d_8_input = S_AXIS_TDATA[51*inputBits-1:50*inputBits];
	//line 9
	assign array_a_9_input = S_AXIS_TDATA[10*inputBits-1:9*inputBits];
	assign array_b_9_input = S_AXIS_TDATA[24*inputBits-1:23*inputBits];
	assign array_c_9_input = S_AXIS_TDATA[38*inputBits-1:37*inputBits];
	assign array_d_9_input = S_AXIS_TDATA[52*inputBits-1:51*inputBits];
	//line 10
	assign array_a_10_input = S_AXIS_TDATA[11*inputBits-1:10*inputBits];
	assign array_b_10_input = S_AXIS_TDATA[25*inputBits-1:24*inputBits];
	assign array_c_10_input = S_AXIS_TDATA[39*inputBits-1:38*inputBits];
	assign array_d_10_input = S_AXIS_TDATA[53*inputBits-1:52*inputBits];
	//line 11
	assign array_a_11_input = S_AXIS_TDATA[12*inputBits-1:11*inputBits];
	assign array_b_11_input = S_AXIS_TDATA[26*inputBits-1:25*inputBits];
	assign array_c_11_input = S_AXIS_TDATA[40*inputBits-1:39*inputBits];
	assign array_d_11_input = S_AXIS_TDATA[54*inputBits-1:53*inputBits];
	//line 12
	assign array_a_12_input = S_AXIS_TDATA[13*inputBits-1:12*inputBits];
	assign array_b_12_input = S_AXIS_TDATA[27*inputBits-1:26*inputBits];
	assign array_c_12_input = S_AXIS_TDATA[41*inputBits-1:40*inputBits];
	assign array_d_12_input = S_AXIS_TDATA[55*inputBits-1:54*inputBits];
	//line 13
	assign array_a_13_input = S_AXIS_TDATA[14*inputBits-1:13*inputBits];
	assign array_b_13_input = S_AXIS_TDATA[28*inputBits-1:27*inputBits];
	assign array_c_13_input = S_AXIS_TDATA[42*inputBits-1:41*inputBits];
	assign array_d_13_input = S_AXIS_TDATA[56*inputBits-1:55*inputBits];
	//e
	//column 0
	assign array_e_0_input = S_AXIS_TDATA[57*inputBits-1:56*inputBits];
	//column 1
	assign array_e_1_input = S_AXIS_TDATA[58*inputBits-1:57*inputBits];
	//column 2
	assign array_e_2_input = S_AXIS_TDATA[59*inputBits-1:58*inputBits];
	//column 3
	assign array_e_3_input = S_AXIS_TDATA[60*inputBits-1:59*inputBits];
	//column 4
	assign array_e_4_input = S_AXIS_TDATA[61*inputBits-1:60*inputBits];
	//column 5
	assign array_e_5_input = S_AXIS_TDATA[62*inputBits-1:61*inputBits];
	//column 6
	assign array_e_6_input = S_AXIS_TDATA[63*inputBits-1:62*inputBits];
	//column 7
	assign array_e_7_input = S_AXIS_TDATA[64*inputBits-1:63*inputBits];
	//column 8
	assign array_e_8_input = S_AXIS_TDATA[65*inputBits-1:64*inputBits];
	//column 9
	assign array_e_9_input = S_AXIS_TDATA[66*inputBits-1:65*inputBits];
	//column 10
	assign array_e_10_input = S_AXIS_TDATA[67*inputBits-1:66*inputBits];
	//column 11
	assign array_e_11_input = S_AXIS_TDATA[68*inputBits-1:67*inputBits];
	//column 12
	assign array_e_12_input = S_AXIS_TDATA[69*inputBits-1:68*inputBits];
	//column 13
	assign array_e_13_input = S_AXIS_TDATA[70*inputBits-1:69*inputBits];
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
										 array_w_3_output, array_x_3_output, array_y_3_output, array_z_3_output,
										 array_a_4_input, array_b_4_input, array_c_4_input, array_d_4_input,
										 array_e_4_input,
										 array_w_4_output, array_x_4_output, array_y_4_output, array_z_4_output,
										 array_a_5_input, array_b_5_input, array_c_5_input, array_d_5_input,
										 array_e_5_input,
										 array_w_5_output, array_x_5_output, array_y_5_output, array_z_5_output,
										 array_a_6_input, array_b_6_input, array_c_6_input, array_d_6_input,
										 array_e_6_input,
										 array_w_6_output, array_x_6_output, array_y_6_output, array_z_6_output,
										 array_a_7_input, array_b_7_input, array_c_7_input, array_d_7_input,
										 array_e_7_input,
										 array_w_7_output, array_x_7_output, array_y_7_output, array_z_7_output,
										 array_a_8_input, array_b_8_input, array_c_8_input, array_d_8_input,
										 array_e_8_input,
										 array_w_8_output, array_x_8_output, array_y_8_output, array_z_8_output,
										 array_a_9_input, array_b_9_input, array_c_9_input, array_d_9_input,
										 array_e_9_input,
										 array_w_9_output, array_x_9_output, array_y_9_output, array_z_9_output,
										 array_a_10_input, array_b_10_input, array_c_10_input, array_d_10_input,
										 array_e_10_input,
										 array_w_10_output, array_x_10_output, array_y_10_output, array_z_10_output,
										 array_a_11_input, array_b_11_input, array_c_11_input, array_d_11_input,
										 array_e_11_input,
										 array_w_11_output, array_x_11_output, array_y_11_output, array_z_11_output,
										 array_a_12_input, array_b_12_input, array_c_12_input, array_d_12_input,
										 array_e_12_input,
										 array_w_12_output, array_x_12_output, array_y_12_output, array_z_12_output,
										 array_a_13_input, array_b_13_input, array_c_13_input, array_d_13_input,
										 array_e_13_input,
										 array_w_13_output, array_x_13_output, array_y_13_output, array_z_13_output);
	//wxyz
	//column 0
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = array_w_0_output;
	assign M_AXIS_TDATA[15*outputBits-1:14*outputBits] = array_x_0_output;
	assign M_AXIS_TDATA[29*outputBits-1:28*outputBits] = array_y_0_output;
	assign M_AXIS_TDATA[43*outputBits-1:42*outputBits] = array_z_0_output;
	//column 1
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = array_w_1_output;
	assign M_AXIS_TDATA[16*outputBits-1:15*outputBits] = array_x_1_output;
	assign M_AXIS_TDATA[30*outputBits-1:29*outputBits] = array_y_1_output;
	assign M_AXIS_TDATA[44*outputBits-1:43*outputBits] = array_z_1_output;
	//column 2
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = array_w_2_output;
	assign M_AXIS_TDATA[17*outputBits-1:16*outputBits] = array_x_2_output;
	assign M_AXIS_TDATA[31*outputBits-1:30*outputBits] = array_y_2_output;
	assign M_AXIS_TDATA[45*outputBits-1:44*outputBits] = array_z_2_output;
	//column 3
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = array_w_3_output;
	assign M_AXIS_TDATA[18*outputBits-1:17*outputBits] = array_x_3_output;
	assign M_AXIS_TDATA[32*outputBits-1:31*outputBits] = array_y_3_output;
	assign M_AXIS_TDATA[46*outputBits-1:45*outputBits] = array_z_3_output;
	//column 4
	assign M_AXIS_TDATA[5*outputBits-1:4*outputBits] = array_w_4_output;
	assign M_AXIS_TDATA[19*outputBits-1:18*outputBits] = array_x_4_output;
	assign M_AXIS_TDATA[33*outputBits-1:32*outputBits] = array_y_4_output;
	assign M_AXIS_TDATA[47*outputBits-1:46*outputBits] = array_z_4_output;
	//column 5
	assign M_AXIS_TDATA[6*outputBits-1:5*outputBits] = array_w_5_output;
	assign M_AXIS_TDATA[20*outputBits-1:19*outputBits] = array_x_5_output;
	assign M_AXIS_TDATA[34*outputBits-1:33*outputBits] = array_y_5_output;
	assign M_AXIS_TDATA[48*outputBits-1:47*outputBits] = array_z_5_output;
	//column 6
	assign M_AXIS_TDATA[7*outputBits-1:6*outputBits] = array_w_6_output;
	assign M_AXIS_TDATA[21*outputBits-1:20*outputBits] = array_x_6_output;
	assign M_AXIS_TDATA[35*outputBits-1:34*outputBits] = array_y_6_output;
	assign M_AXIS_TDATA[49*outputBits-1:48*outputBits] = array_z_6_output;
	//column 7
	assign M_AXIS_TDATA[8*outputBits-1:7*outputBits] = array_w_7_output;
	assign M_AXIS_TDATA[22*outputBits-1:21*outputBits] = array_x_7_output;
	assign M_AXIS_TDATA[36*outputBits-1:35*outputBits] = array_y_7_output;
	assign M_AXIS_TDATA[50*outputBits-1:49*outputBits] = array_z_7_output;
	//column 8
	assign M_AXIS_TDATA[9*outputBits-1:8*outputBits] = array_w_8_output;
	assign M_AXIS_TDATA[23*outputBits-1:22*outputBits] = array_x_8_output;
	assign M_AXIS_TDATA[37*outputBits-1:36*outputBits] = array_y_8_output;
	assign M_AXIS_TDATA[51*outputBits-1:50*outputBits] = array_z_8_output;
	//column 9
	assign M_AXIS_TDATA[10*outputBits-1:9*outputBits] = array_w_9_output;
	assign M_AXIS_TDATA[24*outputBits-1:23*outputBits] = array_x_9_output;
	assign M_AXIS_TDATA[38*outputBits-1:37*outputBits] = array_y_9_output;
	assign M_AXIS_TDATA[52*outputBits-1:51*outputBits] = array_z_9_output;
	//column 10
	assign M_AXIS_TDATA[11*outputBits-1:10*outputBits] = array_w_10_output;
	assign M_AXIS_TDATA[25*outputBits-1:24*outputBits] = array_x_10_output;
	assign M_AXIS_TDATA[39*outputBits-1:38*outputBits] = array_y_10_output;
	assign M_AXIS_TDATA[53*outputBits-1:52*outputBits] = array_z_10_output;
	//column 11
	assign M_AXIS_TDATA[12*outputBits-1:11*outputBits] = array_w_11_output;
	assign M_AXIS_TDATA[26*outputBits-1:25*outputBits] = array_x_11_output;
	assign M_AXIS_TDATA[40*outputBits-1:39*outputBits] = array_y_11_output;
	assign M_AXIS_TDATA[54*outputBits-1:53*outputBits] = array_z_11_output;
	//column 12
	assign M_AXIS_TDATA[13*outputBits-1:12*outputBits] = array_w_12_output;
	assign M_AXIS_TDATA[27*outputBits-1:26*outputBits] = array_x_12_output;
	assign M_AXIS_TDATA[41*outputBits-1:40*outputBits] = array_y_12_output;
	assign M_AXIS_TDATA[55*outputBits-1:54*outputBits] = array_z_12_output;
	//column 13
	assign M_AXIS_TDATA[14*outputBits-1:13*outputBits] = array_w_13_output;
	assign M_AXIS_TDATA[28*outputBits-1:27*outputBits] = array_x_13_output;
	assign M_AXIS_TDATA[42*outputBits-1:41*outputBits] = array_y_13_output;
	assign M_AXIS_TDATA[56*outputBits-1:55*outputBits] = array_z_13_output;
	//
	assign M_AXIS_TDATA[m_axi_tdata_width-1:56*outputBits] = {256{1'b0}};
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

endmodule