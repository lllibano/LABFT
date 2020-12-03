module acc_nxn //4x4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = 2,
	parameter aBits = 20,
	parameter yBits = 24,
	parameter zBits = 28
)
(
	input logic clk,
	input logic rst,
	input logic clear_0_0,
	input logic [aBits-1:0] a_0,
	input logic clear_0_1,
	input logic [aBits-1:0] a_1,
	input logic clear_0_2,
	input logic [aBits-1:0] a_2,
	input logic clear_0_3,
	input logic [aBits-1:0] a_3,
	input logic [addressWidth-1:0] selector,
	input logic clear_1,
	output logic [zBits-1:0] z
);

	//stage 0
	//column0
	logic [yBits-1:0] acc_n_0_0_out;
	acc_n #(aBits, yBits) acc_n_0_0(clk, rst, a_0, clear_0_0, acc_n_0_0_out);
	//column1
	logic [yBits-1:0] acc_n_0_1_out;
	acc_n #(aBits, yBits) acc_n_0_1(clk, rst, a_1, clear_0_1, acc_n_0_1_out);
	//column2
	logic [yBits-1:0] acc_n_0_2_out;
	acc_n #(aBits, yBits) acc_n_0_2(clk, rst, a_2, clear_0_2, acc_n_0_2_out);
	//column3
	logic [yBits-1:0] acc_n_0_3_out;
	acc_n #(aBits, yBits) acc_n_0_3(clk, rst, a_3, clear_0_3, acc_n_0_3_out);

	//stage 1
	logic [yBits-1:0] acc_n_1_in;
	always_comb begin
		case(selector)
			2'd0: acc_n_1_in <= acc_n_0_0_out;
			2'd1: acc_n_1_in <= acc_n_0_1_out;
			2'd2: acc_n_1_in <= acc_n_0_2_out;
			2'd3: acc_n_1_in <= acc_n_0_3_out;
		endcase
	end
	acc_n #(yBits, zBits) acc_n_1(clk, rst, acc_n_1_in, clear_1, z);

endmodule