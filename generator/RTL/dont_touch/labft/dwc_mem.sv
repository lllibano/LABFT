module dwc_mem
#(
	parameter bits = 8,
	parameter words = (2*2),
	parameter address = $clog2(words) //ceil(log2(words))
)
(
	input logic clk,
	input logic w_enbl,
	input logic [address-1:0] w_addr,
	input logic [bits-1:0] w_data,
	input logic [address-1:0] r_addr,
	output logic [bits-1:0] r_data,
	output logic error
);

	logic [bits-1:0] r_data_0;
	(* dont_touch = "true" *) mem #(bits, words) mem_0(clk, w_enbl, w_addr, w_data, r_addr, r_data_0);
	logic [bits-1:0] r_data_1;
	(* dont_touch = "true" *) mem #(bits, words) mem_1(clk, w_enbl, w_addr, w_data, r_addr, r_data_1);
	assign r_data = r_data_0;
	assign error = (r_data_0 == r_data_1) ? 1'b0:1'b1;

endmodule
