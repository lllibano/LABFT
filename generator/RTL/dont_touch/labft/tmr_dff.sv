module tmr_dff
#(
	parameter bits = 1
)
(
	input logic clk,
	input logic rst,
	input logic [bits-1:0] d,
	output logic [bits-1:0] q
);

	logic [bits-1:0] q_0;
	(* dont_touch = "true" *) dff #(bits) dff_0(clk, rst, d, q_0);
	logic [bits-1:0] q_1;
	(* dont_touch = "true" *) dff #(bits) dff_1(clk, rst, d, q_1);
	logic [bits-1:0] q_2;
	(* dont_touch = "true" *) dff #(bits) dff_2(clk, rst, d, q_2);

	tmr_voter #(bits) q_voter(q_0, q_1, q_2, q);

endmodule