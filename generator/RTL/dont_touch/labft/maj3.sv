//a,b,c|z
//0,0,0|0
//0,0,1|0
//0,1,0|0
//0,1,1|1
//1,0,0|0
//1,0,1|1
//1,1,0|1
//1,1,1|1

module maj3
(
	input logic a,
	input logic b,
	input logic c,
	output logic z
);

	LUT3 #(8'b11101000) LUT3(.O(z), .I0(a), .I1(b), .I2(c));

endmodule