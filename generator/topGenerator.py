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
	if(not(hardenedArray)):
		file.seek(0, os.SEEK_END)
		file.seek(file.tell()-2, os.SEEK_SET)
		file.write("\n")
	else:
		file.write("\t//LABFT\n")
		file.write("\toutput logic [" + str(parallelismLevel-1) + ":0] error\n")
	file.write(");\n")
	file.write("\n")

	#signals
	file.write("\t//signals\n")
	file.write("\t//fsm\n")
	file.write("\tlogic loadingWeights;\n")
	file.write("\tlogic validInputs;\n")
	file.write("\tlogic validOutputs;\n")
	file.write("\t//others\n")
	file.write("\t//abcd\n")
	for i in range(0, arraySize):
		file.write("\t//line" + str(i) + "\n")
		file.write("\tlogic [inputBits-1:0] array_a_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_b_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_c_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_d_" + str(i) + "_input;\n")
	file.write("\t//e\n")
	for i in range(0, arraySize):
		file.write("\t//column" + str(i) + "\n")
		file.write("\tlogic [inputBits-1:0] array_e_" + str(i) + "_input;\n")
	file.write("\t//wxyz\n")
	for i in range(arraySize):
		file.write("\t//column" + str(i) + "\n")
		file.write("\tlogic [outputBits-1:0] array_w_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_x_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_y_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_z_" + str(i) + "_output;\n")
	file.write("\n")

	#modules
	file.write("\t//modules\n")
	file.write("\t//fsm\n")
	file.write("\tfsm #(arraySize) fsm(clk, rst, start, interrupt,\n")
	file.write("\t\t\t\t\t\t S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,\n")
	file.write("\t\t\t\t\t\t M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,\n")
	file.write("\t\t\t\t\t\t loadingWeights,\n")
	file.write("\t\t\t\t\t\t validInputs,\n")
	file.write("\t\t\t\t\t\t validOutputs);\n")

	file.write("\t//abcd\n")
	for i in range(0, arraySize):
		file.write("\t//line " + str(i) + "\n")
		file.write("\tassign array_a_" + str(i) + "_input = S_AXIS_TDATA[" + str(0*arraySize+(i+1)) + "*inputBits-1:" + str(0*arraySize+i) + "*inputBits];\n")
		file.write("\tassign array_b_" + str(i) + "_input = S_AXIS_TDATA[" + str(1*arraySize+(i+1)) + "*inputBits-1:" + str(1*arraySize+i) + "*inputBits];\n")
		file.write("\tassign array_c_" + str(i) + "_input = S_AXIS_TDATA[" + str(2*arraySize+(i+1)) + "*inputBits-1:" + str(2*arraySize+i) + "*inputBits];\n")
		file.write("\tassign array_d_" + str(i) + "_input = S_AXIS_TDATA[" + str(3*arraySize+(i+1)) + "*inputBits-1:" + str(3*arraySize+i) + "*inputBits];\n")

	file.write("\t//e\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tassign array_e_" + str(i) + "_input = S_AXIS_TDATA[" + str(parallelismLevel*arraySize+i+1) + "*inputBits-1:" + str(parallelismLevel*arraySize+i) + "*inputBits];\n")

	file.write("\t//array\n")
	file.write("\tarray #(inputBits, outputBits) array(clk, rst, clk2x, loadingWeights,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\t\t\t array_a_" + str(i) + "_input, array_b_" + str(i) + "_input, array_c_" + str(i) + "_input, array_d_" + str(i) + "_input,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_e_" + str(i) + "_input,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_w_" + str(i) + "_output, array_x_" + str(i) + "_output, array_y_" + str(i) + "_output, array_z_" + str(i) + "_output,\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
   
	file.write("\t//wxyz\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tassign M_AXIS_TDATA[" + str(0*arraySize+(i+1)) + "*outputBits-1:" + str(0*arraySize+i) + "*outputBits] = array_w_" + str(i) + "_output;\n")
		file.write("\tassign M_AXIS_TDATA[" + str(1*arraySize+(i+1)) + "*outputBits-1:" + str(1*arraySize+i) + "*outputBits] = array_x_" + str(i) + "_output;\n")
		file.write("\tassign M_AXIS_TDATA[" + str(2*arraySize+(i+1)) + "*outputBits-1:" + str(2*arraySize+i) + "*outputBits] = array_y_" + str(i) + "_output;\n")
		file.write("\tassign M_AXIS_TDATA[" + str(3*arraySize+(i+1)) + "*outputBits-1:" + str(3*arraySize+i) + "*outputBits] = array_z_" + str(i) + "_output;\n")
	file.write("\t//\n")
	if(m_axi_tdata_width_adjustment > 0):
		file.write("\tassign M_AXIS_TDATA[m_axi_tdata_width-1:" + str(arraySize*parallelismLevel) + "*outputBits] = {" + str(m_axi_tdata_width_adjustment) + "{1'b0}};\n")
	file.write("\tassign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};\n")
	file.write("\n")



	########## LABFT ##########
	if(hardenedArray):
		file.write("\t//LABFT\n")
		file.write("\tlabft labft(clk, rst, interrupt, loadingWeights, validInputs, validOutputs,\n")
		
		for i in range(0, arraySize):
			file.write("\t\t\t\t\tarray_a_" + str(i) + "_input, array_b_" + str(i) + "_input, array_c_" + str(i) + "_input, array_d_" + str(i) + "_input,\n")
		for i in range(0, arraySize):
			file.write("\t\t\t\t\tarray_e_" + str(i) + "_input,\n")
		for i in range(0, arraySize):
			file.write("\t\t\t\t\tarray_w_" + str(i) + "_output, array_x_" + str(i) + "_output, array_y_" + str(i) + "_output, array_z_" + str(i) + "_output,\n")
		file.write("\t\t\t\t\terror[" + str(parallelismLevel-1) + ":0]);\n")
		file.write("\n")

	file.write("endmodule")

	file.close()
