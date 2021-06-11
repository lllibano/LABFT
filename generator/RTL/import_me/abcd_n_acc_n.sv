module abcd_n_acc_n //4
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
	input logic interrupt,
	input logic valid,
	input logic [aBits-1:0] a_0,
	input logic [aBits-1:0] b_0,
	input logic [aBits-1:0] c_0,
	input logic [aBits-1:0] d_0,
	output logic [zBits-1:0] a_acc_0,
	output logic [zBits-1:0] b_acc_0,
	output logic [zBits-1:0] c_acc_0,
	output logic [zBits-1:0] d_acc_0,
	input logic [aBits-1:0] a_1,
	input logic [aBits-1:0] b_1,
	input logic [aBits-1:0] c_1,
	input logic [aBits-1:0] d_1,
	output logic [zBits-1:0] a_acc_1,
	output logic [zBits-1:0] b_acc_1,
	output logic [zBits-1:0] c_acc_1,
	output logic [zBits-1:0] d_acc_1,
	input logic [aBits-1:0] a_2,
	input logic [aBits-1:0] b_2,
	input logic [aBits-1:0] c_2,
	input logic [aBits-1:0] d_2,
	output logic [zBits-1:0] a_acc_2,
	output logic [zBits-1:0] b_acc_2,
	output logic [zBits-1:0] c_acc_2,
	output logic [zBits-1:0] d_acc_2,
	input logic [aBits-1:0] a_3,
	input logic [aBits-1:0] b_3,
	input logic [aBits-1:0] c_3,
	input logic [aBits-1:0] d_3,
	output logic [zBits-1:0] a_acc_3,
	output logic [zBits-1:0] b_acc_3,
	output logic [zBits-1:0] c_acc_3,
	output logic [zBits-1:0] d_acc_3,
	output logic [addressWidth-1:0] selector_out,
	output logic clear_out
);

	//control
	logic [addressWidth-1:0] counter_mux;
	logic [addressWidth-1:0] counter_dff_in;
	logic [addressWidth-1:0] counter_dff_out;
	assign counter_mux = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);
	assign counter_dff_in = ((counter_dff_out == arraySize-1) || (interrupt)) ? ({addressWidth{1'b0}}):(counter_mux);
	dff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);
	logic clear;
	assign clear = ((counter_dff_out == arraySize-1) || (interrupt)) ? 1'b1:1'b0;
	//column0
	logic clear_0;
	dff #(1) dff_clear_0(clk, rst, clear, clear_0);
	//column1
	logic clear_1;
	dff #(1) dff_clear_1(clk, rst, clear_0, clear_1);
	//column2
	logic clear_2;
	dff #(1) dff_clear_2(clk, rst, clear_1, clear_2);
	//column3
	logic clear_3;
	dff #(1) dff_clear_3(clk, rst, clear_2, clear_3);
	//out
	assign selector_out = counter_dff_out;
	assign clear_out = clear_3;

	//n_acc_n
	n_acc_n a_n_acc_n(clk, rst, clear_0, a_0, a_acc_0, clear_1, a_1, a_acc_1, clear_2, a_2, a_acc_2, clear_3, a_3, a_acc_3);
	n_acc_n b_n_acc_n(clk, rst, clear_0, b_0, b_acc_0, clear_1, b_1, b_acc_1, clear_2, b_2, b_acc_2, clear_3, b_3, b_acc_3);
	n_acc_n c_n_acc_n(clk, rst, clear_0, c_0, c_acc_0, clear_1, c_1, c_acc_1, clear_2, c_2, c_acc_2, clear_3, c_3, c_acc_3);
	n_acc_n d_n_acc_n(clk, rst, clear_0, d_0, d_acc_0, clear_1, d_1, d_acc_1, clear_2, d_2, d_acc_2, clear_3, d_3, d_acc_3);

endmodule