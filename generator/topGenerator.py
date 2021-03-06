from settings import *

def generateTop():
	print("\tGenerating Top...")

	file = open(generatedPath + "top.sv", "w")

	#parameters & interface
	file.write("module top //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter outputBits = " + str(outputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	s_axi_tdata_width_adjustment = int(m.pow(2, m.ceil(m.log(arraySize*inputBits*5, 2))) - arraySize*inputBits*5)
	file.write("\tparameter s_axi_tdata_width = arraySize*inputBits*5 + " + str(s_axi_tdata_width_adjustment) + ",\n")
	file.write("\tparameter s_axi_tkeep_width = s_axi_tdata_width/8,\n")
	m_axi_tdata_width_adjustment = int(m.pow(2, m.ceil(m.log(arraySize*outputBits*4, 2))) - arraySize*outputBits*4)
	file.write("\tparameter m_axi_tdata_width = arraySize*outputBits*4 + " + str(m_axi_tdata_width_adjustment) + ",\n")
	file.write("\tparameter m_axi_tkeep_width = m_axi_tdata_width/8\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\t//CLK, RST\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic clk2x,\n")
	file.write("\t//Global Control\n")
	file.write("\tinput logic start,\n")
	file.write("\tinput logic interrupt,\n")
	file.write("\t//AXIS Slave Input Port\n")
	file.write("\tinput logic [s_axi_tdata_width-1:0] S_AXIS_TDATA,\n")
	file.write("\tinput logic [s_axi_tkeep_width-1:0] S_AXIS_TKEEP,\n")
	file.write("\tinput logic S_AXIS_TLAST,\n")
	file.write("\tinput logic S_AXIS_TVALID,\n")
	file.write("\toutput logic S_AXIS_TREADY,\n")
	file.write("\t//AXIS Master Input Port\n")
	file.write("\toutput logic [m_axi_tdata_width-1:0] M_AXIS_TDATA,\n")
	file.write("\toutput logic [m_axi_tkeep_width-1:0] M_AXIS_TKEEP,\n")
	file.write("\toutput logic M_AXIS_TLAST,\n")
	file.write("\toutput logic M_AXIS_TVALID,\n")
	file.write("\tinput logic M_AXIS_TREADY,\n")
	if(levelOfHardness == 0):
		file.seek(0, os.SEEK_END)
		file.seek(file.tell()-2, os.SEEK_SET)
		file.write("\n")
	elif(levelOfHardness == 1):
		file.write("\t//LABFT\n")
		file.write("\toutput logic [" + str(parallelismLevel-1) + ":0] error\n")
	elif(levelOfHardness == 2):
		file.write("\t//DWC LABFT\n")
		file.write("\toutput logic [" + str(2*parallelismLevel-1) + ":0] error\n")
	elif(levelOfHardness == 3):
		file.write("\t//DWC LABFT + DWC Memory\n")
		file.write("\toutput logic [" + str(6*arraySize+2*parallelismLevel-1) + ":0] error\n")
	elif(levelOfHardness == 4):
		file.write("\t//DWC LABFT + DWC Memory + TMR Control\n")
		file.write("\toutput logic [" + str(6*arraySize+2*parallelismLevel-1) + ":0] error\n")
	file.write(");\n")
	file.write("\n")

	#signals
	file.write("\t//signals\n")
	file.write("\t//fsm\n")
	file.write("\t//fillingInputMemoriesState\n")
	file.write("\tlogic fillingInputMemories;\n")
	file.write("\tlogic [addressWidth-1:0] abcdeWriteAddress;\n")
	file.write("\t//loadingWeightsState\n")
	file.write("\tlogic loadingWeights;\n")
	file.write("\tlogic [addressWidth-1:0] eReadAddress;\n")
	file.write("\t//runningState - inputs [mem -> array]\n")
	file.write("\tlogic validInputs_0;\n")
	file.write("\tlogic [addressWidth-1:0] abcdReadAddress_0;\n")
	file.write("\t//runningState - outputs [array -> mem]\n")
	file.write("\tlogic wxyzWriteEnable_0;\n")
	file.write("\tlogic [addressWidth-1:0] wxyzWriteAddress_0;\n")
	file.write("\t//runningState - inputs [mem -> outside]\n")
	file.write("\tlogic [addressWidth-1:0] wxyzReadAddress_0;\n")
	file.write("\t//others\n")
	file.write("\t//abcd\n")
	for i in range(0, arraySize):
		file.write("\t//line" + str(i) + "\n")
		if(i>0):
			file.write("\tlogic validInputs_" + str(i) + ";\n")
			file.write("\tlogic [addressWidth-1:0] abcdReadAddress_" + str(i) + ";\n")
		file.write("\tlogic [4*inputBits-1:0] mem_abcd_" + str(i) + "_writeData;\n")
		file.write("\tlogic [4*inputBits-1:0] mem_abcd_" + str(i) + "_readData;\n")
		if(levelOfHardness >= 3):
			file.write("\tlogic mem_abcd_" + str(i) + "_error;\n")
		file.write("\tlogic [inputBits-1:0] array_a_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_b_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_c_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_d_" + str(i) + "_input;\n")
	file.write("\t//e\n")
	for i in range(0, arraySize):
		file.write("\t//column" + str(i) + "\n")
		file.write("\tlogic [inputBits-1:0] mem_e_" + str(i) + "_writeData;\n")
		file.write("\tlogic [inputBits-1:0] mem_e_" + str(i) + "_readData;\n")
		if(levelOfHardness >= 3):
			file.write("\tlogic mem_e_" + str(i) + "_error;\n")
		file.write("\tlogic [inputBits-1:0] array_e_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_e_" + str(i) + "_output;\n")
	file.write("\t//wxyz\n")
	for i in range(arraySize):
		file.write("\t//column" + str(i) + "\n")
		if(i>0):
			file.write("\tlogic wxyzWriteEnable_" + str(i) + ";\n")
			file.write("\tlogic [addressWidth-1:0] wxyzWriteAddress_" + str(i) + ";\n")
			file.write("\tlogic [addressWidth-1:0] wxyzReadAddress_" + str(i) + ";\n")
		file.write("\tlogic [outputBits-1:0] array_w_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_x_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_y_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_z_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] mem_w_" + str(i) + "_readData;\n")
		file.write("\tlogic [outputBits-1:0] mem_x_" + str(i) + "_readData;\n")
		file.write("\tlogic [outputBits-1:0] mem_y_" + str(i) + "_readData;\n")
		file.write("\tlogic [outputBits-1:0] mem_z_" + str(i) + "_readData;\n")
		if(levelOfHardness >= 3):
			file.write("\tlogic mem_w_" + str(i) + "_error;\n")
			file.write("\tlogic mem_x_" + str(i) + "_error;\n")
			file.write("\tlogic mem_y_" + str(i) + "_error;\n")
			file.write("\tlogic mem_z_" + str(i) + "_error;\n")
	file.write("\n")

	#modules
	file.write("\t//modules\n")
	file.write("\t//fsm\n")
	if(levelOfHardness >= 4):
		file.write("\ttmr_fsm #(arraySize) fsm(clk, rst, start, interrupt,\n")
	else:
		file.write("\tfsm #(arraySize) fsm(clk, rst, start, interrupt,\n")
	file.write("\t\t\t\t\t\t S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,\n")
	file.write("\t\t\t\t\t\t M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,\n")
	file.write("\t\t\t\t\t\t fillingInputMemories, abcdeWriteAddress,\n")
	file.write("\t\t\t\t\t\t loadingWeights, eReadAddress,\n")
	file.write("\t\t\t\t\t\t validInputs_0, abcdReadAddress_0,\n")
	file.write("\t\t\t\t\t\t wxyzWriteEnable_0, wxyzWriteAddress_0,\n")
	file.write("\t\t\t\t\t\t wxyzReadAddress_0);\n")

	file.write("\t//mem_abcd [write external, read by array]\n")
	for i in range(0, arraySize):
		file.write("\t//line " + str(i) + "\n")
		if(i>0):
			file.write("\t//dff for delaying valid + address\n")
			if(levelOfHardness >= 4):
				file.write("\ttmr_dff #(1) dff_validInputs_" + str(i) + "(clk, rst, validInputs_" + str(i-1) + ", validInputs_" + str(i) + ");\n")
				file.write("\ttmr_dff #(addressWidth) dff_abcdReadAddress_" + str(i) + "(clk, rst, abcdReadAddress_" + str(i-1) + ", abcdReadAddress_" + str(i) + ");\n")
			else:
				file.write("\tdff #(1) dff_validInputs_" + str(i) + "(clk, rst, validInputs_" + str(i-1) + ", validInputs_" + str(i) + ");\n")
				file.write("\tdff #(addressWidth) dff_abcdReadAddress_" + str(i) + "(clk, rst, abcdReadAddress_" + str(i-1) + ", abcdReadAddress_" + str(i) + ");\n")
		file.write("\tassign mem_abcd_" + str(i) + "_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[" + str(0*arraySize+(i+1)) + "*inputBits-1:" + str(0*arraySize+i) + "*inputBits];\n")
		file.write("\tassign mem_abcd_" + str(i) + "_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[" + str(1*arraySize+(i+1)) + "*inputBits-1:" + str(1*arraySize+i) + "*inputBits];\n")
		file.write("\tassign mem_abcd_" + str(i) + "_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[" + str(2*arraySize+(i+1)) + "*inputBits-1:" + str(2*arraySize+i) + "*inputBits];\n")
		file.write("\tassign mem_abcd_" + str(i) + "_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[" + str(3*arraySize+(i+1)) + "*inputBits-1:" + str(3*arraySize+i) + "*inputBits];\n")
		if(levelOfHardness >= 3):
			file.write("\tdwc_mem #(4*inputBits, arraySize) mem_abcd_" + str(i) + "(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_" + str(i) + "_writeData, abcdReadAddress_" + str(i) + ", mem_abcd_" + str(i) + "_readData, mem_abcd_" + str(i) + "_error);\n")
		else:
			file.write("\tmem #(4*inputBits, arraySize) mem_abcd_" + str(i) + "(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_" + str(i) + "_writeData, abcdReadAddress_" + str(i) + ", mem_abcd_" + str(i) + "_readData);\n")
		file.write("\tassign array_a_" + str(i) + "_input = (validInputs_" + str(i) + ") ? mem_abcd_" + str(i) + "_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};\n")
		file.write("\tassign array_b_" + str(i) + "_input = (validInputs_" + str(i) + ") ? mem_abcd_" + str(i) + "_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};\n")
		file.write("\tassign array_c_" + str(i) + "_input = (validInputs_" + str(i) + ") ? mem_abcd_" + str(i) + "_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};\n")
		file.write("\tassign array_d_" + str(i) + "_input = (validInputs_" + str(i) + ") ? mem_abcd_" + str(i) + "_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};\n")

	file.write("\t//mem_e [write external, read by array]\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tassign mem_e_" + str(i) + "_writeData = S_AXIS_TDATA[" + str(parallelismLevel*arraySize+i+1) + "*inputBits-1:" + str(parallelismLevel*arraySize+i) + "*inputBits];\n")
		if(levelOfHardness >= 3):
			file.write("\tdwc_mem #(inputBits, arraySize) mem_e_" + str(i) + "(clk, fillingInputMemories, abcdeWriteAddress, mem_e_" + str(i) + "_writeData, eReadAddress, mem_e_" + str(i) + "_readData, mem_e_" + str(i) + "_error);\n")
		else:
			file.write("\tmem #(inputBits, arraySize) mem_e_" + str(i) + "(clk, fillingInputMemories, abcdeWriteAddress, mem_e_" + str(i) + "_writeData, eReadAddress, mem_e_" + str(i) + "_readData);\n")
		file.write("\tassign array_e_" + str(i) + "_input = mem_e_" + str(i) + "_readData;\n")

	file.write("\t//array\n")
	file.write("\tarray #(inputBits, outputBits) array(clk, rst, clk2x, loadingWeights,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\t\t\t array_a_" + str(i) + "_input, array_b_" + str(i) + "_input, array_c_" + str(i) + "_input, array_d_" + str(i) + "_input,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_e_" + str(i) + "_input,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_w_" + str(i) + "_output, array_x_" + str(i) + "_output, array_y_" + str(i) + "_output, array_z_" + str(i) + "_output,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_e_" + str(i) + "_output,\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
   
	file.write("\t//mem_wxyz [write by array, read external]\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		if(i>0):
			file.write("\t//dff for delaying enable + address\n")
			if(levelOfHardness >= 4):
				file.write("\ttmr_dff #(1) dff_wxyzWriteEnable_" + str(i) + "(clk, rst, wxyzWriteEnable_" + str(i-1) + ", wxyzWriteEnable_" + str(i) + ");\n")
				file.write("\ttmr_dff #(addressWidth) dff_wxyzWriteAddress_" + str(i) + "(clk, rst, wxyzWriteAddress_" + str(i-1) + ", wxyzWriteAddress_" + str(i) + ");\n")
				file.write("\ttmr_dff #(addressWidth) dff_wxyzReadAddress_" + str(i) + "(clk, rst, wxyzReadAddress_" + str(i-1) + ", wxyzReadAddress_" + str(i) + ");\n")
			else:
				file.write("\tdff #(1) dff_wxyzWriteEnable_" + str(i) + "(clk, rst, wxyzWriteEnable_" + str(i-1) + ", wxyzWriteEnable_" + str(i) + ");\n")
				file.write("\tdff #(addressWidth) dff_wxyzWriteAddress_" + str(i) + "(clk, rst, wxyzWriteAddress_" + str(i-1) + ", wxyzWriteAddress_" + str(i) + ");\n")
				file.write("\tdff #(addressWidth) dff_wxyzReadAddress_" + str(i) + "(clk, rst, wxyzReadAddress_" + str(i-1) + ", wxyzReadAddress_" + str(i) + ");\n")
		if(levelOfHardness >= 3):
			file.write("\tdwc_mem #(outputBits, arraySize) mem_w_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_w_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_w_" + str(i) + "_readData, mem_w_" + str(i) + "_error);\n")
			file.write("\tdwc_mem #(outputBits, arraySize) mem_x_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_x_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_x_" + str(i) + "_readData, mem_x_" + str(i) + "_error);\n")
			file.write("\tdwc_mem #(outputBits, arraySize) mem_y_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_y_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_y_" + str(i) + "_readData, mem_y_" + str(i) + "_error);\n")
			file.write("\tdwc_mem #(outputBits, arraySize) mem_z_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_z_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_z_" + str(i) + "_readData, mem_z_" + str(i) + "_error);\n")
		else:
			file.write("\tmem #(outputBits, arraySize) mem_w_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_w_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_w_" + str(i) + "_readData);\n")
			file.write("\tmem #(outputBits, arraySize) mem_x_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_x_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_x_" + str(i) + "_readData);\n")
			file.write("\tmem #(outputBits, arraySize) mem_y_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_y_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_y_" + str(i) + "_readData);\n")
			file.write("\tmem #(outputBits, arraySize) mem_z_" + str(i) + "(clk, wxyzWriteEnable_" + str(i) + ", wxyzWriteAddress_" + str(i) + ", array_z_" + str(i) + "_output, wxyzReadAddress_" + str(i) + ", mem_z_" + str(i) + "_readData);\n")
	file.write("\n")

	#assigns
	file.write("\t//assigns\n")
	for i in range(0, arraySize):
		file.write("\tassign M_AXIS_TDATA[" + str(0*arraySize+(i+1)) + "*outputBits-1:" + str(0*arraySize+i) + "*outputBits] = mem_w_" + str(i) + "_readData;\n")
		file.write("\tassign M_AXIS_TDATA[" + str(1*arraySize+(i+1)) + "*outputBits-1:" + str(1*arraySize+i) + "*outputBits] = mem_x_" + str(i) + "_readData;\n")
		file.write("\tassign M_AXIS_TDATA[" + str(2*arraySize+(i+1)) + "*outputBits-1:" + str(2*arraySize+i) + "*outputBits] = mem_y_" + str(i) + "_readData;\n")
		file.write("\tassign M_AXIS_TDATA[" + str(3*arraySize+(i+1)) + "*outputBits-1:" + str(3*arraySize+i) + "*outputBits] = mem_z_" + str(i) + "_readData;\n")
	if(m_axi_tdata_width_adjustment > 0):
		file.write("\tassign M_AXIS_TDATA[m_axi_tdata_width-1:" + str(arraySize*parallelismLevel) + "*outputBits] = {" + str(m_axi_tdata_width_adjustment) + "{1'b0}};\n")
	file.write("\tassign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};\n")
	file.write("\n")



	########## LABFT ##########
	if(levelOfHardness > 0):
		if(levelOfHardness == 1):
			file.write("\t//LABFT\n")
			file.write("\tlabft labft(clk, rst, validInputs_0, wxyzWriteEnable_0,\n")
		elif(levelOfHardness >= 2):
			file.write("\t//DWC LABFT\n")
			file.write("\tdwc_labft labft(clk, rst, validInputs_0, wxyzWriteEnable_0,\n")	
		for i in range(0, arraySize):
			file.write("\t\t\t\t\tarray_a_" + str(i) + "_input, array_b_" + str(i) + "_input, array_c_" + str(i) + "_input, array_d_" + str(i) + "_input,\n")
		for i in range(0, arraySize):
			file.write("\t\t\t\t\tarray_e_" + str(i) + "_output,\n")
		for i in range(0, arraySize):
			file.write("\t\t\t\t\tarray_w_" + str(i) + "_output, array_x_" + str(i) + "_output, array_y_" + str(i) + "_output, array_z_" + str(i) + "_output,\n")
		if(levelOfHardness == 1):
			file.write("\t\t\t\t\terror[" + str(parallelismLevel-1) + ":0]);\n")
		elif(levelOfHardness >= 2):
			file.write("\t\t\t\t\terror[" + str(2*parallelismLevel-1) + ":0]);\n")
		file.write("\n")

	if(levelOfHardness >= 3):
		file.write("\t//DWC Memory\n")
		file.write("\tlogic [arraySize-1:0] mem_abcd_errors;\n");
		for i in range(0, arraySize):
			file.write("\tassign mem_abcd_errors[" + str(i) + "] = mem_abcd_" + str(i) + "_error;\n")
		file.write("\tlogic [arraySize-1:0] mem_e_errors;\n");
		for i in range(0, arraySize):
			file.write("\tassign mem_e_errors[" + str(i) + "] = mem_e_" + str(i) + "_error;\n")
		file.write("\tlogic [arraySize-1:0] mem_w_errors;\n");
		for i in range(0, arraySize):
			file.write("\tassign mem_w_errors[" + str(i) + "] = mem_w_" + str(i) + "_error;\n")
		file.write("\tlogic [arraySize-1:0] mem_x_errors;\n");
		for i in range(0, arraySize):
			file.write("\tassign mem_x_errors[" + str(i) + "] = mem_x_" + str(i) + "_error;\n")
		file.write("\tlogic [arraySize-1:0] mem_y_errors;\n");
		for i in range(0, arraySize):
			file.write("\tassign mem_y_errors[" + str(i) + "] = mem_y_" + str(i) + "_error;\n")
		file.write("\tlogic [arraySize-1:0] mem_z_errors;\n");
		for i in range(0, arraySize):
			file.write("\tassign mem_z_errors[" + str(i) + "] = mem_z_" + str(i) + "_error;\n")
		file.write("\tmem_error_detector #(arraySize) mem_error_detector(clk, rst, wxyzWriteEnable_0,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tmem_abcd_errors,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tmem_e_errors,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tmem_w_errors, mem_x_errors, mem_y_errors, mem_z_errors,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\terror[" + str(6*arraySize+2*parallelismLevel-1) + ":" + str(2*parallelismLevel) + "]);\n")
		file.write("\n")

	file.write("endmodule")

	file.close()
