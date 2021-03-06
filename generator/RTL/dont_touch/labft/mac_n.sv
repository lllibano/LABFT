module mac_n
#(
    parameter aBits = 8+2,
    parameter yBits = 2*(8+2),
    parameter zBits = 2*(8+2)+2,
    parameter signExtension = zBits-yBits
)
(
    input logic clk,
    input logic rst,
    input logic signed [aBits-1:0] a,
    input logic signed [aBits-1:0] b,
    input logic clear,
    output logic [zBits-1:0] z
);

    logic signed [yBits-1:0] mul;
    logic signed [yBits-1:0] mulOut;
    assign mul = a*b;
    dff #(yBits) mul_dff(clk, rst, mul, mulOut);

    logic [zBits-1:0] mul_signExtended;
    assign mul_signExtended = (mulOut[yBits-1]) ? {{signExtension{1'b1}}, mulOut}:{{signExtension{1'b0}}, mulOut};

    logic [zBits-1:0] accIn;
    logic [zBits-1:0] accOut;
    assign accIn = (clear) ? {zBits{1'b0}} : accOut;

    logic [zBits:0] sum;
    assign sum = mul_signExtended + accIn;
    dff #(zBits) acc_dff(clk, rst, sum[zBits-1:0], accOut);
    assign z = accOut;

endmodule
