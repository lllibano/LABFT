module acc_n
#(
    parameter aBits = 16+2,
    parameter zBits = 16+2+2,
    parameter signExtension = zBits-aBits
)
(
    input logic clk,
    input logic rst,
    input logic [aBits-1:0] a,
    input logic clear,
    output logic [zBits-1:0] z
);

    logic [zBits-1:0] a_signExtended;
    assign a_signExtended = (a[aBits-1]) ? {{signExtension{1'b1}}, a}:{{signExtension{1'b0}}, a};

    logic [zBits-1:0] accIn;
    logic [zBits-1:0] accOut;
    assign accIn = (clear) ? {zBits{1'b0}} : accOut;

    logic [zBits:0] sum;
    assign sum = a_signExtended + accIn;

    dff #(zBits) dff(clk, rst, sum[zBits-1:0], accOut);
    assign z = accOut;

endmodule
