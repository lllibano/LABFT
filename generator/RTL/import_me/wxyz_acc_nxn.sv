module wxyz_acc_nxn //4x4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = 2,
	parameter aBits = 20,
	parameter zBits = 28
)
(
	input logic clk,
	input logic rst,
	input logic valid,
	input logic [aBits-1:0] w_0,
	input logic [aBits-1:0] x_0,
	input logic [aBits-1:0] y_0,
	input logic [aBits-1:0] z_0,
	input logic [aBits-1:0] w_1,
	input logic [aBits-1:0] x_1,
	input logic [aBits-1:0] y_1,
	input logic [aBits-1:0] z_1,
	input logic [aBits-1:0] w_2,
	input logic [aBits-1:0] x_2,
	input logic [aBits-1:0] y_2,
	input logic [aBits-1:0] z_2,
	input logic [aBits-1:0] w_3,
	input logic [aBits-1:0] x_3,
	input logic [aBits-1:0] y_3,
	input logic [aBits-1:0] z_3,
	output logic [zBits-1:0] w_acc,
	output logic [zBits-1:0] x_acc,
	output logic [zBits-1:0] y_acc,
	output logic [zBits-1:0] z_acc
);

	//control
	//stage 0
	logic [addressWidth-1:0] counter_mux;
	logic [addressWidth-1:0] counter_dff_in;
	logic [addressWidth-1:0] counter_dff_out;
	assign counter_mux = (valid == 1'b1) ? (counter_dff_out + 1'b1):(counter_dff_out);
	assign counter_dff_in = (counter_dff_out == arraySize-1) ? ({addressWidth{1'b0}}):(counter_mux);
	dff #(addressWidth) dff_counter(clk, rst, counter_dff_in, counter_dff_out);
	logic clear_0;
	assign clear_0 = ((valid == 1'b0) || (counter_dff_out == arraySize-1)) ? 1'b1:1'b0;
	//column 0
	logic clear_0_0;
	dff #(1) dff_clear_0_0(clk, rst, clear_0, clear_0_0);
	//column 1
	logic clear_0_1;
	dff #(1) dff_clear_0_1(clk, rst, clear_0_0, clear_0_1);
	//column 2
	logic clear_0_2;
	dff #(1) dff_clear_0_2(clk, rst, clear_0_1, clear_0_2);
	//column 3
	logic clear_0_3;
	dff #(1) dff_clear_0_3(clk, rst, clear_0_2, clear_0_3);
	//stage 1
	logic [addressWidth-1:0] selector;
	assign selector = counter_dff_out;
	logic clear_1;
	dff #(1) dff_clear_1(clk, rst, clear_0_3, clear_1);

	//acc_nxn
	acc_nxn w_acc_nxn(clk, rst,
								clear_0_0, w_0,
								clear_0_1, w_1,
								clear_0_2, w_2,
								clear_0_3, w_3,
								selector, clear_1, w_acc);
	acc_nxn x_acc_nxn(clk, rst,
								clear_0_0, x_0,
								clear_0_1, x_1,
								clear_0_2, x_2,
								clear_0_3, x_3,
								selector, clear_1, x_acc);
	acc_nxn y_acc_nxn(clk, rst,
								clear_0_0, y_0,
								clear_0_1, y_1,
								clear_0_2, y_2,
								clear_0_3, y_3,
								selector, clear_1, y_acc);
	acc_nxn z_acc_nxn(clk, rst,
								clear_0_0, z_0,
								clear_0_1, z_1,
								clear_0_2, z_2,
								clear_0_3, z_3,
								selector, clear_1, z_acc);

endmodule