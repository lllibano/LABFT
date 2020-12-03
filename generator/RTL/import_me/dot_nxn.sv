module dot_nxn //4x4
#(
	parameter arraySize = 4,
	parameter inputBits = 8,
	parameter addressWidth = 2,
	parameter aBits = 12,
	parameter yBits = 24,
	parameter zBits = 28
)
(
	input logic clk,
	input logic rst,
	input logic [addressWidth-1:0] selector,
	input logic clear,
	input logic [aBits-1:0] a_0,
	input logic [aBits-1:0] b_0,
	input logic [aBits-1:0] a_1,
	input logic [aBits-1:0] b_1,
	input logic [aBits-1:0] a_2,
	input logic [aBits-1:0] b_2,
	input logic [aBits-1:0] a_3,
	input logic [aBits-1:0] b_3,
	output logic [zBits-1:0] z
);

	logic [aBits-1:0] mac_n_1_in_0;
	always_comb begin
		case(selector)
			2'd0: mac_n_1_in_0 <= a_0;
			2'd1: mac_n_1_in_0 <= a_1;
			2'd2: mac_n_1_in_0 <= a_2;
			2'd3: mac_n_1_in_0 <= a_3;
		endcase
	end
	logic [aBits-1:0] mac_n_1_in_1;
	always_comb begin
		case(selector)
			2'd0: mac_n_1_in_1 <= b_0;
			2'd1: mac_n_1_in_1 <= b_1;
			2'd2: mac_n_1_in_1 <= b_2;
			2'd3: mac_n_1_in_1 <= b_3;
		endcase
	end
	mac_n #(aBits, yBits, zBits) mac_n_1(clk, rst, mac_n_1_in_0, mac_n_1_in_1, clear, z);

endmodule