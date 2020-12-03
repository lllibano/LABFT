module abcde_dot_nxn //4x4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = 2,
	parameter aBits = 12,
	parameter zBits = 28
)
(
	input logic clk,
	input logic rst,
	input logic [addressWidth-1:0] selector,
	input logic clear,
	input logic [aBits-1:0] a_0,
	input logic [aBits-1:0] b_0,
	input logic [aBits-1:0] c_0,
	input logic [aBits-1:0] d_0,
	input logic [aBits-1:0] e_0,
	input logic [aBits-1:0] a_1,
	input logic [aBits-1:0] b_1,
	input logic [aBits-1:0] c_1,
	input logic [aBits-1:0] d_1,
	input logic [aBits-1:0] e_1,
	input logic [aBits-1:0] a_2,
	input logic [aBits-1:0] b_2,
	input logic [aBits-1:0] c_2,
	input logic [aBits-1:0] d_2,
	input logic [aBits-1:0] e_2,
	input logic [aBits-1:0] a_3,
	input logic [aBits-1:0] b_3,
	input logic [aBits-1:0] c_3,
	input logic [aBits-1:0] d_3,
	input logic [aBits-1:0] e_3,
	output logic [zBits-1:0] ae_dot,
	output logic [zBits-1:0] be_dot,
	output logic [zBits-1:0] ce_dot,
	output logic [zBits-1:0] de_dot
);

	logic clear_0;
	dff #(1) dff_clear_0(clk, rst, clear, clear_0);
	logic clear_1;
	dff #(1) dff_clear_1(clk, rst, clear_0, clear_1);

	dot_nxn ae_dot_nxn(clk, rst, selector, clear_1,
							a_0, e_0,
							a_1, e_1,
							a_2, e_2,
							a_3, e_3,
							ae_dot);
	dot_nxn be_dot_nxn(clk, rst, selector, clear_1,
							b_0, e_0,
							b_1, e_1,
							b_2, e_2,
							b_3, e_3,
							be_dot);
	dot_nxn ce_dot_nxn(clk, rst, selector, clear_1,
							c_0, e_0,
							c_1, e_1,
							c_2, e_2,
							c_3, e_3,
							ce_dot);
	dot_nxn de_dot_nxn(clk, rst, selector, clear_1,
							d_0, e_0,
							d_1, e_1,
							d_2, e_2,
							d_3, e_3,
							de_dot);

endmodule