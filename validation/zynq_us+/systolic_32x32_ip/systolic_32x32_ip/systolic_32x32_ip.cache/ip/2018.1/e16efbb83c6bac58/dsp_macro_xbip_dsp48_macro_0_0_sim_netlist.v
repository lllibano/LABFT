// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 22 17:08:13 2021
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-3-e-es2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    A,
    B,
    D,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN dsp_macro_CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [24:0]D;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 43} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 43}" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [24:0]D;
  wire [42:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "25" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100001000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011010011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D(D),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "25" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "25" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "1" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100001000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "42" *) (* C_REG_CONFIG = "00000000000011010011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynquplus" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [24:0]A;
  input [17:0]B;
  input [47:0]C;
  input [24:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [42:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [24:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [24:0]D;
  wire [42:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "25" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100001000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011010011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
eXLekaf75ti+4/KsymzULXz5oAVLFk8Gyt04ecmjgdcncfRtXhJiOnHdtUin/mnzHVOHKb2xw8pI
uJb6sYCeGQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BkNI+/boD/MiJaVq4b9JNlguFR/nrO0yPwyATYiWCbZhEACCZlbA0BozqIHRVLhpn+svUysa1kP/
eIbVP3hSYf9Gx4xfMK8vw4T5doS3Wh0r3tnlSQ/wOV20uFrfqlPtuabFlcgrNFEg3w6ngaiLyRCC
zlREFWcxjmjqKL4B0Mw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pGK9qQvehhEvErzSMUPB04UVVkE94epOG0uZA/7tMT2kqsaLV2YRqmW0xo347n3SYA/eNF30kvGd
2v169ZPU9U+ghcefgrOTIG/0WoeiDiBJvglmiQ3UaeofxOLXxJCA11dxWxuRKGIcvnUxKv7l5qor
coo0gmnDXFgfng3sFu1XB8DIEjph5whwXganiWwh35tW2vljw5e5VWr0NUkDCFPHQqwTPfuLLSTY
EVIlNRX3X+0qkCLb6F6LKvdU/xsDkXtNI3jV99atQ1BHNsSRJgAS+9dQs2hwZ9WnyH3OYSbiwj8n
CT9IYsL+mHlE5tUacsw1s8UoMn4DGNZxCobIJg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rgDaV4/mhsnos5RFqNRIj4sj11Jf1a3m8YjiIU5cK9EtlwMdJCgssm0aIN5i8CxsXn72kepYcg8X
j5DhRFEKbsK+wjVxTbrFNMpgwHXQAjvmsZnn+HuC6ZP5+eK0aTmGEDzQN1+IyHAqrMBIi1y2CJZP
utmopTNrD1IorfWY0HkHbZPK/FYW03e0IDrwmDxdTxygPK1ef14uRc5XgbMDH6aHsz4lizY3mnqF
7zQj55G/mQV0zODFs7O4Lz1kvXI7zSy/y2bN71nIDsrmSkDiJ55CxhURxc7qfThhlir0NAd5l2ya
iGyxe6L5fo/NBXnefVFkWcHHcZXJuCfsY/gKvg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bbm+Bhk0wBaFjFA9Ea11gJ7vMup06mFvo96KGxhbqN3zPDugDFuQv08KjoMp8V+rQC8s/o38FQhx
8Mw+TbWN3glC/HEfcfr+0ozgp5344o93hsiR3+MMKXhx5tu5oQVo4BpmPH6rmVlEtPVdDlgol7F8
9hjg9IhJBwRbYgKuy/Ms/k2ex23of35a1Ovpjj41z9RSp/Bon6ZNxfWeqgKq7RivVGU77w8zR0ti
PBCvjBBF2+vPvWj6g57/RuceCw+BwG8dIMbmwtCz0Y8JVD0uYVKgvcMVUr/Lg5uDUHPlFSRNbJgv
duAbv5dxQq0b5LfuR/YMNz8EZGgBfq7DnSqinw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rN6p2yPlgLWyn9/t3wZUjPzr6Y6bUzmHiPwkg+XDW5hEhsHw5w3Lp51pJNUJVDiqw+t/HwWW3lY9
4goQArkKjN/4p++LpVanpS7CNtHdOHBd7a5WXKqTlNBbmKLF8yq889d8PC7MCadre0FVBNA7dfoB
KOJoWnAbUFUbCir8o6M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Br53BAhOJATkKjg2iPNqGoGKK4u590bUn26AaoQALXJEfUkCMI57obgv/a9IRyf+IuzYeDIYp38W
+Fq9elQqoe7uj+NQp4lmRHPS57EZreTi/rxOAq+OXOJn7dvBRTPhH+UEYbyxdTpZibHYVECka85P
hAPc+XzXsDPnoNa6HXuUchScM60H3bfzxvgYesGd7SPtHCikV/d8Y9jQ794xqBwRWKoNOhMZUB8D
h674MCTcGJO2unqZsQya6GGK98IPAEscAOhuNr1X+gkTYrp3jJi82QCDvuJFhMt0NWAskmtuFIvs
ymumLguDevG/3o+HKdfbAOSBU3zUrqwVITxO/Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lOZvCh4jsLgHlJ6NMBlwL2qjh5b0nANQgPQbCsIkwPiVDlQ5BzK+8VtFYQ7c7eWvojltCWrLuepp
7KuUirAX4vxCx8V3PYbcw1GFLWNUxQi92L2FJRp1NLqY28GOMvRTXkorjl8GCPuh3G5Fcnu9wGsv
5X2R8oJCrG44M5HntfUN065aqYUSPnLdKOe5AuqDCp4FIEmeL/Iw28huNMJcWSbhuRda12muQoEa
vmbf/pdJEKc+zTqPjWqF7uG+m/XfS2NNMP9/wCFc5A+/fHlrEOwntQim0PQn/JIxBNvGryLWyxmt
Lc4tDS4/ZaBZ6YFyGXr+DVaEx9K0TDOeLF+0rQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
htNvE8t4u5/A/qFLnlRbwFqLEiz4Jt3U8MxTWR9O+sQkkwVzHNK6LK2PO8aM5ZngjK+JrCtq0i3x
L3sm06lLcFduv7t6MPhReEoS/ED+m2LehBkI8EzIt50kfd5c8fcHPgH0kfnbaUKT09ezULK9E+PL
HIx9UYxXgojvB/3wo3UUpH7nuGhHbnsQL/Eile8GunqCluIm2SgJAi/6NK87wxgbLnYID2KRQ1Io
X0tihD0NpWpYwBzfV0ulxXTNLEHvds1Q2i4GNB7GjgDKaD2OzD9TcK4iqnxD8XfNcC30EGTZgvgP
8rnGG5ZQwbh8/zYzTvomlDiy5JyeJlYQc24iQQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31040)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
