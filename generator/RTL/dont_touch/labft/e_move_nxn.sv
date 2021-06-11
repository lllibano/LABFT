module e_move_nxn
#(
    parameter arraySize = 4,
	parameter inputBits = 8,
	parameter aBits = 8,
	parameter zBits = 8
)
(
    input logic clk,
    input logic rst,
    input logic e_enable,
    input logic [aBits-1:0] e_0_in,
    input logic [aBits-1:0] e_1_in,
    input logic [aBits-1:0] e_2_in,
    input logic [aBits-1:0] e_3_in,
    output logic [zBits-1:0] e_0_out,
    output logic [zBits-1:0] e_1_out,
    output logic [zBits-1:0] e_2_out,
    output logic [zBits-1:0] e_3_out
);
    //signals
    //line 0
    //dff 0 0
    logic [aBits-1:0] dff_0_0_in;
    logic [zBits-1:0] dff_0_0_out;
    //dff 0 1
    logic [aBits-1:0] dff_0_1_in;
    logic [zBits-1:0] dff_0_1_out;   
    //dff 0 2
    logic [aBits-1:0] dff_0_2_in;
    logic [zBits-1:0] dff_0_2_out;
    //dff 0 3
    logic [aBits-1:0] dff_0_3_in;
    logic [zBits-1:0] dff_0_3_out;
    //line 1
    //dff 1 0
    logic [aBits-1:0] dff_1_0_in;
    logic [zBits-1:0] dff_1_0_out;
    //dff 1 1
    logic [aBits-1:0] dff_1_1_in;
    logic [zBits-1:0] dff_1_1_out;   
    //dff 1 2
    logic [aBits-1:0] dff_1_2_in;
    logic [zBits-1:0] dff_1_2_out;
    //dff 1 3
    logic [aBits-1:0] dff_1_3_in;
    logic [zBits-1:0] dff_1_3_out;
    //line 2
    //dff 2 0
    logic [aBits-1:0] dff_2_0_in;
    logic [zBits-1:0] dff_2_0_out;
    //dff 2 1
    logic [aBits-1:0] dff_2_1_in;
    logic [zBits-1:0] dff_2_1_out;   
    //dff 2 2
    logic [aBits-1:0] dff_2_2_in;
    logic [zBits-1:0] dff_2_2_out;
    //dff 2 3
    logic [aBits-1:0] dff_2_3_in;
    logic [zBits-1:0] dff_2_3_out;
    //line 3
    //dff 3 0
    logic [aBits-1:0] dff_3_0_in;
    logic [zBits-1:0] dff_3_0_out;
    //dff 3 1
    logic [aBits-1:0] dff_3_1_in;
    logic [zBits-1:0] dff_3_1_out;   
    //dff 3 2
    logic [aBits-1:0] dff_3_2_in;
    logic [zBits-1:0] dff_3_2_out;
    //dff 3 3
    logic [aBits-1:0] dff_3_3_in;
    logic [zBits-1:0] dff_3_3_out;

    //modules
    //line 0
    //dff 0 0
    assign dff_0_0_in = (e_enable) ? e_0_in:dff_0_1_out;
    dff #(zBits) dff_0_0(clk, rst, dff_0_0_in, dff_0_0_out);
    //dff 0 1
    assign dff_0_1_in = (e_enable) ? e_1_in:dff_0_2_out;
    dff #(zBits) dff_0_1(clk, rst, dff_0_1_in, dff_0_1_out);
    //dff 0 2
    assign dff_0_2_in = (e_enable) ? e_2_in:dff_0_3_out;
    dff #(zBits) dff_0_2(clk, rst, dff_0_2_in, dff_0_2_out);
    //dff 0 3
    assign dff_0_3_in = (e_enable) ? e_3_in:{zBits{1'b0}};
    dff #(zBits) dff_0_3(clk, rst, dff_0_3_in, dff_0_3_out);
    //line 1
    //dff 1 0
    assign dff_1_0_in = (e_enable) ? dff_0_0_out:dff_1_1_out;
    dff #(zBits) dff_1_0(clk, rst, dff_1_0_in, dff_1_0_out);
    //dff 1 1
    assign dff_1_1_in = (e_enable) ? dff_0_1_out:dff_1_2_out;
    dff #(zBits) dff_1_1(clk, rst, dff_1_1_in, dff_1_1_out);
    //dff 1 2
    assign dff_1_2_in = (e_enable) ? dff_0_2_out:dff_1_3_out;
    dff #(zBits) dff_1_2(clk, rst, dff_1_2_in, dff_1_2_out);
    //dff 1 3
    assign dff_1_3_in = (e_enable) ? dff_0_3_out:{zBits{1'b0}};
    dff #(zBits) dff_1_3(clk, rst, dff_1_3_in, dff_1_3_out);
    //line 2
    //dff 2 0
    assign dff_2_0_in = (e_enable) ? dff_1_0_out:dff_2_1_out;
    dff #(zBits) dff_2_0(clk, rst, dff_2_0_in, dff_2_0_out);
    //dff 2 1
    assign dff_2_1_in = (e_enable) ? dff_1_1_out:dff_2_2_out;
    dff #(zBits) dff_2_1(clk, rst, dff_2_1_in, dff_2_1_out);
    //dff 2 2
    assign dff_2_2_in = (e_enable) ? dff_1_2_out:dff_2_3_out;
    dff #(zBits) dff_2_2(clk, rst, dff_2_2_in, dff_2_2_out);
    //dff 2 3
    assign dff_2_3_in = (e_enable) ? dff_1_3_out:{zBits{1'b0}};
    dff #(zBits) dff_2_3(clk, rst, dff_2_3_in, dff_2_3_out);
    //line 3
    //dff 3 0
    assign dff_3_0_in = (e_enable) ? dff_2_0_out:dff_3_1_out;
    dff #(zBits) dff_3_0(clk, rst, dff_3_0_in, dff_3_0_out);
    //dff 3 1
    assign dff_3_1_in = (e_enable) ? dff_2_1_out:dff_3_2_out;
    dff #(zBits) dff_3_1(clk, rst, dff_3_1_in, dff_3_1_out);
    //dff 3 2
    assign dff_3_2_in = (e_enable) ? dff_2_2_out:dff_3_3_out;
    dff #(zBits) dff_3_2(clk, rst, dff_3_2_in, dff_3_2_out);
    //dff 3 3
    assign dff_3_3_in = (e_enable) ? dff_2_3_out:{zBits{1'b0}};
    dff #(zBits) dff_3_3(clk, rst, dff_3_3_in, dff_3_3_out);

    assign e_0_out = dff_0_0_out;
    assign e_1_out = dff_1_0_out;
    assign e_2_out = dff_2_0_out;
    assign e_3_out = dff_3_0_out;

endmodule
