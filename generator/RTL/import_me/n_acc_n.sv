module n_acc_n //4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = 2,
	parameter aBits = 8,
	parameter zBits = 12
)
(
	input logic clk,
	input logic rst,
	input logic clear_0,
	input logic [aBits-1:0] a_0,
	output logic [zBits-1:0] z_0,
	input logic clear_1,
	input logic [aBits-1:0] a_1,
	output logic [zBits-1:0] z_1,
	input logic clear_2,
	input logic [aBits-1:0] a_2,
	output logic [zBits-1:0] z_2,
	input logic clear_3,
	input logic [aBits-1:0] a_3,
	output logic [zBits-1:0] z_3
);

	//column 0
	logic [zBits-1:0] acc_n_0_out;
	acc_n #(aBits, zBits) acc_n_0(clk, rst, a_0, clear_0, z_0);
	//column 1
	logic [zBits-1:0] acc_n_1_out;
	acc_n #(aBits, zBits) acc_n_1(clk, rst, a_1, clear_1, z_1);
	//column 2
	logic [zBits-1:0] acc_n_2_out;
	acc_n #(aBits, zBits) acc_n_2(clk, rst, a_2, clear_2, z_2);
	//column 3
	logic [zBits-1:0] acc_n_3_out;
	acc_n #(aBits, zBits) acc_n_3(clk, rst, a_3, clear_3, z_3);

endmodule