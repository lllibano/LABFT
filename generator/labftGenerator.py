from settings import *

def generate_LABFT():
	print("\t\tGenerating LABFT...")

	file = open(generatedPath + "labft.sv", "w")

	#parameters & interface
	file.write("module labft //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter outputBits = " + str(outputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\t//CLK, RST\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic interrupt,\n")
	file.write("\t//Control\n")
	file.write("\tinput logic loadingWeights,\n")
	file.write("\tinput logic validInputs,\n")
	file.write("\tinput logic validOutputs,\n")
	file.write("\t//ABCD\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [inputBits-1:0] a_" + str(i) + ",\n")
		file.write("\tinput logic [inputBits-1:0] b_" + str(i) + ",\n")
		file.write("\tinput logic [inputBits-1:0] c_" + str(i) + ",\n")
		file.write("\tinput logic [inputBits-1:0] d_" + str(i) + ",\n")
	file.write("\t//E\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [inputBits-1:0] e_" + str(i) + ",\n")
	file.write("\t//WXYZ\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [outputBits-1:0] w_" + str(i) + ",\n")
		file.write("\tinput logic [outputBits-1:0] x_" + str(i) + ",\n")
		file.write("\tinput logic [outputBits-1:0] y_" + str(i) + ",\n")
		file.write("\tinput logic [outputBits-1:0] z_" + str(i) + ",\n")
	file.write("\t//Error Detection\n")
	file.write("\toutput logic [" + str(parallelismLevel-1) + ":0] error\n")
	file.write(");\n")
	file.write("\n")

	##### ABCD
	file.write("\t//abcd\n")
	for i in range(0, arraySize):
		file.write("\tlogic [inputBits-1:0] a_" + str(i) + "_clean;\n")
		file.write("\tlogic [inputBits-1:0] b_" + str(i) + "_clean;\n")
		file.write("\tlogic [inputBits-1:0] c_" + str(i) + "_clean;\n")
		file.write("\tlogic [inputBits-1:0] d_" + str(i) + "_clean;\n")
	for i in range(0, arraySize):
		file.write("\tassign a_" + str(i) + "_clean = (validInputs) ? a_" + str(i) + ":{inputBits{1'b0}};\n")
		file.write("\tassign b_" + str(i) + "_clean = (validInputs) ? b_" + str(i) + ":{inputBits{1'b0}};\n")
		file.write("\tassign c_" + str(i) + "_clean = (validInputs) ? c_" + str(i) + ":{inputBits{1'b0}};\n")
		file.write("\tassign d_" + str(i) + "_clean = (validInputs) ? d_" + str(i) + ":{inputBits{1'b0}};\n")
	for i in range(0, arraySize):
		file.write("\tlogic [1*inputBits+1*arraySize-1:0] a_" + str(i) + "_acc;\n")
		file.write("\tlogic [1*inputBits+1*arraySize-1:0] b_" + str(i) + "_acc;\n")
		file.write("\tlogic [1*inputBits+1*arraySize-1:0] c_" + str(i) + "_acc;\n")
		file.write("\tlogic [1*inputBits+1*arraySize-1:0] d_" + str(i) + "_acc;\n")
	file.write("\tlogic [addressWidth-1:0] dot_nxn_selector;\n")
	file.write("\tlogic dot_nxn_clear;\n")
	file.write("\tabcd_n_acc_n abcd_n_acc_n(clk, rst, interrupt, validInputs,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\ta_" + str(i) + "_clean, b_" + str(i) + "_clean, c_" + str(i) + "_clean, d_" + str(i) + "_clean, a_" + str(i) + "_acc, b_" + str(i) + "_acc, c_" + str(i) + "_acc, d_" + str(i) + "_acc,\n")
	file.write("\t\t\t\t\t\t\t\tdot_nxn_selector, dot_nxn_clear);\n")
	##### E
	file.write("\t//e\n")
	for i in range(0, arraySize):
		file.write("\tlogic [1*inputBits+1*arraySize-1:0] e_" + str(i) + "_acc;\n")
	file.write("\te_n_acc_n e_n_acc_n(clk, rst, interrupt, loadingWeights, validInputs,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\te_" + str(i) + ", e_" + str(i) + "_acc,\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
	##### DOT
	file.write("\t//dot\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] ae_dot;\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] be_dot;\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] ce_dot;\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] de_dot;\n")
	file.write("\tlogic valid_dot;\n")
	file.write("\tabcde_dot_nxn abcde_dot_nxn(clk, rst, dot_nxn_selector, dot_nxn_clear, valid_dot,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\t\ta_" + str(i) + "_acc, b_" + str(i) + "_acc, c_" + str(i) + "_acc, d_" + str(i) + "_acc, e_" + str(i) + "_acc,\n")
	file.write("\t\t\t\t\t\t\t\t\tae_dot, be_dot, ce_dot, de_dot);\n")
	##### WXYZ
	file.write("\t//wxyz\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] w_acc;\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] x_acc;\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] y_acc;\n")
	file.write("\tlogic [2*inputBits+3*arraySize-1:0] z_acc;\n")
	file.write("\tlogic valid_acc;\n")
	file.write("\twxyz_acc_nxn wxyz_acc_nxn(clk, rst, interrupt, validOutputs, valid_acc,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\tw_" + str(i) + ", x_" + str(i) + ", y_" + str(i) + ", z_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\t\tw_acc, x_acc, y_acc, z_acc);\n")
	file.write("\n")
	##### DETECTOR
	file.write("\t//labft_error_detector\n")
	file.write("\tlabft_error_detector #(arraySize) labft_error_detector(clk, rst, interrupt, valid_dot, valid_acc,\n")
	file.write("\t\t\t\t\t\t\t\t\tae_dot, be_dot, ce_dot, de_dot,\n")
	file.write("\t\t\t\t\t\t\t\t\tw_acc, x_acc, y_acc, z_acc,\n")
	file.write("\t\t\t\t\t\t\t\t\terror);\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_ABCD_N_Acc_N():
	print("\t\t\tGenerating ABCD_N_Acc_N...")

	file = open(generatedPath + "abcd_n_acc_n.sv", "w")

	#parameters & interface
	file.write("module abcd_n_acc_n //" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	file.write("\tparameter aBits = " + str(1*inputBits) + ",\n")
	file.write("\tparameter zBits = " + str(1*inputBits+1*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic interrupt,\n")
	file.write("\tinput logic valid,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [aBits-1:0] a_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] b_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] c_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] d_" + str(i) + ",\n")
		file.write("\toutput logic [zBits-1:0] a_acc_"+ str(i) + ",\n")
		file.write("\toutput logic [zBits-1:0] b_acc_"+ str(i) + ",\n")
		file.write("\toutput logic [zBits-1:0] c_acc_"+ str(i) + ",\n")
		file.write("\toutput logic [zBits-1:0] d_acc_"+ str(i) + ",\n")
	file.write("\toutput logic [addressWidth-1:0] selector_out,\n")
	file.write("\toutput logic clear_out\n")
	file.write(");\n")
	file.write("\n")

	file.write("\t//control\n")
	file.write("\tlogic [addressWidth-1:0] counter_mux;\n")
	file.write("\tlogic [addressWidth-1:0] counter_dff_in;\n")
	file.write("\tlogic [addressWidth-1:0] counter_dff_out;\n")
	file.write("\tassign counter_mux = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);\n")
	file.write("\tassign counter_dff_in = ((counter_dff_out == arraySize-1) || (interrupt)) ? ({addressWidth{1'b0}}):(counter_mux);\n")
	file.write("\tdff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);\n")
	file.write("\tlogic clear;\n")
	file.write("\tassign clear = ((counter_dff_out == arraySize-1) || (interrupt)) ? 1'b1:1'b0;\n")
	for i in range(0, arraySize):
		file.write("\t//column" + str(i) + "\n")
		file.write("\tlogic clear_" + str(i) + ";\n")
		if(i == 0):
			file.write("\tdff #(1) dff_clear_" + str(i) + "(clk, rst, clear, clear_" + str(i) + ");\n")
		else:
			file.write("\tdff #(1) dff_clear_" + str(i) + "(clk, rst, clear_" + str(i-1) + ", clear_" + str(i) + ");\n")
	file.write("\t//out\n")
	file.write("\tassign selector_out = counter_dff_out;\n")
	file.write("\tassign clear_out = clear_" + str(arraySize-1) + ";\n")
	file.write("\n")

	file.write("\t//n_acc_n\n")
	file.write("\tn_acc_n a_n_acc_n(clk, rst, ")
	for i in range(0, arraySize):
		file.write("clear_" + str(i) + ", a_" + str(i) + ", a_acc_" + str(i) + ", ")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
	file.write("\tn_acc_n b_n_acc_n(clk, rst, ")
	for i in range(0, arraySize):
		file.write("clear_" + str(i) + ", b_" + str(i) + ", b_acc_" + str(i) + ", ")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
	file.write("\tn_acc_n c_n_acc_n(clk, rst, ")
	for i in range(0, arraySize):
		file.write("clear_" + str(i) + ", c_" + str(i) + ", c_acc_" + str(i) + ", ")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
	file.write("\tn_acc_n d_n_acc_n(clk, rst, ")
	for i in range(0, arraySize):
		file.write("clear_" + str(i) + ", d_" + str(i) + ", d_acc_" + str(i) + ", ")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_E_N_Acc_N():
	print("\t\t\tGenerating E_N_Acc_N...")

	file = open(generatedPath + "e_n_acc_n.sv", "w")

	#parameters & interface
	file.write("module e_n_acc_n //" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize+1)))) + ",\n")
	file.write("\tparameter aBits = " + str(1*inputBits) + ",\n")
	file.write("\tparameter zBits = " + str(1*inputBits+1*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic interrupt,\n")
	file.write("\tinput logic loading,\n")
	file.write("\tinput logic valid,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [aBits-1:0] e_" + str(i) + ",\n")
		file.write("\toutput logic [zBits-1:0] e_acc_"+ str(i) + ",\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write("\n")
	file.write(");\n")
	file.write("\n")

	file.write("\t//e_move_nxn\n")
	for i in range(0, arraySize):
		file.write("\tlogic [aBits-1:0] e_" + str(i) + "_side;\n")
	file.write("\te_move_nxn e_move_nxn(clk, rst, loading, ")
	for i in range(0, arraySize):
		file.write("e_" + str(i) + ", ")
	for i in range(0, arraySize):
		file.write("e_" + str(i) + "_side, ")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
	file.write("\n")

	file.write("\t//control\n")
	file.write("\tlogic [addressWidth-1:0] counter_mux_0;\n")
	file.write("\tlogic [addressWidth-1:0] counter_mux_1;\n")
	file.write("\tlogic [addressWidth-1:0] counter_dff_in;\n")
	file.write("\tlogic [addressWidth-1:0] counter_dff_out;\n")
	file.write("\tassign counter_mux_0 = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);\n")
	file.write("\tassign counter_mux_1 = (counter_dff_out <= arraySize-1) ? (counter_mux_0):(counter_dff_out);\n")
	file.write("\tassign counter_dff_in = (interrupt) ? ({addressWidth{1'b0}}):(counter_mux_1);\n")
	file.write("\tdff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);\n")
	file.write("\tlogic enable;\n")
	file.write("\tassign enable = ((valid == 1'b1) && (counter_dff_out <= arraySize-1)) ? 1'b1:1'b0;\n")
	#column N
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tlogic [aBits-1:0] acc_n_" + str(i) + "_in;\n")
		file.write("\tassign acc_n_" + str(i) + "_in = (enable) ? (e_" + str(i) + "_side):({aBits{1'b0}});\n")
		file.write("\tlogic [zBits-1:0] acc_n_" + str(i) + "_out;\n")
		file.write("\tacc_n #(aBits, zBits) acc_n_" + str(i) + "(clk, rst, acc_n_" + str(i) + "_in, interrupt, e_acc_" + str(i) + ");\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_N_Acc_N():
	print("\t\t\t\tGenerating N_Acc_N...")

	file = open(generatedPath + "n_acc_n.sv", "w")

	#parameters & interface
	file.write("module n_acc_n //" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	file.write("\tparameter aBits = " + str(1*inputBits) + ",\n")
	file.write("\tparameter zBits = " + str(1*inputBits+1*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic clear_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] a_" + str(i) + ",\n")
		file.write("\toutput logic [zBits-1:0] z_"+ str(i) + ",\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write("\n")
	file.write(");\n")
	file.write("\n")

	#column N
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tlogic [zBits-1:0] acc_n_" + str(i) + "_out;\n")
		file.write("\tacc_n #(aBits, zBits) acc_n_" + str(i) + "(clk, rst, a_" + str(i) + ", clear_" + str(i) + ", z_" + str(i) + ");\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_ABCDE_Dot_NxN():
	print("\t\t\tGenerating ABCDE_Dot_NxN...")

	file = open(generatedPath + "abcde_dot_nxn.sv", "w")

	#parameters & interface
	file.write("module abcde_dot_nxn //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	file.write("\tparameter aBits = " + str(1*inputBits+1*arraySize) + ",\n")
	file.write("\tparameter zBits = " + str(2*(1*inputBits+1*arraySize)+1*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic [addressWidth-1:0] selector,\n")
	file.write("\tinput logic clear,\n")
	file.write("\toutput logic valid_out,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [aBits-1:0] a_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] b_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] c_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] d_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] e_" + str(i) + ",\n")
	file.write("\toutput logic [zBits-1:0] ae_dot,\n")
	file.write("\toutput logic [zBits-1:0] be_dot,\n")
	file.write("\toutput logic [zBits-1:0] ce_dot,\n")
	file.write("\toutput logic [zBits-1:0] de_dot\n")
	file.write(");\n")
	file.write("\n")

	file.write("\tlogic clear_0;\n")
	file.write("\tdff #(1) dff_clear_0(clk, rst, clear, clear_0);\n")
	file.write("\tlogic clear_1;\n")
	file.write("\tdff #(1) dff_clear_1(clk, rst, clear_0, clear_1);\n")
	file.write("\n")

	file.write("\tdot_nxn ae_dot_nxn(clk, rst, selector, clear_1,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\ta_" + str(i) + ", e_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\tae_dot);\n")
	file.write("\tdot_nxn be_dot_nxn(clk, rst, selector, clear_1,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\tb_" + str(i) + ", e_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\tbe_dot);\n")
	file.write("\tdot_nxn ce_dot_nxn(clk, rst, selector, clear_1,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\tc_" + str(i) + ", e_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\tce_dot);\n")
	file.write("\tdot_nxn de_dot_nxn(clk, rst, selector, clear_1,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\td_" + str(i) + ", e_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\tde_dot);\n")
	file.write("\n")

	file.write("\tlogic valid_out_0;\n")
	file.write("\tdff #(1) dff_valid_out_0(clk, rst, (selector == arraySize-1), valid_out_0);\n")
	file.write("\tdff #(1) dff_valid_out(clk, rst, valid_out_0, valid_out);\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_Dot_NxN():
	print("\t\t\t\tGenerating Dot_NxN...")

	file = open(generatedPath + "dot_nxn.sv", "w")

	#parameters & interface
	file.write("module dot_nxn //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	file.write("\tparameter aBits = " + str(1*inputBits+1*arraySize) + ",\n")
	file.write("\tparameter yBits = " + str(2*(1*inputBits+1*arraySize)) + ",\n")
	file.write("\tparameter zBits = " + str(2*(1*inputBits+1*arraySize)+1*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic [addressWidth-1:0] selector,\n")
	file.write("\tinput logic clear,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [aBits-1:0] a_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] b_" + str(i) + ",\n")
	file.write("\toutput logic [zBits-1:0] z\n")
	file.write(");\n")
	file.write("\n")

	file.write("\tlogic [aBits-1:0] mac_n_1_in_0;\n")
	file.write("\talways_comb begin\n")
	file.write("\t\tcase(selector)\n")
	for i in range(0, arraySize):
		file.write("\t\t\t" + str(int(m.ceil(m.log2(arraySize)))) + "'d" + str(i) + ": mac_n_1_in_0 <= a_" + str(i) + ";\n")
	file.write("\t\tendcase\n")
	file.write("\tend\n")
	file.write("\tlogic [aBits-1:0] mac_n_1_in_1;\n")
	file.write("\talways_comb begin\n")
	file.write("\t\tcase(selector)\n")
	for i in range(0, arraySize):
		file.write("\t\t\t" + str(int(m.ceil(m.log2(arraySize)))) + "'d" + str(i) + ": mac_n_1_in_1 <= b_" + str(i) + ";\n")
	file.write("\t\tendcase\n")
	file.write("\tend\n")
	file.write("\tmac_n #(aBits, yBits, zBits) mac_n_1(clk, rst, mac_n_1_in_0, mac_n_1_in_1, clear, z);\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_WXYZ_Acc_NxN():
	print("\t\t\tGenerating WXYZ_Acc_NxN...")

	file = open(generatedPath + "wxyz_acc_nxn.sv", "w")

	#parameters & interface
	file.write("module wxyz_acc_nxn //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	file.write("\tparameter aBits = " + str(2*inputBits+1*arraySize) + ",\n")
	file.write("\tparameter zBits = " + str(2*inputBits+3*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic interrupt,\n")
	file.write("\tinput logic valid,\n")
	file.write("\toutput logic valid_out,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [aBits-1:0] w_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] x_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] y_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] z_" + str(i) + ",\n")
	file.write("\toutput logic [zBits-1:0] w_acc,\n")
	file.write("\toutput logic [zBits-1:0] x_acc,\n")
	file.write("\toutput logic [zBits-1:0] y_acc,\n")
	file.write("\toutput logic [zBits-1:0] z_acc\n")
	file.write(");\n")
	file.write("\n")

	file.write("\t//control\n")
	file.write("\t//stage 0\n")
	file.write("\tlogic [addressWidth-1:0] counter_mux;\n")
	file.write("\tlogic [addressWidth-1:0] counter_dff_in;\n")
	file.write("\tlogic [addressWidth-1:0] counter_dff_out;\n")
	file.write("\tassign counter_mux = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);\n")
	file.write("\tassign counter_dff_in = ((counter_dff_out == arraySize-1) || (interrupt)) ? ({addressWidth{1'b0}}):(counter_mux);\n")
	file.write("\tdff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);\n")
	file.write("\tlogic clear_0;\n")
	file.write("\tassign clear_0 = ((valid == 1'b0) || (counter_dff_out == arraySize-1)) ? 1'b1:1'b0;\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tlogic clear_0_" + str(i) + ";\n")
		if(i == 0):
			file.write("\tdff #(1) dff_clear_0_" + str(i) + "(clk, rst, clear_0, clear_0_" + str(i) + ");\n")
		else:
			file.write("\tdff #(1) dff_clear_0_" + str(i) + "(clk, rst, clear_0_" + str(i-1) + ", clear_0_" + str(i) + ");\n")
	file.write("\t//stage 1\n")
	file.write("\tlogic [addressWidth-1:0] selector;\n")
	file.write("\tassign selector = counter_dff_out;\n")
	file.write("\tlogic clear_1;\n")
	file.write("\tdff #(1) dff_clear_1(clk, rst, clear_0_" + str(arraySize-1) + ", clear_1);\n")
	file.write("\n")

	file.write("\t//acc_nxn\n")
	file.write("\tacc_nxn w_acc_nxn(clk, rst,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\tclear_0_" + str(i) + ", w_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\t\tselector, clear_1, w_acc);\n")
	file.write("\tacc_nxn x_acc_nxn(clk, rst,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\tclear_0_" + str(i) + ", x_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\t\tselector, clear_1, x_acc);\n")
	file.write("\tacc_nxn y_acc_nxn(clk, rst,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\tclear_0_" + str(i) + ", y_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\t\tselector, clear_1, y_acc);\n")
	file.write("\tacc_nxn z_acc_nxn(clk, rst,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\tclear_0_" + str(i) + ", z_" + str(i) + ",\n")
	file.write("\t\t\t\t\t\t\t\tselector, clear_1, z_acc);\n")
	file.write("\n")

	file.write("\tdff #(1) dff_valid_out(clk, rst, (selector == arraySize-1), valid_out);\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generate_Acc_NxN():
	print("\t\t\t\tGenerating Acc_NxN...")

	file = open(generatedPath + "acc_nxn.sv", "w")

	#parameters & interface
	file.write("module acc_nxn //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter addressWidth = " + str(int(m.ceil(m.log2(arraySize)))) + ",\n")
	file.write("\tparameter aBits = " + str(2*inputBits+1*arraySize) + ",\n")
	file.write("\tparameter yBits = " + str(2*inputBits+2*arraySize) + ",\n")
	file.write("\tparameter zBits = " + str(2*inputBits+3*arraySize) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic clear_0_" + str(i) + ",\n")
		file.write("\tinput logic [aBits-1:0] a_" + str(i) + ",\n")
	file.write("\tinput logic [addressWidth-1:0] selector,\n")
	file.write("\tinput logic clear_1,\n")
	file.write("\toutput logic [zBits-1:0] z\n")
	file.write(");\n")
	file.write("\n")

	#stage 0
	file.write("\t//stage 0\n")
	for i in range(0, arraySize):
		file.write("\t//column" + str(i) + "\n")
		file.write("\tlogic [yBits-1:0] acc_n_0_" + str(i) + "_out;\n")
		file.write("\tacc_n #(aBits, yBits) acc_n_0_" + str(i) + "(clk, rst, a_" + str(i) + ", clear_0_" + str(i) + ", acc_n_0_" + str(i) + "_out);\n")
	file.write("\n")
	#stage 1
	file.write("\t//stage 1\n")
	file.write("\tlogic [yBits-1:0] acc_n_1_in;\n")
	file.write("\talways_comb begin\n")
	file.write("\t\tcase(selector)\n")
	for i in range(0, arraySize):
		file.write("\t\t\t" + str(int(m.ceil(m.log2(arraySize)))) + "'d" + str(i) + ": acc_n_1_in <= acc_n_0_" + str(i) + "_out;\n")
	file.write("\t\tendcase\n")
	file.write("\tend\n")
	file.write("\tacc_n #(yBits, zBits) acc_n_1(clk, rst, acc_n_1_in, clear_1, z);\n")
	file.write("\n")

	file.write("endmodule")

	file.close()

def generateLABFT():
	print("\t### LABFT...")
	generate_LABFT()
	generate_ABCD_N_Acc_N() #ABCD
	generate_E_N_Acc_N() #E
	generate_N_Acc_N()
	generate_ABCDE_Dot_NxN() #Dot
	generate_Dot_NxN()
	generate_WXYZ_Acc_NxN() #WXYZ
	generate_Acc_NxN()
