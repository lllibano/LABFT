module tmr_voter
#(
	parameter bits = 1
)
(
	input logic [bits-1:0] a,
	input logic [bits-1:0] b,
	input logic [bits-1:0] c,
	output logic [bits-1:0] z
);

	genvar i;
	generate
		for(i=0; i<bits; i++) begin: slice
			maj3 maj3(a[i], b[i], c[i], z[i]);
		end
	endgenerate

endmodule