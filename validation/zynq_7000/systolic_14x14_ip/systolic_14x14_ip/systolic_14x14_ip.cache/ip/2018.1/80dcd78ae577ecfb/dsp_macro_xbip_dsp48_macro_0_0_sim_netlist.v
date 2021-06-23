// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 22 20:22:07 2021
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN dsp_macro_CLK_0" *) input CLK;
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
Ja7X/5O2eeendUhQz33y0eVs7cW8qXWUh163+8GystKVUk/xI/ZgHmtjEAq6LxQc/uY2aRPZ18Jf
E9cPt7efueiqJX6VOxGuIU+d3llfAgacE0cZbo1ZWkr8Ho5fpZN0SLyDZxGd5w+L5GMegeyNYL//
Ls0aaxQfTc/61xprORtRzdofbcZIPhgnNRR6sjnF2Z/2hj1CCXkA7hH3s0GP+zvhaiNXrytGpqJd
PnHnniT7SIzo6O/y1YlX1eWZy1qbbnddCqxIhOMc5FagPGTX0uW33c9RHcXTbEVqnEP4dCYE0GnU
HoXRE+wwhU3Kv61DuIJklKB/ni9dXhXgDA+afA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsTvrrRhIpNflFxrFFWPMX7KI9RTblMtLTJ12kxIyJbWnVc1vF/uihz5qJCABJeYnBHLs/WRhuZH
HrSIt4EUiSMvWNo1DpmQ/bQYjYxqxFGiZ7AOZEZybrm5+607C90tbK0Tdib3FabqzEW6VMCsrri5
V9XbxeqPRa3Mbd/hOkQflT9n9/ANPJHfI8GD5P/BTcXs71b+UolcgD2dZI7lA78VrjHBmFDD4z7L
UlWb4oJnSR6UMgCquRjRoB5VY/BwvcguKh2Qte9Me/fQTkGdWX8455aJ28tNgBwE/bjC0XuW0BAN
nNLjavkdduMATpx6yfyp8H0hTvDRp4hnHWaLig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
SG8EGu7bqtU3UgRVEWc=
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
