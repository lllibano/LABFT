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
	input logic interrupt,
	input logic loading,
	input logic valid,
	input logic [aBits-1:0] e_0,
	output logic [zBits-1:0] e_acc_0,
	input logic [aBits-1:0] e_1,
	output logic [zBits-1:0] e_acc_1,
	input logic [aBits-1:0] e_2,
	output logic [zBits-1:0] e_acc_2,
	input logic [aBits-1:0] e_3,
	output logic [zBits-1:0] e_acc_3
);

	//e_move_nxn
	logic [aBits-1:0] e_0_side;
	logic [aBits-1:0] e_1_side;
	logic [aBits-1:0] e_2_side;
	logic [aBits-1:0] e_3_side;
	e_move_nxn e_move_nxn(clk, rst, loading, e_0, e_1, e_2, e_3, e_0_side, e_1_side, e_2_side, e_3_side);

	//control
	logic [addressWidth-1:0] counter_mux_0;
	logic [addressWidth-1:0] counter_mux_1;
	logic [addressWidth-1:0] counter_dff_in;
	logic [addressWidth-1:0] counter_dff_out;
	assign counter_mux_0 = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);
	assign counter_mux_1 = (counter_dff_out <= arraySize-1) ? (counter_mux_0):(counter_dff_out);
	assign counter_dff_in = (interrupt) ? ({addressWidth{1'b0}}):(counter_mux_1);
	dff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);
	logic enable;
	assign enable = ((valid == 1'b1) && (counter_dff_out <= arraySize-1)) ? 1'b1:1'b0;
	//column 0
	logic [aBits-1:0] acc_n_0_in;
	assign acc_n_0_in = (enable) ? (e_0_side):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_0_out;
	acc_n #(aBits, zBits) acc_n_0(clk, rst, acc_n_0_in, interrupt, e_acc_0);
	//column 1
	logic [aBits-1:0] acc_n_1_in;
	assign acc_n_1_in = (enable) ? (e_1_side):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_1_out;
	acc_n #(aBits, zBits) acc_n_1(clk, rst, acc_n_1_in, interrupt, e_acc_1);
	//column 2
	logic [aBits-1:0] acc_n_2_in;
	assign acc_n_2_in = (enable) ? (e_2_side):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_2_out;
	acc_n #(aBits, zBits) acc_n_2(clk, rst, acc_n_2_in, interrupt, e_acc_2);
	//column 3
	logic [aBits-1:0] acc_n_3_in;
	assign acc_n_3_in = (enable) ? (e_3_side):({aBits{1'b0}});
	logic [zBits-1:0] acc_n_3_out;
	acc_n #(aBits, zBits) acc_n_3(clk, rst, acc_n_3_in, interrupt, e_acc_3);

endmodule