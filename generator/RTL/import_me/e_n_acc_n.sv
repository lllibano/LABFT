module e_n_acc_n //4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = 3,
	parameter aBits = 8,
	parameter zBits = 12
)
(
	input logic clk,
	input logic rst,
	input logic valid,
	input logic [aBits-1:0] a_0,
	output logic [zBits-1:0] z_0,
	input logic [aBits-1:0] a_1,
	output logic [zBits-1:0] z_1,
	input logic [aBits-1:0] a_2,
	output logic [zBits-1:0] z_2,
	input logic [aBits-1:0] a_3,
	output logic [zBits-1:0] z_3
);

	//control
	logic [addressWidth-1:0] counter_mux;
	logic [addressWidth-1:0] counter_dff_in;
	logic [addressWidth-1:0] counter_dff_out;
	assign counter_mux = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);
	assign counter_dff_in = (counter_dff_out == arraySize) ? (counter_dff_out):(counter_mux);
	dff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);
	logic enable;
	assign enable = ((valid == 1'b1) && (counter_dff_out <= arraySize-1)) ? 1'b1:1'b0;
	//column 0
	logic [aBits-1:0] acc_n_0_in;
	assign acc_n_0_in = (enable) ? (a_0):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_0_out;
	acc_n #(aBits, zBits) acc_n_0(clk, rst, acc_n_0_in, 1'b0, z_0);
	//column 1
	logic [aBits-1:0] acc_n_1_in;
	assign acc_n_1_in = (enable) ? (a_1):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_1_out;
	acc_n #(aBits, zBits) acc_n_1(clk, rst, acc_n_1_in, 1'b0, z_1);
	//column 2
	logic [aBits-1:0] acc_n_2_in;
	assign acc_n_2_in = (enable) ? (a_2):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_2_out;
	acc_n #(aBits, zBits) acc_n_2(clk, rst, acc_n_2_in, 1'b0, z_2);
	//column 3
	logic [aBits-1:0] acc_n_3_in;
	assign acc_n_3_in = (enable) ? (a_3):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_3_out;
	acc_n #(aBits, zBits) acc_n_3(clk, rst, acc_n_3_in, 1'b0, z_3);

endmodule