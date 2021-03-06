module tmr_fsm
#(
	parameter words = 2,
	parameter addressWidth = $clog2(words),
	parameter latency = 6+words, //6 = pipeline stages on PE + memory read delay
    parameter cycleCounterWidth = $clog2(latency+1)
)
(
    //clk, rst
	input logic clk,
	input logic rst,
    //global control
	input logic start,
	input logic interrupt,
	//axi inout
	output logic S_AXIS_TREADY,
	input logic S_AXIS_TVALID,
	input logic S_AXIS_TLAST,
	input logic M_AXIS_TREADY,
	output logic M_AXIS_TVALID,
	output logic M_AXIS_TLAST,
	//fillingInputMemoriesState
	output logic fillingInputMemories,
	output logic [addressWidth-1:0] abcdeWriteAddress,
	//loadingWeightsState
	output logic loadingWeights,
	output logic [addressWidth-1:0] eReadAddress,
	//runningState - inputs [mem -> array]
	output logic validInputs,
	output logic [addressWidth-1:0] abcdReadAddress,
	//runningState - outputs [array -> mem]
	output logic wxyzWriteEnable,
	output logic [addressWidth-1:0] wxyzWriteAddress,
	//runningState - inputs [mem -> outside]
	output logic [addressWidth-1:0] wxyzReadAddress
);

	logic S_AXIS_TREADY_0;
    logic S_AXIS_TREADY_1;
    logic S_AXIS_TREADY_2;
    logic M_AXIS_TVALID_0;
    logic M_AXIS_TVALID_1;
    logic M_AXIS_TVALID_2;
    logic M_AXIS_TLAST_0;
    logic M_AXIS_TLAST_1;
    logic M_AXIS_TLAST_2;
    logic fillingInputMemories_0;
    logic fillingInputMemories_1;
    logic fillingInputMemories_2;
    logic [addressWidth-1:0] abcdeWriteAddress_0;
    logic [addressWidth-1:0] abcdeWriteAddress_1;
    logic [addressWidth-1:0] abcdeWriteAddress_2;
    logic loadingWeights_0;
    logic loadingWeights_1;
    logic loadingWeights_2;
    logic [addressWidth-1:0] eReadAddress_0;
    logic [addressWidth-1:0] eReadAddress_1;
    logic [addressWidth-1:0] eReadAddress_2;
    logic validInputs_0;
    logic validInputs_1;
    logic validInputs_2;
    logic [addressWidth-1:0] abcdReadAddress_0;
    logic [addressWidth-1:0] abcdReadAddress_1;
    logic [addressWidth-1:0] abcdReadAddress_2;
    logic wxyzWriteEnable_0;
    logic wxyzWriteEnable_1;
    logic wxyzWriteEnable_2;
    logic [addressWidth-1:0] wxyzWriteAddress_0;
    logic [addressWidth-1:0] wxyzWriteAddress_1;
    logic [addressWidth-1:0] wxyzWriteAddress_2;
    logic [addressWidth-1:0] wxyzReadAddress_0;
    logic [addressWidth-1:0] wxyzReadAddress_1;
    logic [addressWidth-1:0] wxyzReadAddress_2;

    (* dont_touch = "true" *) fsm #(words) fsm_0(clk, rst, start, interrupt,
                         S_AXIS_TREADY_0, S_AXIS_TVALID, S_AXIS_TLAST,
                         M_AXIS_TREADY, M_AXIS_TVALID_0, M_AXIS_TLAST_0,
                         fillingInputMemories_0, abcdeWriteAddress_0,
                         loadingWeights_0, eReadAddress_0,
                         validInputs_0, abcdReadAddress_0,
                         wxyzWriteEnable_0, wxyzWriteAddress_0,
                         wxyzReadAddress_0);

    (* dont_touch = "true" *) fsm #(words) fsm_1(clk, rst, start, interrupt,
                         S_AXIS_TREADY_1, S_AXIS_TVALID, S_AXIS_TLAST,
                         M_AXIS_TREADY, M_AXIS_TVALID_1, M_AXIS_TLAST_1,
                         fillingInputMemories_1, abcdeWriteAddress_1,
                         loadingWeights_1, eReadAddress_1,
                         validInputs_1, abcdReadAddress_1,
                         wxyzWriteEnable_1, wxyzWriteAddress_1,
                         wxyzReadAddress_1);

    (* dont_touch = "true" *) fsm #(words) fsm_2(clk, rst, start, interrupt,
                         S_AXIS_TREADY_2, S_AXIS_TVALID, S_AXIS_TLAST,
                         M_AXIS_TREADY, M_AXIS_TVALID_2, M_AXIS_TLAST_2,
                         fillingInputMemories_2, abcdeWriteAddress_2,
                         loadingWeights_2, eReadAddress_2,
                         validInputs_2, abcdReadAddress_2,
                         wxyzWriteEnable_2, wxyzWriteAddress_2,
                         wxyzReadAddress_2);

    tmr_voter #(1) S_AXIS_TREADY_voter(S_AXIS_TREADY_0, S_AXIS_TREADY_1, S_AXIS_TREADY_2, S_AXIS_TREADY);
    tmr_voter #(1) M_AXIS_TVALID_voter(M_AXIS_TVALID_0, M_AXIS_TVALID_1, M_AXIS_TVALID_2, M_AXIS_TVALID);
    tmr_voter #(1) M_AXIS_TLAST_voter(M_AXIS_TLAST_0, M_AXIS_TLAST_1, M_AXIS_TLAST_2, M_AXIS_TLAST);
    tmr_voter #(1) fillingInputMemories_voter(fillingInputMemories_0, fillingInputMemories_1, fillingInputMemories_2, fillingInputMemories);
    tmr_voter #(addressWidth) abcdeWriteAddress_voter(abcdeWriteAddress_0, abcdeWriteAddress_1, abcdeWriteAddress_2, abcdeWriteAddress);
    tmr_voter #(1) loadingWeights_voter(loadingWeights_0, loadingWeights_1, loadingWeights_2, loadingWeights);
    tmr_voter #(addressWidth) eReadAddress_voter(eReadAddress_0, eReadAddress_1, eReadAddress_2, eReadAddress);
    tmr_voter #(1) validInputs_voter(validInputs_0, validInputs_1, validInputs_2, validInputs);
    tmr_voter #(addressWidth) abcdReadAddress_voter(abcdReadAddress_0, abcdReadAddress_1, abcdReadAddress_2, abcdReadAddress);
    tmr_voter #(1) wxyzWriteEnable_voter(wxyzWriteEnable_0, wxyzWriteEnable_1, wxyzWriteEnable_2, wxyzWriteEnable);
    tmr_voter #(addressWidth) wxyzWriteAddress_voter(wxyzWriteAddress_0, wxyzWriteAddress_1, wxyzWriteAddress_2, wxyzWriteAddress);
    tmr_voter #(addressWidth) wxyzReadAddress_voter(wxyzReadAddress_0, wxyzReadAddress_1, wxyzReadAddress_2, wxyzReadAddress);

endmodule