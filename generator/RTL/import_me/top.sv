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
	//fillingInputMemoriesState
	logic fillingInputMemories;
	logic [addressWidth-1:0] abcdeWriteAddress;
	//loadingWeightsState
	logic loadingWeights;
	logic [addressWidth-1:0] eReadAddress;
	//runningState - inputs [mem -> array]
	logic validInputs_0;
	logic [addressWidth-1:0] abcdReadAddress_0;
	//runningState - outputs [array -> mem]
	logic wxyzWriteEnable_0;
	logic [addressWidth-1:0] wxyzWriteAddress_0;
	//runningState - inputs [mem -> outside]
	logic [addressWidth-1:0] wxyzReadAddress_0;
	//others
	//abcd
	//line0
	logic [4*inputBits-1:0] mem_abcd_0_writeData;
	logic [4*inputBits-1:0] mem_abcd_0_readData;
	logic [inputBits-1:0] array_a_0_input;
	logic [inputBits-1:0] array_b_0_input;
	logic [inputBits-1:0] array_c_0_input;
	logic [inputBits-1:0] array_d_0_input;
	//line1
	logic validInputs_1;
	logic [addressWidth-1:0] abcdReadAddress_1;
	logic [4*inputBits-1:0] mem_abcd_1_writeData;
	logic [4*inputBits-1:0] mem_abcd_1_readData;
	logic [inputBits-1:0] array_a_1_input;
	logic [inputBits-1:0] array_b_1_input;
	logic [inputBits-1:0] array_c_1_input;
	logic [inputBits-1:0] array_d_1_input;
	//line2
	logic validInputs_2;
	logic [addressWidth-1:0] abcdReadAddress_2;
	logic [4*inputBits-1:0] mem_abcd_2_writeData;
	logic [4*inputBits-1:0] mem_abcd_2_readData;
	logic [inputBits-1:0] array_a_2_input;
	logic [inputBits-1:0] array_b_2_input;
	logic [inputBits-1:0] array_c_2_input;
	logic [inputBits-1:0] array_d_2_input;
	//line3
	logic validInputs_3;
	logic [addressWidth-1:0] abcdReadAddress_3;
	logic [4*inputBits-1:0] mem_abcd_3_writeData;
	logic [4*inputBits-1:0] mem_abcd_3_readData;
	logic [inputBits-1:0] array_a_3_input;
	logic [inputBits-1:0] array_b_3_input;
	logic [inputBits-1:0] array_c_3_input;
	logic [inputBits-1:0] array_d_3_input;
	//e
	//column0
	logic [inputBits-1:0] mem_e_0_writeData;
	logic [inputBits-1:0] mem_e_0_readData;
	logic [inputBits-1:0] array_e_0_input;
	logic [inputBits-1:0] array_e_0_output;
	//column1
	logic [inputBits-1:0] mem_e_1_writeData;
	logic [inputBits-1:0] mem_e_1_readData;
	logic [inputBits-1:0] array_e_1_input;
	logic [inputBits-1:0] array_e_1_output;
	//column2
	logic [inputBits-1:0] mem_e_2_writeData;
	logic [inputBits-1:0] mem_e_2_readData;
	logic [inputBits-1:0] array_e_2_input;
	logic [inputBits-1:0] array_e_2_output;
	//column3
	logic [inputBits-1:0] mem_e_3_writeData;
	logic [inputBits-1:0] mem_e_3_readData;
	logic [inputBits-1:0] array_e_3_input;
	logic [inputBits-1:0] array_e_3_output;
	//wxyz
	//column0
	logic [outputBits-1:0] array_w_0_output;
	logic [outputBits-1:0] array_x_0_output;
	logic [outputBits-1:0] array_y_0_output;
	logic [outputBits-1:0] array_z_0_output;
	logic [outputBits-1:0] mem_w_0_readData;
	logic [outputBits-1:0] mem_x_0_readData;
	logic [outputBits-1:0] mem_y_0_readData;
	logic [outputBits-1:0] mem_z_0_readData;
	//column1
	logic wxyzWriteEnable_1;
	logic [addressWidth-1:0] wxyzWriteAddress_1;
	logic [addressWidth-1:0] wxyzReadAddress_1;
	logic [outputBits-1:0] array_w_1_output;
	logic [outputBits-1:0] array_x_1_output;
	logic [outputBits-1:0] array_y_1_output;
	logic [outputBits-1:0] array_z_1_output;
	logic [outputBits-1:0] mem_w_1_readData;
	logic [outputBits-1:0] mem_x_1_readData;
	logic [outputBits-1:0] mem_y_1_readData;
	logic [outputBits-1:0] mem_z_1_readData;
	//column2
	logic wxyzWriteEnable_2;
	logic [addressWidth-1:0] wxyzWriteAddress_2;
	logic [addressWidth-1:0] wxyzReadAddress_2;
	logic [outputBits-1:0] array_w_2_output;
	logic [outputBits-1:0] array_x_2_output;
	logic [outputBits-1:0] array_y_2_output;
	logic [outputBits-1:0] array_z_2_output;
	logic [outputBits-1:0] mem_w_2_readData;
	logic [outputBits-1:0] mem_x_2_readData;
	logic [outputBits-1:0] mem_y_2_readData;
	logic [outputBits-1:0] mem_z_2_readData;
	//column3
	logic wxyzWriteEnable_3;
	logic [addressWidth-1:0] wxyzWriteAddress_3;
	logic [addressWidth-1:0] wxyzReadAddress_3;
	logic [outputBits-1:0] array_w_3_output;
	logic [outputBits-1:0] array_x_3_output;
	logic [outputBits-1:0] array_y_3_output;
	logic [outputBits-1:0] array_z_3_output;
	logic [outputBits-1:0] mem_w_3_readData;
	logic [outputBits-1:0] mem_x_3_readData;
	logic [outputBits-1:0] mem_y_3_readData;
	logic [outputBits-1:0] mem_z_3_readData;

	//modules
	//fsm
	fsm #(arraySize) fsm(clk, rst, start, interrupt,
						 S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,
						 M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,
						 fillingInputMemories, abcdeWriteAddress,
						 loadingWeights, eReadAddress,
						 validInputs_0, abcdReadAddress_0,
						 wxyzWriteEnable_0, wxyzWriteAddress_0,
						 wxyzReadAddress_0);
	//mem_abcd [write external, read by array]
	//line 0
	assign mem_abcd_0_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[1*inputBits-1:0*inputBits];
	assign mem_abcd_0_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	assign mem_abcd_0_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[9*inputBits-1:8*inputBits];
	assign mem_abcd_0_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[13*inputBits-1:12*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_0(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_0_writeData, abcdReadAddress_0, mem_abcd_0_readData);
	assign array_a_0_input = (validInputs_0) ? mem_abcd_0_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_0_input = (validInputs_0) ? mem_abcd_0_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_0_input = (validInputs_0) ? mem_abcd_0_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_0_input = (validInputs_0) ? mem_abcd_0_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 1
	//dff for delaying valid + address
	dff #(1) dff_validInputs_1(clk, rst, validInputs_0, validInputs_1);
	dff #(addressWidth) dff_abcdReadAddress_1(clk, rst, abcdReadAddress_0, abcdReadAddress_1);
	assign mem_abcd_1_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	assign mem_abcd_1_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	assign mem_abcd_1_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[10*inputBits-1:9*inputBits];
	assign mem_abcd_1_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[14*inputBits-1:13*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_1(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_1_writeData, abcdReadAddress_1, mem_abcd_1_readData);
	assign array_a_1_input = (validInputs_1) ? mem_abcd_1_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_1_input = (validInputs_1) ? mem_abcd_1_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_1_input = (validInputs_1) ? mem_abcd_1_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_1_input = (validInputs_1) ? mem_abcd_1_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 2
	//dff for delaying valid + address
	dff #(1) dff_validInputs_2(clk, rst, validInputs_1, validInputs_2);
	dff #(addressWidth) dff_abcdReadAddress_2(clk, rst, abcdReadAddress_1, abcdReadAddress_2);
	assign mem_abcd_2_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	assign mem_abcd_2_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[7*inputBits-1:6*inputBits];
	assign mem_abcd_2_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[11*inputBits-1:10*inputBits];
	assign mem_abcd_2_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[15*inputBits-1:14*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_2(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_2_writeData, abcdReadAddress_2, mem_abcd_2_readData);
	assign array_a_2_input = (validInputs_2) ? mem_abcd_2_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_2_input = (validInputs_2) ? mem_abcd_2_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_2_input = (validInputs_2) ? mem_abcd_2_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_2_input = (validInputs_2) ? mem_abcd_2_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 3
	//dff for delaying valid + address
	dff #(1) dff_validInputs_3(clk, rst, validInputs_2, validInputs_3);
	dff #(addressWidth) dff_abcdReadAddress_3(clk, rst, abcdReadAddress_2, abcdReadAddress_3);
	assign mem_abcd_3_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	assign mem_abcd_3_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[8*inputBits-1:7*inputBits];
	assign mem_abcd_3_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[12*inputBits-1:11*inputBits];
	assign mem_abcd_3_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[16*inputBits-1:15*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_3(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_3_writeData, abcdReadAddress_3, mem_abcd_3_readData);
	assign array_a_3_input = (validInputs_3) ? mem_abcd_3_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_3_input = (validInputs_3) ? mem_abcd_3_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_3_input = (validInputs_3) ? mem_abcd_3_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_3_input = (validInputs_3) ? mem_abcd_3_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//mem_e [write external, read by array]
	//column 0
	assign mem_e_0_writeData = S_AXIS_TDATA[17*inputBits-1:16*inputBits];
	mem #(inputBits, arraySize) mem_e_0(clk, fillingInputMemories, abcdeWriteAddress, mem_e_0_writeData, eReadAddress, mem_e_0_readData);
	assign array_e_0_input = mem_e_0_readData;
	//column 1
	assign mem_e_1_writeData = S_AXIS_TDATA[18*inputBits-1:17*inputBits];
	mem #(inputBits, arraySize) mem_e_1(clk, fillingInputMemories, abcdeWriteAddress, mem_e_1_writeData, eReadAddress, mem_e_1_readData);
	assign array_e_1_input = mem_e_1_readData;
	//column 2
	assign mem_e_2_writeData = S_AXIS_TDATA[19*inputBits-1:18*inputBits];
	mem #(inputBits, arraySize) mem_e_2(clk, fillingInputMemories, abcdeWriteAddress, mem_e_2_writeData, eReadAddress, mem_e_2_readData);
	assign array_e_2_input = mem_e_2_readData;
	//column 3
	assign mem_e_3_writeData = S_AXIS_TDATA[20*inputBits-1:19*inputBits];
	mem #(inputBits, arraySize) mem_e_3(clk, fillingInputMemories, abcdeWriteAddress, mem_e_3_writeData, eReadAddress, mem_e_3_readData);
	assign array_e_3_input = mem_e_3_readData;
	//array
	array #(inputBits, outputBits) array(clk, rst, clk2x, loadingWeights,
										 array_a_0_input, array_b_0_input, array_c_0_input, array_d_0_input,
										 array_e_0_input,
										 array_w_0_output, array_x_0_output, array_y_0_output, array_z_0_output,
										 array_e_0_output,
										 array_a_1_input, array_b_1_input, array_c_1_input, array_d_1_input,
										 array_e_1_input,
										 array_w_1_output, array_x_1_output, array_y_1_output, array_z_1_output,
										 array_e_1_output,
										 array_a_2_input, array_b_2_input, array_c_2_input, array_d_2_input,
										 array_e_2_input,
										 array_w_2_output, array_x_2_output, array_y_2_output, array_z_2_output,
										 array_e_2_output,
										 array_a_3_input, array_b_3_input, array_c_3_input, array_d_3_input,
										 array_e_3_input,
										 array_w_3_output, array_x_3_output, array_y_3_output, array_z_3_output,
										 array_e_3_output);
	//mem_wxyz [write by array, read external]
	//column 0
	mem #(outputBits, arraySize) mem_w_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_w_0_output, wxyzReadAddress_0, mem_w_0_readData);
	mem #(outputBits, arraySize) mem_x_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_x_0_output, wxyzReadAddress_0, mem_x_0_readData);
	mem #(outputBits, arraySize) mem_y_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_y_0_output, wxyzReadAddress_0, mem_y_0_readData);
	mem #(outputBits, arraySize) mem_z_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_z_0_output, wxyzReadAddress_0, mem_z_0_readData);
	//column 1
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_1(clk, rst, wxyzWriteEnable_0, wxyzWriteEnable_1);
	dff #(addressWidth) dff_wxyzWriteAddress_1(clk, rst, wxyzWriteAddress_0, wxyzWriteAddress_1);
	dff #(addressWidth) dff_wxyzReadAddress_1(clk, rst, wxyzReadAddress_0, wxyzReadAddress_1);
	mem #(outputBits, arraySize) mem_w_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_w_1_output, wxyzReadAddress_1, mem_w_1_readData);
	mem #(outputBits, arraySize) mem_x_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_x_1_output, wxyzReadAddress_1, mem_x_1_readData);
	mem #(outputBits, arraySize) mem_y_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_y_1_output, wxyzReadAddress_1, mem_y_1_readData);
	mem #(outputBits, arraySize) mem_z_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_z_1_output, wxyzReadAddress_1, mem_z_1_readData);
	//column 2
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_2(clk, rst, wxyzWriteEnable_1, wxyzWriteEnable_2);
	dff #(addressWidth) dff_wxyzWriteAddress_2(clk, rst, wxyzWriteAddress_1, wxyzWriteAddress_2);
	dff #(addressWidth) dff_wxyzReadAddress_2(clk, rst, wxyzReadAddress_1, wxyzReadAddress_2);
	mem #(outputBits, arraySize) mem_w_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_w_2_output, wxyzReadAddress_2, mem_w_2_readData);
	mem #(outputBits, arraySize) mem_x_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_x_2_output, wxyzReadAddress_2, mem_x_2_readData);
	mem #(outputBits, arraySize) mem_y_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_y_2_output, wxyzReadAddress_2, mem_y_2_readData);
	mem #(outputBits, arraySize) mem_z_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_z_2_output, wxyzReadAddress_2, mem_z_2_readData);
	//column 3
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_3(clk, rst, wxyzWriteEnable_2, wxyzWriteEnable_3);
	dff #(addressWidth) dff_wxyzWriteAddress_3(clk, rst, wxyzWriteAddress_2, wxyzWriteAddress_3);
	dff #(addressWidth) dff_wxyzReadAddress_3(clk, rst, wxyzReadAddress_2, wxyzReadAddress_3);
	mem #(outputBits, arraySize) mem_w_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_w_3_output, wxyzReadAddress_3, mem_w_3_readData);
	mem #(outputBits, arraySize) mem_x_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_x_3_output, wxyzReadAddress_3, mem_x_3_readData);
	mem #(outputBits, arraySize) mem_y_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_y_3_output, wxyzReadAddress_3, mem_y_3_readData);
	mem #(outputBits, arraySize) mem_z_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_z_3_output, wxyzReadAddress_3, mem_z_3_readData);

	//assigns
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = mem_w_0_readData;
	assign M_AXIS_TDATA[5*outputBits-1:4*outputBits] = mem_x_0_readData;
	assign M_AXIS_TDATA[9*outputBits-1:8*outputBits] = mem_y_0_readData;
	assign M_AXIS_TDATA[13*outputBits-1:12*outputBits] = mem_z_0_readData;
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = mem_w_1_readData;
	assign M_AXIS_TDATA[6*outputBits-1:5*outputBits] = mem_x_1_readData;
	assign M_AXIS_TDATA[10*outputBits-1:9*outputBits] = mem_y_1_readData;
	assign M_AXIS_TDATA[14*outputBits-1:13*outputBits] = mem_z_1_readData;
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = mem_w_2_readData;
	assign M_AXIS_TDATA[7*outputBits-1:6*outputBits] = mem_x_2_readData;
	assign M_AXIS_TDATA[11*outputBits-1:10*outputBits] = mem_y_2_readData;
	assign M_AXIS_TDATA[15*outputBits-1:14*outputBits] = mem_z_2_readData;
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = mem_w_3_readData;
	assign M_AXIS_TDATA[8*outputBits-1:7*outputBits] = mem_x_3_readData;
	assign M_AXIS_TDATA[12*outputBits-1:11*outputBits] = mem_y_3_readData;
	assign M_AXIS_TDATA[16*outputBits-1:15*outputBits] = mem_z_3_readData;
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

	//LABFT
	labft labft(clk, rst, validInputs_0, wxyzWriteEnable_0,
					array_a_0_input, array_b_0_input, array_c_0_input, array_d_0_input,
					array_a_1_input, array_b_1_input, array_c_1_input, array_d_1_input,
					array_a_2_input, array_b_2_input, array_c_2_input, array_d_2_input,
					array_a_3_input, array_b_3_input, array_c_3_input, array_d_3_input,
					array_e_0_output,
					array_e_1_output,
					array_e_2_output,
					array_e_3_output,
					array_w_0_output, array_x_0_output, array_y_0_output, array_z_0_output,
					array_w_1_output, array_x_1_output, array_y_1_output, array_z_1_output,
					array_w_2_output, array_x_2_output, array_y_2_output, array_z_2_output,
					array_w_3_output, array_x_3_output, array_y_3_output, array_z_3_output,
					error);

endmodule