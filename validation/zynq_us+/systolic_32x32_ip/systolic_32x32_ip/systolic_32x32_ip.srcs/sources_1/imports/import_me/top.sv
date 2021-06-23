module top //32x32
#(
	parameter arraySize = 32,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = 5,
	parameter s_axi_tdata_width = arraySize*inputBits*5 + 768,
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
	//line14
	logic [inputBits-1:0] array_a_14_input;
	logic [inputBits-1:0] array_b_14_input;
	logic [inputBits-1:0] array_c_14_input;
	logic [inputBits-1:0] array_d_14_input;
	//line15
	logic [inputBits-1:0] array_a_15_input;
	logic [inputBits-1:0] array_b_15_input;
	logic [inputBits-1:0] array_c_15_input;
	logic [inputBits-1:0] array_d_15_input;
	//line16
	logic [inputBits-1:0] array_a_16_input;
	logic [inputBits-1:0] array_b_16_input;
	logic [inputBits-1:0] array_c_16_input;
	logic [inputBits-1:0] array_d_16_input;
	//line17
	logic [inputBits-1:0] array_a_17_input;
	logic [inputBits-1:0] array_b_17_input;
	logic [inputBits-1:0] array_c_17_input;
	logic [inputBits-1:0] array_d_17_input;
	//line18
	logic [inputBits-1:0] array_a_18_input;
	logic [inputBits-1:0] array_b_18_input;
	logic [inputBits-1:0] array_c_18_input;
	logic [inputBits-1:0] array_d_18_input;
	//line19
	logic [inputBits-1:0] array_a_19_input;
	logic [inputBits-1:0] array_b_19_input;
	logic [inputBits-1:0] array_c_19_input;
	logic [inputBits-1:0] array_d_19_input;
	//line20
	logic [inputBits-1:0] array_a_20_input;
	logic [inputBits-1:0] array_b_20_input;
	logic [inputBits-1:0] array_c_20_input;
	logic [inputBits-1:0] array_d_20_input;
	//line21
	logic [inputBits-1:0] array_a_21_input;
	logic [inputBits-1:0] array_b_21_input;
	logic [inputBits-1:0] array_c_21_input;
	logic [inputBits-1:0] array_d_21_input;
	//line22
	logic [inputBits-1:0] array_a_22_input;
	logic [inputBits-1:0] array_b_22_input;
	logic [inputBits-1:0] array_c_22_input;
	logic [inputBits-1:0] array_d_22_input;
	//line23
	logic [inputBits-1:0] array_a_23_input;
	logic [inputBits-1:0] array_b_23_input;
	logic [inputBits-1:0] array_c_23_input;
	logic [inputBits-1:0] array_d_23_input;
	//line24
	logic [inputBits-1:0] array_a_24_input;
	logic [inputBits-1:0] array_b_24_input;
	logic [inputBits-1:0] array_c_24_input;
	logic [inputBits-1:0] array_d_24_input;
	//line25
	logic [inputBits-1:0] array_a_25_input;
	logic [inputBits-1:0] array_b_25_input;
	logic [inputBits-1:0] array_c_25_input;
	logic [inputBits-1:0] array_d_25_input;
	//line26
	logic [inputBits-1:0] array_a_26_input;
	logic [inputBits-1:0] array_b_26_input;
	logic [inputBits-1:0] array_c_26_input;
	logic [inputBits-1:0] array_d_26_input;
	//line27
	logic [inputBits-1:0] array_a_27_input;
	logic [inputBits-1:0] array_b_27_input;
	logic [inputBits-1:0] array_c_27_input;
	logic [inputBits-1:0] array_d_27_input;
	//line28
	logic [inputBits-1:0] array_a_28_input;
	logic [inputBits-1:0] array_b_28_input;
	logic [inputBits-1:0] array_c_28_input;
	logic [inputBits-1:0] array_d_28_input;
	//line29
	logic [inputBits-1:0] array_a_29_input;
	logic [inputBits-1:0] array_b_29_input;
	logic [inputBits-1:0] array_c_29_input;
	logic [inputBits-1:0] array_d_29_input;
	//line30
	logic [inputBits-1:0] array_a_30_input;
	logic [inputBits-1:0] array_b_30_input;
	logic [inputBits-1:0] array_c_30_input;
	logic [inputBits-1:0] array_d_30_input;
	//line31
	logic [inputBits-1:0] array_a_31_input;
	logic [inputBits-1:0] array_b_31_input;
	logic [inputBits-1:0] array_c_31_input;
	logic [inputBits-1:0] array_d_31_input;
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
	//column14
	logic [inputBits-1:0] array_e_14_input;
	//column15
	logic [inputBits-1:0] array_e_15_input;
	//column16
	logic [inputBits-1:0] array_e_16_input;
	//column17
	logic [inputBits-1:0] array_e_17_input;
	//column18
	logic [inputBits-1:0] array_e_18_input;
	//column19
	logic [inputBits-1:0] array_e_19_input;
	//column20
	logic [inputBits-1:0] array_e_20_input;
	//column21
	logic [inputBits-1:0] array_e_21_input;
	//column22
	logic [inputBits-1:0] array_e_22_input;
	//column23
	logic [inputBits-1:0] array_e_23_input;
	//column24
	logic [inputBits-1:0] array_e_24_input;
	//column25
	logic [inputBits-1:0] array_e_25_input;
	//column26
	logic [inputBits-1:0] array_e_26_input;
	//column27
	logic [inputBits-1:0] array_e_27_input;
	//column28
	logic [inputBits-1:0] array_e_28_input;
	//column29
	logic [inputBits-1:0] array_e_29_input;
	//column30
	logic [inputBits-1:0] array_e_30_input;
	//column31
	logic [inputBits-1:0] array_e_31_input;
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
	//column14
	logic [outputBits-1:0] array_w_14_output;
	logic [outputBits-1:0] array_x_14_output;
	logic [outputBits-1:0] array_y_14_output;
	logic [outputBits-1:0] array_z_14_output;
	//column15
	logic [outputBits-1:0] array_w_15_output;
	logic [outputBits-1:0] array_x_15_output;
	logic [outputBits-1:0] array_y_15_output;
	logic [outputBits-1:0] array_z_15_output;
	//column16
	logic [outputBits-1:0] array_w_16_output;
	logic [outputBits-1:0] array_x_16_output;
	logic [outputBits-1:0] array_y_16_output;
	logic [outputBits-1:0] array_z_16_output;
	//column17
	logic [outputBits-1:0] array_w_17_output;
	logic [outputBits-1:0] array_x_17_output;
	logic [outputBits-1:0] array_y_17_output;
	logic [outputBits-1:0] array_z_17_output;
	//column18
	logic [outputBits-1:0] array_w_18_output;
	logic [outputBits-1:0] array_x_18_output;
	logic [outputBits-1:0] array_y_18_output;
	logic [outputBits-1:0] array_z_18_output;
	//column19
	logic [outputBits-1:0] array_w_19_output;
	logic [outputBits-1:0] array_x_19_output;
	logic [outputBits-1:0] array_y_19_output;
	logic [outputBits-1:0] array_z_19_output;
	//column20
	logic [outputBits-1:0] array_w_20_output;
	logic [outputBits-1:0] array_x_20_output;
	logic [outputBits-1:0] array_y_20_output;
	logic [outputBits-1:0] array_z_20_output;
	//column21
	logic [outputBits-1:0] array_w_21_output;
	logic [outputBits-1:0] array_x_21_output;
	logic [outputBits-1:0] array_y_21_output;
	logic [outputBits-1:0] array_z_21_output;
	//column22
	logic [outputBits-1:0] array_w_22_output;
	logic [outputBits-1:0] array_x_22_output;
	logic [outputBits-1:0] array_y_22_output;
	logic [outputBits-1:0] array_z_22_output;
	//column23
	logic [outputBits-1:0] array_w_23_output;
	logic [outputBits-1:0] array_x_23_output;
	logic [outputBits-1:0] array_y_23_output;
	logic [outputBits-1:0] array_z_23_output;
	//column24
	logic [outputBits-1:0] array_w_24_output;
	logic [outputBits-1:0] array_x_24_output;
	logic [outputBits-1:0] array_y_24_output;
	logic [outputBits-1:0] array_z_24_output;
	//column25
	logic [outputBits-1:0] array_w_25_output;
	logic [outputBits-1:0] array_x_25_output;
	logic [outputBits-1:0] array_y_25_output;
	logic [outputBits-1:0] array_z_25_output;
	//column26
	logic [outputBits-1:0] array_w_26_output;
	logic [outputBits-1:0] array_x_26_output;
	logic [outputBits-1:0] array_y_26_output;
	logic [outputBits-1:0] array_z_26_output;
	//column27
	logic [outputBits-1:0] array_w_27_output;
	logic [outputBits-1:0] array_x_27_output;
	logic [outputBits-1:0] array_y_27_output;
	logic [outputBits-1:0] array_z_27_output;
	//column28
	logic [outputBits-1:0] array_w_28_output;
	logic [outputBits-1:0] array_x_28_output;
	logic [outputBits-1:0] array_y_28_output;
	logic [outputBits-1:0] array_z_28_output;
	//column29
	logic [outputBits-1:0] array_w_29_output;
	logic [outputBits-1:0] array_x_29_output;
	logic [outputBits-1:0] array_y_29_output;
	logic [outputBits-1:0] array_z_29_output;
	//column30
	logic [outputBits-1:0] array_w_30_output;
	logic [outputBits-1:0] array_x_30_output;
	logic [outputBits-1:0] array_y_30_output;
	logic [outputBits-1:0] array_z_30_output;
	//column31
	logic [outputBits-1:0] array_w_31_output;
	logic [outputBits-1:0] array_x_31_output;
	logic [outputBits-1:0] array_y_31_output;
	logic [outputBits-1:0] array_z_31_output;

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
	assign array_b_0_input = S_AXIS_TDATA[33*inputBits-1:32*inputBits];
	assign array_c_0_input = S_AXIS_TDATA[65*inputBits-1:64*inputBits];
	assign array_d_0_input = S_AXIS_TDATA[97*inputBits-1:96*inputBits];
	//line 1
	assign array_a_1_input = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	assign array_b_1_input = S_AXIS_TDATA[34*inputBits-1:33*inputBits];
	assign array_c_1_input = S_AXIS_TDATA[66*inputBits-1:65*inputBits];
	assign array_d_1_input = S_AXIS_TDATA[98*inputBits-1:97*inputBits];
	//line 2
	assign array_a_2_input = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	assign array_b_2_input = S_AXIS_TDATA[35*inputBits-1:34*inputBits];
	assign array_c_2_input = S_AXIS_TDATA[67*inputBits-1:66*inputBits];
	assign array_d_2_input = S_AXIS_TDATA[99*inputBits-1:98*inputBits];
	//line 3
	assign array_a_3_input = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	assign array_b_3_input = S_AXIS_TDATA[36*inputBits-1:35*inputBits];
	assign array_c_3_input = S_AXIS_TDATA[68*inputBits-1:67*inputBits];
	assign array_d_3_input = S_AXIS_TDATA[100*inputBits-1:99*inputBits];
	//line 4
	assign array_a_4_input = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	assign array_b_4_input = S_AXIS_TDATA[37*inputBits-1:36*inputBits];
	assign array_c_4_input = S_AXIS_TDATA[69*inputBits-1:68*inputBits];
	assign array_d_4_input = S_AXIS_TDATA[101*inputBits-1:100*inputBits];
	//line 5
	assign array_a_5_input = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	assign array_b_5_input = S_AXIS_TDATA[38*inputBits-1:37*inputBits];
	assign array_c_5_input = S_AXIS_TDATA[70*inputBits-1:69*inputBits];
	assign array_d_5_input = S_AXIS_TDATA[102*inputBits-1:101*inputBits];
	//line 6
	assign array_a_6_input = S_AXIS_TDATA[7*inputBits-1:6*inputBits];
	assign array_b_6_input = S_AXIS_TDATA[39*inputBits-1:38*inputBits];
	assign array_c_6_input = S_AXIS_TDATA[71*inputBits-1:70*inputBits];
	assign array_d_6_input = S_AXIS_TDATA[103*inputBits-1:102*inputBits];
	//line 7
	assign array_a_7_input = S_AXIS_TDATA[8*inputBits-1:7*inputBits];
	assign array_b_7_input = S_AXIS_TDATA[40*inputBits-1:39*inputBits];
	assign array_c_7_input = S_AXIS_TDATA[72*inputBits-1:71*inputBits];
	assign array_d_7_input = S_AXIS_TDATA[104*inputBits-1:103*inputBits];
	//line 8
	assign array_a_8_input = S_AXIS_TDATA[9*inputBits-1:8*inputBits];
	assign array_b_8_input = S_AXIS_TDATA[41*inputBits-1:40*inputBits];
	assign array_c_8_input = S_AXIS_TDATA[73*inputBits-1:72*inputBits];
	assign array_d_8_input = S_AXIS_TDATA[105*inputBits-1:104*inputBits];
	//line 9
	assign array_a_9_input = S_AXIS_TDATA[10*inputBits-1:9*inputBits];
	assign array_b_9_input = S_AXIS_TDATA[42*inputBits-1:41*inputBits];
	assign array_c_9_input = S_AXIS_TDATA[74*inputBits-1:73*inputBits];
	assign array_d_9_input = S_AXIS_TDATA[106*inputBits-1:105*inputBits];
	//line 10
	assign array_a_10_input = S_AXIS_TDATA[11*inputBits-1:10*inputBits];
	assign array_b_10_input = S_AXIS_TDATA[43*inputBits-1:42*inputBits];
	assign array_c_10_input = S_AXIS_TDATA[75*inputBits-1:74*inputBits];
	assign array_d_10_input = S_AXIS_TDATA[107*inputBits-1:106*inputBits];
	//line 11
	assign array_a_11_input = S_AXIS_TDATA[12*inputBits-1:11*inputBits];
	assign array_b_11_input = S_AXIS_TDATA[44*inputBits-1:43*inputBits];
	assign array_c_11_input = S_AXIS_TDATA[76*inputBits-1:75*inputBits];
	assign array_d_11_input = S_AXIS_TDATA[108*inputBits-1:107*inputBits];
	//line 12
	assign array_a_12_input = S_AXIS_TDATA[13*inputBits-1:12*inputBits];
	assign array_b_12_input = S_AXIS_TDATA[45*inputBits-1:44*inputBits];
	assign array_c_12_input = S_AXIS_TDATA[77*inputBits-1:76*inputBits];
	assign array_d_12_input = S_AXIS_TDATA[109*inputBits-1:108*inputBits];
	//line 13
	assign array_a_13_input = S_AXIS_TDATA[14*inputBits-1:13*inputBits];
	assign array_b_13_input = S_AXIS_TDATA[46*inputBits-1:45*inputBits];
	assign array_c_13_input = S_AXIS_TDATA[78*inputBits-1:77*inputBits];
	assign array_d_13_input = S_AXIS_TDATA[110*inputBits-1:109*inputBits];
	//line 14
	assign array_a_14_input = S_AXIS_TDATA[15*inputBits-1:14*inputBits];
	assign array_b_14_input = S_AXIS_TDATA[47*inputBits-1:46*inputBits];
	assign array_c_14_input = S_AXIS_TDATA[79*inputBits-1:78*inputBits];
	assign array_d_14_input = S_AXIS_TDATA[111*inputBits-1:110*inputBits];
	//line 15
	assign array_a_15_input = S_AXIS_TDATA[16*inputBits-1:15*inputBits];
	assign array_b_15_input = S_AXIS_TDATA[48*inputBits-1:47*inputBits];
	assign array_c_15_input = S_AXIS_TDATA[80*inputBits-1:79*inputBits];
	assign array_d_15_input = S_AXIS_TDATA[112*inputBits-1:111*inputBits];
	//line 16
	assign array_a_16_input = S_AXIS_TDATA[17*inputBits-1:16*inputBits];
	assign array_b_16_input = S_AXIS_TDATA[49*inputBits-1:48*inputBits];
	assign array_c_16_input = S_AXIS_TDATA[81*inputBits-1:80*inputBits];
	assign array_d_16_input = S_AXIS_TDATA[113*inputBits-1:112*inputBits];
	//line 17
	assign array_a_17_input = S_AXIS_TDATA[18*inputBits-1:17*inputBits];
	assign array_b_17_input = S_AXIS_TDATA[50*inputBits-1:49*inputBits];
	assign array_c_17_input = S_AXIS_TDATA[82*inputBits-1:81*inputBits];
	assign array_d_17_input = S_AXIS_TDATA[114*inputBits-1:113*inputBits];
	//line 18
	assign array_a_18_input = S_AXIS_TDATA[19*inputBits-1:18*inputBits];
	assign array_b_18_input = S_AXIS_TDATA[51*inputBits-1:50*inputBits];
	assign array_c_18_input = S_AXIS_TDATA[83*inputBits-1:82*inputBits];
	assign array_d_18_input = S_AXIS_TDATA[115*inputBits-1:114*inputBits];
	//line 19
	assign array_a_19_input = S_AXIS_TDATA[20*inputBits-1:19*inputBits];
	assign array_b_19_input = S_AXIS_TDATA[52*inputBits-1:51*inputBits];
	assign array_c_19_input = S_AXIS_TDATA[84*inputBits-1:83*inputBits];
	assign array_d_19_input = S_AXIS_TDATA[116*inputBits-1:115*inputBits];
	//line 20
	assign array_a_20_input = S_AXIS_TDATA[21*inputBits-1:20*inputBits];
	assign array_b_20_input = S_AXIS_TDATA[53*inputBits-1:52*inputBits];
	assign array_c_20_input = S_AXIS_TDATA[85*inputBits-1:84*inputBits];
	assign array_d_20_input = S_AXIS_TDATA[117*inputBits-1:116*inputBits];
	//line 21
	assign array_a_21_input = S_AXIS_TDATA[22*inputBits-1:21*inputBits];
	assign array_b_21_input = S_AXIS_TDATA[54*inputBits-1:53*inputBits];
	assign array_c_21_input = S_AXIS_TDATA[86*inputBits-1:85*inputBits];
	assign array_d_21_input = S_AXIS_TDATA[118*inputBits-1:117*inputBits];
	//line 22
	assign array_a_22_input = S_AXIS_TDATA[23*inputBits-1:22*inputBits];
	assign array_b_22_input = S_AXIS_TDATA[55*inputBits-1:54*inputBits];
	assign array_c_22_input = S_AXIS_TDATA[87*inputBits-1:86*inputBits];
	assign array_d_22_input = S_AXIS_TDATA[119*inputBits-1:118*inputBits];
	//line 23
	assign array_a_23_input = S_AXIS_TDATA[24*inputBits-1:23*inputBits];
	assign array_b_23_input = S_AXIS_TDATA[56*inputBits-1:55*inputBits];
	assign array_c_23_input = S_AXIS_TDATA[88*inputBits-1:87*inputBits];
	assign array_d_23_input = S_AXIS_TDATA[120*inputBits-1:119*inputBits];
	//line 24
	assign array_a_24_input = S_AXIS_TDATA[25*inputBits-1:24*inputBits];
	assign array_b_24_input = S_AXIS_TDATA[57*inputBits-1:56*inputBits];
	assign array_c_24_input = S_AXIS_TDATA[89*inputBits-1:88*inputBits];
	assign array_d_24_input = S_AXIS_TDATA[121*inputBits-1:120*inputBits];
	//line 25
	assign array_a_25_input = S_AXIS_TDATA[26*inputBits-1:25*inputBits];
	assign array_b_25_input = S_AXIS_TDATA[58*inputBits-1:57*inputBits];
	assign array_c_25_input = S_AXIS_TDATA[90*inputBits-1:89*inputBits];
	assign array_d_25_input = S_AXIS_TDATA[122*inputBits-1:121*inputBits];
	//line 26
	assign array_a_26_input = S_AXIS_TDATA[27*inputBits-1:26*inputBits];
	assign array_b_26_input = S_AXIS_TDATA[59*inputBits-1:58*inputBits];
	assign array_c_26_input = S_AXIS_TDATA[91*inputBits-1:90*inputBits];
	assign array_d_26_input = S_AXIS_TDATA[123*inputBits-1:122*inputBits];
	//line 27
	assign array_a_27_input = S_AXIS_TDATA[28*inputBits-1:27*inputBits];
	assign array_b_27_input = S_AXIS_TDATA[60*inputBits-1:59*inputBits];
	assign array_c_27_input = S_AXIS_TDATA[92*inputBits-1:91*inputBits];
	assign array_d_27_input = S_AXIS_TDATA[124*inputBits-1:123*inputBits];
	//line 28
	assign array_a_28_input = S_AXIS_TDATA[29*inputBits-1:28*inputBits];
	assign array_b_28_input = S_AXIS_TDATA[61*inputBits-1:60*inputBits];
	assign array_c_28_input = S_AXIS_TDATA[93*inputBits-1:92*inputBits];
	assign array_d_28_input = S_AXIS_TDATA[125*inputBits-1:124*inputBits];
	//line 29
	assign array_a_29_input = S_AXIS_TDATA[30*inputBits-1:29*inputBits];
	assign array_b_29_input = S_AXIS_TDATA[62*inputBits-1:61*inputBits];
	assign array_c_29_input = S_AXIS_TDATA[94*inputBits-1:93*inputBits];
	assign array_d_29_input = S_AXIS_TDATA[126*inputBits-1:125*inputBits];
	//line 30
	assign array_a_30_input = S_AXIS_TDATA[31*inputBits-1:30*inputBits];
	assign array_b_30_input = S_AXIS_TDATA[63*inputBits-1:62*inputBits];
	assign array_c_30_input = S_AXIS_TDATA[95*inputBits-1:94*inputBits];
	assign array_d_30_input = S_AXIS_TDATA[127*inputBits-1:126*inputBits];
	//line 31
	assign array_a_31_input = S_AXIS_TDATA[32*inputBits-1:31*inputBits];
	assign array_b_31_input = S_AXIS_TDATA[64*inputBits-1:63*inputBits];
	assign array_c_31_input = S_AXIS_TDATA[96*inputBits-1:95*inputBits];
	assign array_d_31_input = S_AXIS_TDATA[128*inputBits-1:127*inputBits];
	//e
	//column 0
	assign array_e_0_input = S_AXIS_TDATA[129*inputBits-1:128*inputBits];
	//column 1
	assign array_e_1_input = S_AXIS_TDATA[130*inputBits-1:129*inputBits];
	//column 2
	assign array_e_2_input = S_AXIS_TDATA[131*inputBits-1:130*inputBits];
	//column 3
	assign array_e_3_input = S_AXIS_TDATA[132*inputBits-1:131*inputBits];
	//column 4
	assign array_e_4_input = S_AXIS_TDATA[133*inputBits-1:132*inputBits];
	//column 5
	assign array_e_5_input = S_AXIS_TDATA[134*inputBits-1:133*inputBits];
	//column 6
	assign array_e_6_input = S_AXIS_TDATA[135*inputBits-1:134*inputBits];
	//column 7
	assign array_e_7_input = S_AXIS_TDATA[136*inputBits-1:135*inputBits];
	//column 8
	assign array_e_8_input = S_AXIS_TDATA[137*inputBits-1:136*inputBits];
	//column 9
	assign array_e_9_input = S_AXIS_TDATA[138*inputBits-1:137*inputBits];
	//column 10
	assign array_e_10_input = S_AXIS_TDATA[139*inputBits-1:138*inputBits];
	//column 11
	assign array_e_11_input = S_AXIS_TDATA[140*inputBits-1:139*inputBits];
	//column 12
	assign array_e_12_input = S_AXIS_TDATA[141*inputBits-1:140*inputBits];
	//column 13
	assign array_e_13_input = S_AXIS_TDATA[142*inputBits-1:141*inputBits];
	//column 14
	assign array_e_14_input = S_AXIS_TDATA[143*inputBits-1:142*inputBits];
	//column 15
	assign array_e_15_input = S_AXIS_TDATA[144*inputBits-1:143*inputBits];
	//column 16
	assign array_e_16_input = S_AXIS_TDATA[145*inputBits-1:144*inputBits];
	//column 17
	assign array_e_17_input = S_AXIS_TDATA[146*inputBits-1:145*inputBits];
	//column 18
	assign array_e_18_input = S_AXIS_TDATA[147*inputBits-1:146*inputBits];
	//column 19
	assign array_e_19_input = S_AXIS_TDATA[148*inputBits-1:147*inputBits];
	//column 20
	assign array_e_20_input = S_AXIS_TDATA[149*inputBits-1:148*inputBits];
	//column 21
	assign array_e_21_input = S_AXIS_TDATA[150*inputBits-1:149*inputBits];
	//column 22
	assign array_e_22_input = S_AXIS_TDATA[151*inputBits-1:150*inputBits];
	//column 23
	assign array_e_23_input = S_AXIS_TDATA[152*inputBits-1:151*inputBits];
	//column 24
	assign array_e_24_input = S_AXIS_TDATA[153*inputBits-1:152*inputBits];
	//column 25
	assign array_e_25_input = S_AXIS_TDATA[154*inputBits-1:153*inputBits];
	//column 26
	assign array_e_26_input = S_AXIS_TDATA[155*inputBits-1:154*inputBits];
	//column 27
	assign array_e_27_input = S_AXIS_TDATA[156*inputBits-1:155*inputBits];
	//column 28
	assign array_e_28_input = S_AXIS_TDATA[157*inputBits-1:156*inputBits];
	//column 29
	assign array_e_29_input = S_AXIS_TDATA[158*inputBits-1:157*inputBits];
	//column 30
	assign array_e_30_input = S_AXIS_TDATA[159*inputBits-1:158*inputBits];
	//column 31
	assign array_e_31_input = S_AXIS_TDATA[160*inputBits-1:159*inputBits];
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
										 array_w_13_output, array_x_13_output, array_y_13_output, array_z_13_output,
										 array_a_14_input, array_b_14_input, array_c_14_input, array_d_14_input,
										 array_e_14_input,
										 array_w_14_output, array_x_14_output, array_y_14_output, array_z_14_output,
										 array_a_15_input, array_b_15_input, array_c_15_input, array_d_15_input,
										 array_e_15_input,
										 array_w_15_output, array_x_15_output, array_y_15_output, array_z_15_output,
										 array_a_16_input, array_b_16_input, array_c_16_input, array_d_16_input,
										 array_e_16_input,
										 array_w_16_output, array_x_16_output, array_y_16_output, array_z_16_output,
										 array_a_17_input, array_b_17_input, array_c_17_input, array_d_17_input,
										 array_e_17_input,
										 array_w_17_output, array_x_17_output, array_y_17_output, array_z_17_output,
										 array_a_18_input, array_b_18_input, array_c_18_input, array_d_18_input,
										 array_e_18_input,
										 array_w_18_output, array_x_18_output, array_y_18_output, array_z_18_output,
										 array_a_19_input, array_b_19_input, array_c_19_input, array_d_19_input,
										 array_e_19_input,
										 array_w_19_output, array_x_19_output, array_y_19_output, array_z_19_output,
										 array_a_20_input, array_b_20_input, array_c_20_input, array_d_20_input,
										 array_e_20_input,
										 array_w_20_output, array_x_20_output, array_y_20_output, array_z_20_output,
										 array_a_21_input, array_b_21_input, array_c_21_input, array_d_21_input,
										 array_e_21_input,
										 array_w_21_output, array_x_21_output, array_y_21_output, array_z_21_output,
										 array_a_22_input, array_b_22_input, array_c_22_input, array_d_22_input,
										 array_e_22_input,
										 array_w_22_output, array_x_22_output, array_y_22_output, array_z_22_output,
										 array_a_23_input, array_b_23_input, array_c_23_input, array_d_23_input,
										 array_e_23_input,
										 array_w_23_output, array_x_23_output, array_y_23_output, array_z_23_output,
										 array_a_24_input, array_b_24_input, array_c_24_input, array_d_24_input,
										 array_e_24_input,
										 array_w_24_output, array_x_24_output, array_y_24_output, array_z_24_output,
										 array_a_25_input, array_b_25_input, array_c_25_input, array_d_25_input,
										 array_e_25_input,
										 array_w_25_output, array_x_25_output, array_y_25_output, array_z_25_output,
										 array_a_26_input, array_b_26_input, array_c_26_input, array_d_26_input,
										 array_e_26_input,
										 array_w_26_output, array_x_26_output, array_y_26_output, array_z_26_output,
										 array_a_27_input, array_b_27_input, array_c_27_input, array_d_27_input,
										 array_e_27_input,
										 array_w_27_output, array_x_27_output, array_y_27_output, array_z_27_output,
										 array_a_28_input, array_b_28_input, array_c_28_input, array_d_28_input,
										 array_e_28_input,
										 array_w_28_output, array_x_28_output, array_y_28_output, array_z_28_output,
										 array_a_29_input, array_b_29_input, array_c_29_input, array_d_29_input,
										 array_e_29_input,
										 array_w_29_output, array_x_29_output, array_y_29_output, array_z_29_output,
										 array_a_30_input, array_b_30_input, array_c_30_input, array_d_30_input,
										 array_e_30_input,
										 array_w_30_output, array_x_30_output, array_y_30_output, array_z_30_output,
										 array_a_31_input, array_b_31_input, array_c_31_input, array_d_31_input,
										 array_e_31_input,
										 array_w_31_output, array_x_31_output, array_y_31_output, array_z_31_output);
	//wxyz
	//column 0
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = array_w_0_output;
	assign M_AXIS_TDATA[33*outputBits-1:32*outputBits] = array_x_0_output;
	assign M_AXIS_TDATA[65*outputBits-1:64*outputBits] = array_y_0_output;
	assign M_AXIS_TDATA[97*outputBits-1:96*outputBits] = array_z_0_output;
	//column 1
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = array_w_1_output;
	assign M_AXIS_TDATA[34*outputBits-1:33*outputBits] = array_x_1_output;
	assign M_AXIS_TDATA[66*outputBits-1:65*outputBits] = array_y_1_output;
	assign M_AXIS_TDATA[98*outputBits-1:97*outputBits] = array_z_1_output;
	//column 2
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = array_w_2_output;
	assign M_AXIS_TDATA[35*outputBits-1:34*outputBits] = array_x_2_output;
	assign M_AXIS_TDATA[67*outputBits-1:66*outputBits] = array_y_2_output;
	assign M_AXIS_TDATA[99*outputBits-1:98*outputBits] = array_z_2_output;
	//column 3
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = array_w_3_output;
	assign M_AXIS_TDATA[36*outputBits-1:35*outputBits] = array_x_3_output;
	assign M_AXIS_TDATA[68*outputBits-1:67*outputBits] = array_y_3_output;
	assign M_AXIS_TDATA[100*outputBits-1:99*outputBits] = array_z_3_output;
	//column 4
	assign M_AXIS_TDATA[5*outputBits-1:4*outputBits] = array_w_4_output;
	assign M_AXIS_TDATA[37*outputBits-1:36*outputBits] = array_x_4_output;
	assign M_AXIS_TDATA[69*outputBits-1:68*outputBits] = array_y_4_output;
	assign M_AXIS_TDATA[101*outputBits-1:100*outputBits] = array_z_4_output;
	//column 5
	assign M_AXIS_TDATA[6*outputBits-1:5*outputBits] = array_w_5_output;
	assign M_AXIS_TDATA[38*outputBits-1:37*outputBits] = array_x_5_output;
	assign M_AXIS_TDATA[70*outputBits-1:69*outputBits] = array_y_5_output;
	assign M_AXIS_TDATA[102*outputBits-1:101*outputBits] = array_z_5_output;
	//column 6
	assign M_AXIS_TDATA[7*outputBits-1:6*outputBits] = array_w_6_output;
	assign M_AXIS_TDATA[39*outputBits-1:38*outputBits] = array_x_6_output;
	assign M_AXIS_TDATA[71*outputBits-1:70*outputBits] = array_y_6_output;
	assign M_AXIS_TDATA[103*outputBits-1:102*outputBits] = array_z_6_output;
	//column 7
	assign M_AXIS_TDATA[8*outputBits-1:7*outputBits] = array_w_7_output;
	assign M_AXIS_TDATA[40*outputBits-1:39*outputBits] = array_x_7_output;
	assign M_AXIS_TDATA[72*outputBits-1:71*outputBits] = array_y_7_output;
	assign M_AXIS_TDATA[104*outputBits-1:103*outputBits] = array_z_7_output;
	//column 8
	assign M_AXIS_TDATA[9*outputBits-1:8*outputBits] = array_w_8_output;
	assign M_AXIS_TDATA[41*outputBits-1:40*outputBits] = array_x_8_output;
	assign M_AXIS_TDATA[73*outputBits-1:72*outputBits] = array_y_8_output;
	assign M_AXIS_TDATA[105*outputBits-1:104*outputBits] = array_z_8_output;
	//column 9
	assign M_AXIS_TDATA[10*outputBits-1:9*outputBits] = array_w_9_output;
	assign M_AXIS_TDATA[42*outputBits-1:41*outputBits] = array_x_9_output;
	assign M_AXIS_TDATA[74*outputBits-1:73*outputBits] = array_y_9_output;
	assign M_AXIS_TDATA[106*outputBits-1:105*outputBits] = array_z_9_output;
	//column 10
	assign M_AXIS_TDATA[11*outputBits-1:10*outputBits] = array_w_10_output;
	assign M_AXIS_TDATA[43*outputBits-1:42*outputBits] = array_x_10_output;
	assign M_AXIS_TDATA[75*outputBits-1:74*outputBits] = array_y_10_output;
	assign M_AXIS_TDATA[107*outputBits-1:106*outputBits] = array_z_10_output;
	//column 11
	assign M_AXIS_TDATA[12*outputBits-1:11*outputBits] = array_w_11_output;
	assign M_AXIS_TDATA[44*outputBits-1:43*outputBits] = array_x_11_output;
	assign M_AXIS_TDATA[76*outputBits-1:75*outputBits] = array_y_11_output;
	assign M_AXIS_TDATA[108*outputBits-1:107*outputBits] = array_z_11_output;
	//column 12
	assign M_AXIS_TDATA[13*outputBits-1:12*outputBits] = array_w_12_output;
	assign M_AXIS_TDATA[45*outputBits-1:44*outputBits] = array_x_12_output;
	assign M_AXIS_TDATA[77*outputBits-1:76*outputBits] = array_y_12_output;
	assign M_AXIS_TDATA[109*outputBits-1:108*outputBits] = array_z_12_output;
	//column 13
	assign M_AXIS_TDATA[14*outputBits-1:13*outputBits] = array_w_13_output;
	assign M_AXIS_TDATA[46*outputBits-1:45*outputBits] = array_x_13_output;
	assign M_AXIS_TDATA[78*outputBits-1:77*outputBits] = array_y_13_output;
	assign M_AXIS_TDATA[110*outputBits-1:109*outputBits] = array_z_13_output;
	//column 14
	assign M_AXIS_TDATA[15*outputBits-1:14*outputBits] = array_w_14_output;
	assign M_AXIS_TDATA[47*outputBits-1:46*outputBits] = array_x_14_output;
	assign M_AXIS_TDATA[79*outputBits-1:78*outputBits] = array_y_14_output;
	assign M_AXIS_TDATA[111*outputBits-1:110*outputBits] = array_z_14_output;
	//column 15
	assign M_AXIS_TDATA[16*outputBits-1:15*outputBits] = array_w_15_output;
	assign M_AXIS_TDATA[48*outputBits-1:47*outputBits] = array_x_15_output;
	assign M_AXIS_TDATA[80*outputBits-1:79*outputBits] = array_y_15_output;
	assign M_AXIS_TDATA[112*outputBits-1:111*outputBits] = array_z_15_output;
	//column 16
	assign M_AXIS_TDATA[17*outputBits-1:16*outputBits] = array_w_16_output;
	assign M_AXIS_TDATA[49*outputBits-1:48*outputBits] = array_x_16_output;
	assign M_AXIS_TDATA[81*outputBits-1:80*outputBits] = array_y_16_output;
	assign M_AXIS_TDATA[113*outputBits-1:112*outputBits] = array_z_16_output;
	//column 17
	assign M_AXIS_TDATA[18*outputBits-1:17*outputBits] = array_w_17_output;
	assign M_AXIS_TDATA[50*outputBits-1:49*outputBits] = array_x_17_output;
	assign M_AXIS_TDATA[82*outputBits-1:81*outputBits] = array_y_17_output;
	assign M_AXIS_TDATA[114*outputBits-1:113*outputBits] = array_z_17_output;
	//column 18
	assign M_AXIS_TDATA[19*outputBits-1:18*outputBits] = array_w_18_output;
	assign M_AXIS_TDATA[51*outputBits-1:50*outputBits] = array_x_18_output;
	assign M_AXIS_TDATA[83*outputBits-1:82*outputBits] = array_y_18_output;
	assign M_AXIS_TDATA[115*outputBits-1:114*outputBits] = array_z_18_output;
	//column 19
	assign M_AXIS_TDATA[20*outputBits-1:19*outputBits] = array_w_19_output;
	assign M_AXIS_TDATA[52*outputBits-1:51*outputBits] = array_x_19_output;
	assign M_AXIS_TDATA[84*outputBits-1:83*outputBits] = array_y_19_output;
	assign M_AXIS_TDATA[116*outputBits-1:115*outputBits] = array_z_19_output;
	//column 20
	assign M_AXIS_TDATA[21*outputBits-1:20*outputBits] = array_w_20_output;
	assign M_AXIS_TDATA[53*outputBits-1:52*outputBits] = array_x_20_output;
	assign M_AXIS_TDATA[85*outputBits-1:84*outputBits] = array_y_20_output;
	assign M_AXIS_TDATA[117*outputBits-1:116*outputBits] = array_z_20_output;
	//column 21
	assign M_AXIS_TDATA[22*outputBits-1:21*outputBits] = array_w_21_output;
	assign M_AXIS_TDATA[54*outputBits-1:53*outputBits] = array_x_21_output;
	assign M_AXIS_TDATA[86*outputBits-1:85*outputBits] = array_y_21_output;
	assign M_AXIS_TDATA[118*outputBits-1:117*outputBits] = array_z_21_output;
	//column 22
	assign M_AXIS_TDATA[23*outputBits-1:22*outputBits] = array_w_22_output;
	assign M_AXIS_TDATA[55*outputBits-1:54*outputBits] = array_x_22_output;
	assign M_AXIS_TDATA[87*outputBits-1:86*outputBits] = array_y_22_output;
	assign M_AXIS_TDATA[119*outputBits-1:118*outputBits] = array_z_22_output;
	//column 23
	assign M_AXIS_TDATA[24*outputBits-1:23*outputBits] = array_w_23_output;
	assign M_AXIS_TDATA[56*outputBits-1:55*outputBits] = array_x_23_output;
	assign M_AXIS_TDATA[88*outputBits-1:87*outputBits] = array_y_23_output;
	assign M_AXIS_TDATA[120*outputBits-1:119*outputBits] = array_z_23_output;
	//column 24
	assign M_AXIS_TDATA[25*outputBits-1:24*outputBits] = array_w_24_output;
	assign M_AXIS_TDATA[57*outputBits-1:56*outputBits] = array_x_24_output;
	assign M_AXIS_TDATA[89*outputBits-1:88*outputBits] = array_y_24_output;
	assign M_AXIS_TDATA[121*outputBits-1:120*outputBits] = array_z_24_output;
	//column 25
	assign M_AXIS_TDATA[26*outputBits-1:25*outputBits] = array_w_25_output;
	assign M_AXIS_TDATA[58*outputBits-1:57*outputBits] = array_x_25_output;
	assign M_AXIS_TDATA[90*outputBits-1:89*outputBits] = array_y_25_output;
	assign M_AXIS_TDATA[122*outputBits-1:121*outputBits] = array_z_25_output;
	//column 26
	assign M_AXIS_TDATA[27*outputBits-1:26*outputBits] = array_w_26_output;
	assign M_AXIS_TDATA[59*outputBits-1:58*outputBits] = array_x_26_output;
	assign M_AXIS_TDATA[91*outputBits-1:90*outputBits] = array_y_26_output;
	assign M_AXIS_TDATA[123*outputBits-1:122*outputBits] = array_z_26_output;
	//column 27
	assign M_AXIS_TDATA[28*outputBits-1:27*outputBits] = array_w_27_output;
	assign M_AXIS_TDATA[60*outputBits-1:59*outputBits] = array_x_27_output;
	assign M_AXIS_TDATA[92*outputBits-1:91*outputBits] = array_y_27_output;
	assign M_AXIS_TDATA[124*outputBits-1:123*outputBits] = array_z_27_output;
	//column 28
	assign M_AXIS_TDATA[29*outputBits-1:28*outputBits] = array_w_28_output;
	assign M_AXIS_TDATA[61*outputBits-1:60*outputBits] = array_x_28_output;
	assign M_AXIS_TDATA[93*outputBits-1:92*outputBits] = array_y_28_output;
	assign M_AXIS_TDATA[125*outputBits-1:124*outputBits] = array_z_28_output;
	//column 29
	assign M_AXIS_TDATA[30*outputBits-1:29*outputBits] = array_w_29_output;
	assign M_AXIS_TDATA[62*outputBits-1:61*outputBits] = array_x_29_output;
	assign M_AXIS_TDATA[94*outputBits-1:93*outputBits] = array_y_29_output;
	assign M_AXIS_TDATA[126*outputBits-1:125*outputBits] = array_z_29_output;
	//column 30
	assign M_AXIS_TDATA[31*outputBits-1:30*outputBits] = array_w_30_output;
	assign M_AXIS_TDATA[63*outputBits-1:62*outputBits] = array_x_30_output;
	assign M_AXIS_TDATA[95*outputBits-1:94*outputBits] = array_y_30_output;
	assign M_AXIS_TDATA[127*outputBits-1:126*outputBits] = array_z_30_output;
	//column 31
	assign M_AXIS_TDATA[32*outputBits-1:31*outputBits] = array_w_31_output;
	assign M_AXIS_TDATA[64*outputBits-1:63*outputBits] = array_x_31_output;
	assign M_AXIS_TDATA[96*outputBits-1:95*outputBits] = array_y_31_output;
	assign M_AXIS_TDATA[128*outputBits-1:127*outputBits] = array_z_31_output;
	//
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

endmodule