// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 22 20:22:09 2021
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/libano/vivado/TR_Final/NEW/validation/systolic_14x14_ip/systolic_14x14_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module dsp_macro_xbip_dsp48_macro_0_0
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
  dsp_macro_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_16 U0
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
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_16" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp_macro_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_16
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
  dsp_macro_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_16_viv i_synth
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
kWfQNEvg0hskbdBoJbapRSTSIk/d/cP1ifVJKA52b3O7vLb3hPK8vtMV5EYDvMuXtXC7kvGN7ePp
khxkMhHLihheZtJNeQDPnysdK8tUMuvylxi9oCJ0hgR1OQj61A4yZt4cHXGLXwBRrc9h4K8DAZUO
1Wj/3Kkku5gJMDbTR2oEXOQkjyo4TJlYOCYg6F0LUzhF3ZMMHZLK+dyesIYyrP1eV32Y6GXtkl6r
9QeGB46WjY/FKDl1irOpsz8v8alyB0rBi5GnUd9LURCFdmgKdYXEN5j3J+JxFl2QPbQE2iuNNMfW
4gLpVnGdDatY3nridsZrPnYYQyX8uzNyT9FKAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L56su92X2uWle5OfQtluZLWyl8ETPgc/Vh1ueQS28Knzr804AS/9iGOe1gnIhFuN+bebIRWrBvAS
k9pCyfm0DBFDfDWluiOQYYLpyCR/a1VZ4Qgk6PKnqX+TuiyvuGnEm9sJ5RpiZbYioZzOjpP/QVYi
Bdl6hrXsJZLk6OKUJiaLpqX2ce052K9PugH6a8QBKEcbHxv69ml3qg45x+ZV3Pu4KngguGIs5QAg
2J5N4btYYg+cb2vo2ZUd3AgtzNTZfXyOKzqPmRAk4O4xroIbEhSEzPE8fKZbbSc13puiGLtSRnHE
0IxQZzy7OienHwMNp56wdwWAlYQ/FRYxhRYlng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
ph9CE+y2lsmz3OjUX1Q8NJ8ZtochKHyzZt50mdjDTsqspo1reoQ4+S5HO4t30Wl8cpPonh5HFT6/
M61vRPZ/DFo6dd+mkRjpDbNW53l6Ss/4nKrXcg9f8mZWBSb6/N7xll7Xn2MLx7V3QzQucZVoVMSI
H3xmDm/ypf/BBuvmDFs3C7fik8CL1XX2L17eSIRLkhW4ewBh/mViid3HHdQcRYynMLVvhkKbWvvk
l2XkpDOTuf8zxAoSUNVxIR54hPg/yaHZq/Y1wD0iLVHUF0mf638zPI1NgXDzASS1jesi16wBSlhd
hsCBq931U8+bKdCQpztE63LqPNPWolKjsnSNhYiC8Pn12rOf36SgMhcnRxq+SeIkbAOlfPZ5D/rd
6gOOuO60g4lugrrkjWHsOIU5uIPeKvMdPXbPoaYekZdHhbrp38TmackA9ul1/xSm8FFqme0FEVAt
MxnjUUeOFQQAcaqta3kcvB3NTIY1QmCc9sgZAsnbP3lU/ZMGvm4JkXH1+n6nScooBsByCxInrQr9
1ucvB0aWzRnaf1BKbOFKwTuameabisH62vyyD8CuEOaHfiKwKjz7FX+/L+PtsYeGZK9rnIVFA0RF
lIT4KwbaoLHuoS0P9kUYAVoqH2sBx+MEp/D4kSCLKyM3pMQBeTzagbrzx41zWFhxFNxdLDRdXzFx
f3zjuCqyvPiqhjdoCie7EjlIkCLxKofH3lpz/TxzkmWmtW8ddEX5HlW8tU4onEzZTHmp5xXQlZbl
OCl4NAVSUFhRs/Wfic5/R6xQ3X+ULVcdeecsCYtHnrgHKsqXkstQrfV+Xlpufl3rpPvQuTyHwuKa
l2FL8aaJU/QbJGFwhHFWEDA2HY3UULZjfb+/eZzPvUIFhSx7VSLef1vhUcrT0WfjnRah5xB6qm5c
+Wh6yjhaxpM38Wy/6jYGn0CXvBEjhg7fj+abKeNxYLe5dh8BDZau0LlvQaF4sqfG1QS+jiBxyNS+
IlHjH7OblMYfiikEOeKWjJYvjy/nbptKM3M4yaZxyNv8Ih1A9sh6bZqnINF30H8isbqfmUhje2HX
62d6eKppDtaTItLzGyfdo/tPopBR19LNZVFx1car6x2i36SzgpsqCbj8ayalrGIsLDcGIMV3mn6t
hsqwEIbkYuSVFba6wCpjBgRMfHA1mSLdp4EADZvy1XEf2VyQO3b7QwR6ld7e3N9Oe8pddyPgwhy1
9irv8KmgqkMENR2vRTSuMSv1cAPUepphLVptAlQXQlKCJ/C+edBgWZ9/DfTQwIlPsN7NNQXhr28q
zWZwiagqBJY8z/mnUcoFTU9qqe9NTX/QfYYllLeZGR5jyxCLtjhv0XeJmsCwVdOHcSWVrmYtyW+z
jeqIRXFwQflNLFA3OYBhE6sIYy3ISgrs1INkxNPvv0NPlYhDcEhbULB+zp0bDRXwEDVwgUn8XBNz
1Dz2prEy8Ej0rHma8cmC0MmdWRxazFgFzsUisq7T7/GoFSpB66klDpIa18op9mj/4GPp1Jdi/qWM
pj0evYFw0FHqg8b0eKLR0J+KywW2D3KBHpflwyYVNSbeTAWCKx+1IgGiisQdT24ggMn6n/yATUUB
FuKE2xa9C66oez00QOttIqGV9pFyFaCjGVG90/pUpmhPb7adnK/3uT6g9UG6YbL3H2UbAGr5yIer
BGT41X/Tm9WYF1PeA8phzh0s5Loas8qXZsOgGEBKFY1b6JA5fi+yy/wrM/uFlnm0BnFwDx2xWQa9
K+ong6RLYF6X/D9hCgLjYsKfDzPxqpKebULAocDNLBSUtrD7pC7cS9bXis3O9P9oi4RqfZZMNjSB
1yHxlK5RVb9hoYv4WD+zLGvbso061rJzJOhMqDk5VUXhvdCX5N0V20QT9YdO7N8fBbsMOjR1jOrV
EcyWp2H4cOUkEwxAlaCWWwoRSWs3pjiRc37gqx9oyUQB0aA29kK520Vm8XPVGZa2zMRAc4RBufy5
6dQAIWceLglqbs6mVmbL++XqRni377GJHNLZtCt948yDyU2yqFBfPCZEQRNp0BshY/onOc8O11qI
x4KkcAzg8FCw/AjZ2ldvSvTcZ3NBpf0hwcOjeQBZfV2OeEHPgitaoFWwd9RCS9B+72vUybmwtJFA
f8PXVYEOp4VrnwGc/Vj5OF8XWPID9tNruiyDlJmZr4vKdMaO77o+yJvi4B9NocaVBJrtjnp8p5vx
/N01SpELL1g94CrZ9RLmgtb1zeZ7hqzEF4ragKjYnFFTCW4Ztvs2xyIhFEAJg5XIRIK5yVFWfceC
5mrJ0MU+zZFgPk7MDPVbjpRuQ7hO0IkV+Y1B6QYYQ9Zin5h/aEQ7tijmQ3B8TP/02tN7gmrHqmsW
wDCMP0AHXAE4DhJVFJhqq5jnInv317t37ZatyqNSnLHyv5T/iu2aEO4SILm6hrmlTPBq83tjTXqD
fvHZOqUvAnTfjQwdxmFyJnmRnx+OtlHM8tygevkUjYLWlmIyovKNDBr694BUSia+FNoL3cgNWA0g
1rgOC+o2ujXW4MS1jnBMTtBDDKzAKlBCRfAdE/6hcBz+WBvBJSKsrCKWWEifZxggf57DHZcP1qJq
u18XzwL54NylspameADdE9BI4qpQxEM8maf5DHxQXHACX5OTaUEVwGGmiO2gZngk5Ryyv6UiW0vW
yHUI9PHU2SW9FSQJ3vhdW2aMGeQ2jXylA3lGdjzHGmYWed2GvHKy+gHaw0Ac/FWHQt6vI0OJHHl7
lUwBtT9/RAv7R8N11MZJgFmDdgJ7L0gJ2FNnLajHSFBsnmO7p6Rv5LQMIFPRvVur8IH/h3d9GanL
tJxhxnFDfBiJeTFreGMt8nFEqFqhwdqZpnLDoXI8R79/b3L2+0y2asswp+gfgG3HlhtxEHEyITUw
QfpvXsiE81TxI3EPwo6D4+5BoUQE14yRTwNTJpieDILJODeAs/7WGP2T7SpIb70lLVDQADZDedgC
4PG+bvtHKzft+htlgxDn1QV6EiXXw+53PGk3Hs+R0TNW3bCCb28+pR9lPxRPccdu+eYo6d1bhSgQ
eJXxZAxAyNs2ApLfyVp5xdzXdPbT1otZxF2yPJ1fW7jCE2dv44/PuIajpJfY9XhA05Rs3+R6OQ5U
DZUTP1lvT/93MSDbUbZTscGcz4jkU9yrg5rHX5n4hqAiMPULv51off1mFnERaK8Xlbd+ZyV87rk7
Fyy/NbV4WgljW37SCt6unt5anf22+Amy05zFCfZNAX3HadVBlItoc8kN/YmXYM0V2qIFQZwYaz+H
eoeGFuyOo8WoT9hpUzRxbhr7eq8EytHETVzFoKMD0UsRAQbYUTGbK9qI9252zWxs5DVNtnocxhvs
mkKm11yC0Jth3Zb0xhM8JSFlE3qPsZx7ncVyoMFOBxQjgQTxrokNw5Rc5t+xuZalk74AzVK+BYqo
owVWoxmdiuwMPR7A3gnMokwnVBCjlB4lrSjY3u+XwCuZC+EkOPvwdR+DkTZux2X17Hb6dwRNT/Wg
8KHr0c7ManwntfQFuEBAN4Kw9zVq5aoctXgLAFvjp+IXhg13PfX0iSUnl4buA8DCipmIL3uXcLzm
wZnCdDJu00wNkFn7e6uCskCKl4+M+qYe0/66bdaAnEuwKcbWWKxN12gfxIdT1Qq3B1U/qn2H3vWZ
6VbFiqj+1+X5uyFXzX7R70Z0/JZOMJR5vuISIL6NI+U6Dy12LdECtq1um659Y/QkY3BPvMrpZ+s9
Fv3bfOaPWH75FoZLUbW+cnb7Sei3YQZmZcIaH0+/4FbOJ+Tsz/0as/TyP59KeaoxwKMAT7Sl1hT2
F5r2p5A8I9eUGL9U7PqDEvT0siR1IdVquzrokrLsNQ3bUK2t5uEYhA78Iyl1a+Urn2jaywld11Lt
AKrrZgibVUEpy7Gm28LSnoqA2IDeO0lhxmqA9YzJoKiHZF8tsiqkxsxAj71FE4JCqeuDlNmPSSJC
A11fM0VZz8iyOLlXxymXtODp5rekkiHOJTPaIY7WzMMnDyUbkgWPZUkFKNatbuu+xFdidPNePTc+
3OKYxMFBxeXD0tHwxSShDkeyvv0mnarjjsRPXTGdukvI0coRcQGHK+0Es8SvmkkLByM9rejW6hN2
eZOBhWlbJn8wSzgl39sRI2XKEmqtRrz7Lt6dkwvUjkdQBmBmswiaGvpgM73o1LvO7IGfWDQpAp7+
Bt97WI75zQ6Mk1ndZoHxOUl0CYn4/T6zddAYs7irSSfbtw3O414Rj/2BoS6j0fp4kzgmwzbNh5DD
Bk5hPem5lSIcVPY7XyQvcj+0U1UobU9CJ57amV5ysqsV0ezEpebx2UDAhOm4biGBAH+EMHcbYI9d
qzUIga1PlR+20jlnVnJWe2FmKA67Y1BeDwyoujK/vmX5xrLxp7iRMWYGjTNnTCqVZDLqIUZovyCv
Pl9UzhBLwqfcAvIoVm+LNViwoDpdDVRmgK4g0FGjoUp2Tb5zTTTd4NFzuVQwlHOKYbmaye9qP3gu
RTMMzaxRrngtfmX9pKs847RpN3enlGKPnTW8a1o/6jKBfSFxuFKsy0Q4Zg2Mq82VW2eMshNvEJfP
Sk8rIqxD2VYrqKVn9Vfoy42rRcXnzKS9YQceNfLui3p1YNjAV4GKYiJ3/hTCQH6SCezqR3+f92FS
nKdaJ3Rj6L58uGZeRsa9NoIlD/eRWi0YoIKDj3o80OhtY4OZg+G13aftHa3MpeVCcYTYYJG3X9hr
yNy58WsswVnWtTOdhL8XD7YiklKT1IegEdglWwo58F3iq9q6ikhd7IVum3JAYEL2Bfr5HzdDmaIg
OICyRwVewNwwqrOre9czu2/szUQZBZZrLPMNeBS2tfv78cAeqnYkHsR22katFvfjLVlxVBQ10OuV
1/SD89LYRm8K8b+aji5kksNs+zTAexsmV36I8f7EsuHUHeOFUQX3nJvvFmom39e4LeypsKPc/pZo
swo2A4PfR/iHeWKsKIrdp5dKMQ14Mq3ebu1g5dGlMfNiQhE7buhYTbLYoIlmf9HqFsXebYF5fgfM
4S5gdUe1lT1v4dxgYr534Mlqj1aY64/4No8cunX0gV0k+gBNbvlr8/kgDstVotCn844C/PJoNgXo
6gOzCbFgK1p5QXCpb+Ya5wMBT6WVzqGrI5MmxDuIcGFiCzZOQem+JRxjRaZ5kjfz2/FB+L/kluMd
tgXrTkizYpcMqTlYNnGC+wNth+l2BLKBUfy03eejo7mprOCc75mzYihfFMEziHRxn3JYwCDkousw
00FRD9UgG6ZS3nvP31FTozChILrF/OqNhRNOKK5/zCAN8EIef9KOqQcGl9zt5KTLb2tUkFmaCZbC
dQ3vqvGMd+RsV0OtdaTykeISSAEfZoj/pcHXy9CVp31KsBV938z5OZojQHSdajKWce58rEiwUlSA
jajTTaIwJGM4gw4Ze6PA8URHVk5M1WPHx1Zmm52ifxSlbZSFZ5IOTuGa8bLlemfFpuCkoIrFg5F5
N095X9FqSNqn+va0EQCpAyLVU1GV+WJsDoJjorBO6tEoUvqcVHGj5OifuNAF77V4tS8aU0yoz/i/
z+PojPOnwAW1uifr6NWM2wA8abPqnuEj139uskXW7rwotxgWG/yhXWr2/DijPSz09+evwt3Gh/iv
2LF8kny2r5O7VSiUS1OHgMrHzhExhv4Go0Okqy/crr7OaiitNfr45MuWwBxTFdOWx53J5ha0O99f
ZhFf4k1qJ/03K2huL5SGo4cHR4zUorE4C4k0RVaciv2BhbNXGI9I+butSQkbzJGSgbJrlfFh8F09
LXKz9ImrKCUr7SAJCNTrF4eI/mi8LLHDSgBaoAZqhGWXMyt9Y429xFtk1eeI6lnzy8pBKNIQiWoU
UKSxJxQ0HwU1X1VuJ+640f79LwMTgSPTB/6LORx3j9MjFKZVzHiiNW1XLDWI9EW8lEZMnu8iyh3M
lOlMBg8l0mqoTCKYM1mu9+hX6LkVx+vA/J/iusdly5qjQIEZW/NAsTFBzLRvTQyPuIgiAGg1DGOy
Cgcyffan76WhtVMKM/5Rr/lxsQWH1gxddLck7mKKtJqa2wI9YmilWrIZGYQEZ/DfaFlsl6tomZnp
f9OvF+Sq/yLhlgiypAnIfUswpqvTjB8yAJUg08TrtC2+zIYZXuQTSR6FvxXpBjE/WMVh8BEdNUCw
aRZ7fOrH/urK38xUNzBKGyxb+pO6o1sjcIhme9TKFs8327phqq2sILmaSWY+EvWfRvTyaBLHGee7
YUHtePLkBCLP10jhrKQRrkJ5bfBGAt59jesxtaxXSRYtHsT8aUNPj6EYNPLRl5YPkJ9wgfVnaOI3
XeH/hyc0cNsaW3ZQJZ6UOcK0JGE7NA87K/LWBaNJhgNPkq2ORfpzjbDRlRkhM6TMKHrkYg2LlAbb
uvtUUYnTPQYqL12EKPCfNJW+4TIetJOKjKwQMV3OeRt9ueZxbOPJnM/CyabRx0cHkrsPre4l4c40
owTk740YXt3xHbWVNEQh2dd/f0MqT5/nKgsYlJ3LZyZ1aBXrFfAJTizDZmvJ1wEYWc78tHR7nmzP
sajgmcayS7/139bWFEBHAD3kyVR3wp0fSzi1Gpo8b+kRASY5TjS1XI1neTs5gFJWFfL/kl1Q7NNc
Vt8NdxV4QNpy6y4aGTyJ7am07hrtP1v7iM07336n4I9/EYERkkIamaoDdjYcTQGzQIcuJk48BBaE
NRhBtC+wOyu6Gz42+3shNigN7yGFY6GGbWWmorjSkBMz43tl80c9k3eOdFFh/kZGhM8cH441hjjd
8EMPNtBOA2CaXF7A2URGQh8G/Nn/l5905/kB1RjbFvCe8afNPqOUq4+m345Bj66OGJIpYaNgzaop
tKQee9iPSYylWTbGhfe7ARxH9L7rQypZ1TJpur72InaQoo3vbN8h8pGeJ4FLIpXetrOP1Qu1AcM2
DhiMfYQQruqop+bkpZ3IB6i3Sz9TLgGtZ3VwQ4o7+bqkY+q1mlpX5jvNhZFphKRuF4KDsGNSHtAQ
h8eff/wkKLjgsF0mxALxxp+g6Ww4LsNrmiq8AGpmslT6yEKjc9KAIYwGDJ9MiiAPo/UPHiBoccZf
0BdTM+7wHsfhxqHX3bE4prSqeSGiESeL/hPBwVdoEDQu20SCVqW70KFsF4//dXf82rNwRfhWD0g0
5qJsNnUxVAjRRidpZRSR8GjO7JuDi5T8QU4FT9RWAVDG2Tp2+PYp8Ri0XUKSuC/DxYzKYhIv7hIC
04kQuwrj9ZfWLCs6N+ftpUrDUu+THHZjZhS7qxpfg3A+9X24kKgdgKKWsOLgR2Qc8QOo4c8TugTh
1puBCMhoSqyEkSIURUArIUUiPOZQYnOOi8KHd4ofaYG4NkouPfOOqv/EM2iddxABpt+jX5VezKzb
op1/qOaD1R09nGPi61LOXp+l9kI6oISExVSVHjZOCmOsvUzLCtcmtPQ6wiTN7WiUjSJXbPpccOEd
8IVR/djUkVMVhlxFtx5kIuv9OX69YmtrzrmOht7gsiQ/FdJDJ1ZFqeZaNOFsqEUsEgfMDyt/lSoS
HCT2OqVt223tYjRb86I29I1MsIppH4wAaSPtMPn8Tj5I9X3UrGnhiUCXfG8MLp0WnB1z/Bbuu5m8
HNVp+WsGfUx7sruRQR5QFDWbzdzwdwvanoZVhvbY4kjiLz1X/I3NYFObl+jb8LmjuHBT6h+djq76
Bkf7l2RQuEGYJoYOuZPSSQ5abnoogKJip6nyXyxxN3kFI/w2c9f60AARXWKyywNls4W/t4HXifLO
OZPANxeYBuaz5FrR8MhGZtnCKwVCrHnk4j73xrMU9w+mMTPPfzSndMq5v/ZDAAaKaUPCN5k05uBA
QTpp3B79ZIb0AgC9GaaVD/dPOIvxngQN8so5yVG2Sb/EbqnSl0+QxowkMXLzEZtT8N+JuhZExbH2
qIRpnEPIcnFF6NUJdHMoFQ+bTmh+yl+EcP+zx9w+zSKUV5XakgF8IrZl/Y6JO8zioxi9SG0y4rb8
Z5UK2Iw7KjhD9oj/A9l8NAanwVDsGZPHU2PIIJHYLirb0cmuI8OGqCaWYgM0R9PZR5O9w5PQ89Um
8A9DGgpMNvSdgfudVA9VDr4TkjsHbqY/zNdyeO0kBtWJTK//9PJdxfjKAyhB906LDNafCvqV7wF/
zcua6s5mqZY+ZwHz2cMJw7Mz/16iQScmNTDp1dtpg6SgvXvCsOqjoN0aNHHZMINyxc+5NOlej6Qd
ggzepHHKWX4b9iY8DhJNlSpN+GAlD2ftCBhoF4NcSwrwMPqR3MD0alqoAuD1evPxaqsBIawPGi9O
01qvsByzpiSAlFnFzCnS3ubjkiseDreKXVkW5dyHkX7d3kgYuGr3+cfN0C+rMaDED2g1suaj/Syd
3CPHPSsVwmBjbgjTZq9voeAWB6MuFmq4PlMmTFRU2R+2oQPReKuZ/eL1cjS/4y8xXhtBUsEnpITr
SPBTrr8DfnFpWw0KGVW0nMyUspRyjbmdcFHYQgQO+VBXWnV4zPutTPJpc1xrGz1Fy6P71ObMSlsM
/LBJOTV3BIhq4Y8wJA88VlZw2TP76B8aKyHnJoX7u8UjJLId8n43idKaJzMewyaZ9ftWmqXC2EEO
w+oBmvYeYX7j8wiqCmwal4uMBXavu22QsxmxGKtpsb5lJ2B6/FsLsWC/YtYs51JIN1OO4MWCXUYV
iSTOISKhQosrlAr1MXnRgdvLTm/xkW85XJ36q5dWdnf+JrIcuSuroGODKxpP53n1xjVHGl08l3F6
cZ+KCjMWfrGXW4bUva6c0cqJbSHFtiVKHAuA1FncQJHmcbuoL8NsR8bmmfUU+SIKWZyD55tooUpg
m44gHHzGWRBzUXiSsMexIiBqxrg09HXVGUzu0cT6N0ORunhsnX131SnHOnlEtF+D0WSHj3dlcmIo
lDCCFYiliPYmfFOkAYTqAva6zgoY8aOonfiosVq9QJI36aFDm2uCV6tctKViqkVNk22kPDO7eFaZ
fp25K1wlu/HJZYvXVefh5Jsh7Zk5PAQgPjVy7qub5uK22YOZnNrsTfY3taOweXlAfnsXVY/ebQ9r
64p57csxmHcrsPxDnKDGZTnmf6b7X/yW/WZhRuFa6jX3tr9RJZoIhDABTVu4Ksh3niFgf2IRWOUt
LP6oFV1oK29kGscMlUVu02Z+skrLrX/lWq1q3N10ismwn2THcVQW4VlR5drmNEYVPKVpY87JbP2R
cuRa6gUgtPMZzCifV9cA7VCoqGJZZxvNtqcWAXh8fEzhVEh/Mme8acLgynx19vKE8Kdr6g7KSDph
NieJDqovCmrKuVTGDb3d8WntokJskWk3QUtRnTMxsfsxfrVbzOZhFru0LiJECMKkbl7TwoZem/pg
VOJza0MmhrMvAlIQJAJaMlsaYq+nCkjY3JwSH2vUY8YuvISRKn2qbzrLszOc3n/YpwhocdV+qn6z
9gitXrK43sKkPeCbbFCSoHfMnoXPd7KUfhmlD4wkfHbp1YlwmKKqhdW/9J+V0BHoqcXVAR+zegmq
d+ymCUi68lIuAniABTPfIpo4p3j8+EGPyiupgtHf+/zU0JWDhEUgmvJmL8duTy6Exkk46JuYVYoo
mjByNSZmIPFlBoZIXsJjH3G9xNls5v6vJyKkCIbo9NwJTltXGoVEkGRu1MPMOV/su1sS9Im32Nb2
Utu8LYsajU7YEH/aA/0EnjeBEcf7p5ymRUGbKExpPgkj2zQDJMlwPgOYGftkr6L6YqWFjQYqRnN7
gXH2VUsA+PYid9MfvEo9+RzDmjj57fYSfaES6avAdwNo8jInz5lYUgIKLb95hGjZKr0atcDiH4SB
D+g8WRwaANUUFtB7srKPAwb/fvKWmwdS8w+SZcUI0McYT/FKXlKzAerBqCKao8mBtElJKxxk+XCC
SMYQuV78204swyiWdN+Go646yzO0wqel3OZ902FInkaM3K/zWYrA6te0HtRi7svNzpK+5RK6GdY8
Z3e+x3XfRkAfWD1TlzGaDIX7ARgQ+y+HwBxCnv3qv0eF36lT61cZVSHa3bPdwErN+FiYiYnlqNbR
qIUdg9JQ579r+Y3V1LeHnsfz2abXzJjrlJuhp9LW/N0+YkwK5DcHJ5QcFZ0GKVv3k9905Giqza38
3XsWCPjnyrDw8qqzO1mLMvQYtIVRtB58JkBLD1jgj6n2eJysh8CqsaU51F8NvJyjkoWHh2Ey3XPg
VsXjIt429JGK3hLVXr1Jlrq+dz4L4RsFim/+Pak7pKxcknd/eCi+Vc19Z8bPIt43Y8tNspwPcYJ7
yMSRUZ9t6lTcWDW01OQOYX6LtTEOBhcu0Tie2Yt3iLS43sYvjGFgckEEQo8pGLKaFwxrmJcYvq7u
vr5pDAS28ccawSooOUAo4GolJuA/h43ISIAEdluwe/HzCDJPQjpgyugqoqsZWOUJiAcG3IS70l/j
VueEBWRvn1w+bwdObnvWEd0HU3jFGf8rOSOQE4wlI9fWNNGEeOpS5ELnSTZR9WV5vsgNHYQKCbRh
rl8xVc5b+irowKz+Hb6nIVw8rUdVFnF9TdMMwBaQwS/ULAlxvoUlDFyKt4oBoQXDwL0Ryh+TaZmI
NeoGOzkseBHc4yYkdM4b5f4zsWuhZk+o3tnuorFy73NSbHwA6NCKK9I2lP1i5UWIVLSdUPhhNHKq
GGBCvW0b86Si8XLsUL59bSIDiODrOyClwS0h4qlwaVJ/ovVRdvTb9ZdO4h7TcJH4ZHci89BUs0vr
tIFRxujvQu6VKYPdcjj59pU6XKCXTgvwIlvcsizBY2m7zqnZBfOj/p0K/MPIQaYy4A26sqRGXwQX
I48H71mnNiqAo5qnu2sghwhOn//LF7TtoDk53mFLTfTqJFnk1PpGiZzIcjULcjq3g7jCzG/yN4NS
6IYobH/HmKXidM4jqv9SepwfFyZgWU8e3YXtGV+yST2rq9GvYDOKRxn7TC7wmn2U9Oe2GPkEwnz2
/lUhnIqC3Ws+sqbITTFQuMKIVOK+zJn842A/FYvzm2NjsztOo92pG3n4rrJS+Lqx4LDQEnzcG3Xy
cutHKRzbUgvzayTiobDOP/r0WFpOVVe7IIbEBZM1iOG7qGCsfOv08c1VLQZaYzXTLV+SUemAB1BK
UBkb0RND9wlN87ZwlccvxjDpQSBQ6ChXwEuqKktqFv/dcwMQkbBevwF7FV0F3aaobN/Kv1uPJOY8
TmVQJ43O5UD2nO6SnON+O5p5Kr2ELz3FrBzGSfZ0fEl2J3g4embrFHAk1Fv9+pFDYYSBEjQ1To6m
92bZW+S0CsnD+1kllBogGyyLLzlW8iLQlxo4ttKfadmFA8fm9YfCnyH5iDoHrnRqi9KRhcRMHYHJ
EBqeUpAELYoTOqq0QpyeO62kKIYtqlL7vrTPnGOK5sC2xlzJjvPS8fodkFHkSR62vaQ7FTE166iH
Io57E3jrssGUxM390hN48b6CHXMkSPxk74V0MQEykMH3bTKerm/WsWcnJXufQNQ7D85QwsqtQrQ5
z+mhmtmQktKo59j9BTTIUDZosoiGgv9wkV8TTZrw4P/GsWjPCY0CUnR+VfUbPShEqstSwDo9epsR
yPYMvG/fXa0NzYE+oMuHOhlO7M4DY8OT0wSdojfe232S2NN06YcgFiqeImIkmTmRx+hL3C+MwbOb
F+i44mWpzbZMdzN4R/tmdpsVUYmvlCpdYbh7buxsFyjcLmrizJ/N90o2qSbS0YwoeSlUZso3pZdg
Wp2c8025Ywiw8q+h80/LYM9iGoA4BRBJ2b9qBAoa5q2vxl+y/b3rLs86RBkFT9FnWEZ/qYQlNDl1
pN56dT/hAyqPNHqwLQvxWf9id8tggWbWV1jVblvPjdu9og4bVgPD+FAOerJcwMpUkH/d2ExDQaFA
ZOSZjUFUj9VfHEVWA/kxplMpOKySIhLEWJ7d+40qjzQpVESKtN9smTkp4R8+l0umacIw6qNF9/Ml
cBl8PvcxZLopsyq8EehlA8Xn7ZE7OKGjmaXmp2bRLLxqwxCwoZVxELwDumMVEYYtNRg2SlVpYcgu
XCkLquieLXkse6EMVGYsAaqfEwsUZRxY2/GtoYS338ENy6h7ud/jn2HAASuIo3MEW8jh7bXtpJgg
UGpHJLbR8Vy87sZhpwgxJ6Y6WEQII6nR+/K89+E3Zwi9+MOaZ2ASb2t9R7MPPAEYGm2gDX4ourDb
clN0GG1QY48gndr/xAppcBZ+4+qtKYE4Zm4eIOdaKutVWwbP7QshlrFeWzCdMB7KV2B3unvwTEu8
34OYjEaZFVKLeRQ7c3dnVHKZ53z/gQ19kKwh45+cF2D9Nbn8940sgY6PDlQx3woddb85vs5oNt2o
3SHx7WQUIcqb8UvI49jaGgQ4Y03rnO44LHgl39pyUx2JQ4EUIyUFZFLk+KNRhEwQxj/UP+cyjJpH
yhhQi/kBJAtxWSQqNsUKGmVDF/uXU8rnqTsFHsA7fvKylPAQn8MmriFOLibOlw34bZUHppy7ahuI
piLxeafiH71V3ouk+FqZtI65oTM+xvMaL+DtcQbMa0bN0jho2cV0jc+XmJrjPiuOc8iIyLOjBz7z
rHlKAod9B4bJ87Y7Dw2PfM+aj57mTO/r/1xzTz6qEKKyqR9X2zYJKNBbaFmfNvPuKl+ZEkNhVPz0
nNJQIJ7To/lfpiQ3ULvJQBOHmPCKMoHd5pUT5bDlN1sZs1pHqewgYLvivNJ4DxzFRT6zN6IPxB7Y
zhapzAaPvsMylhlLn3EtaKyHfCzpPUQp0DAtppSA/TKNjQxW1g93OQ96xl4LxQsXAXhemfEJjm5B
xo1TiC4VfEu3kOd6ay4Xx77HO1B0yccNZJroROFl49zQbzDEuUo6APNtfiosrzEAESORkNYq983z
Z0RdNZSRFwRfBc+egCwiGakO/n1MtA4GJn43mhsS+iUPeTM4GelTm0kiauqU1jw8rpBRiPvpZG98
aA36nJX9oROdlIM0o1DyrV/eQi24Jma42yZHd29Tgaj5ux+2Eo2aid/pUr/5aSmfLmGH14VNshYI
guL1CoW1p+BPUK6bMkVxYu4TesJqsOWGlCM+tV5A5d3BFdr6afQc1xcKjTEsSXq0CxTzg/66oYOp
uyJvqV315B0p8X/Qy3MJnYj+14L7L06nrMtrfNK2BOe0qjMxLLMnXKPVp/hmE1UjsAu/3h/DmP55
s6vk+UZWHq+/bCHKA3q2HSFRO8RtEMJj8NYQjxS7XFVEKnWjO7gFABOCAEk8hBdBTHCeDtRjN0mk
Ar0op9bEqhV43JN/ECAi0JQnfcTAfIsg6GYbfcXIl2LsfCf2tnN7cGtKxqcO8PCjSgYnMJwhVtsg
khmSj5F/s3LApUqylOksxfN6hlV8aWn1HCdl31/HfxfOsxGWpLu4LcIBngCbtkHsGTY152UH6iwM
vpR0akKQgj8+Yqgm3Gkk8LkptKg7hlc9UhnMheMXM82kAPR0qWu0s4/DvuOGRr9NDMNzTfR3rAtH
1sPmkNBMiInpEc0VzcarIxHQbps92F3aqvsh6fqn0RY2A8MvYmcJrjWsmBSR7bBH+mdp1Jw+U88W
ZkW4IyWY39sG7pY7V8LdDNGizKgQZERmVwy2/9rGOAiK9Lm5nhe+OKQnikUQ4C4CHEQbIEeXX51w
qcz9mV0sbOgzivmNxInIZQ+qJ0oz+i3Crtvm2wzU49OUO7fscShJKtf8iz1yU16k54T9B1eNxUI4
8PFYxTNozW97Qkay6Vf/BaI4ZE56RRPtURNdCM21ALie0b/w0OZe/BxqkccL+hYrwvPwdDeUtUD8
Lbb8FmVqMapW8qxCxoQN1vveSeUthELy026WIF9easNF9t1xNtTOi0bnVeHlTQ0dZjQ+MpVyLwx5
k0F8gFJI+VKcwZXnJ9d/Eol8Y5fyw5y3X+J9m7sOunxNJ3P7JO+hye2rJD3VJcNxEtctUWson2/F
hdbuq3ySMvZTLAIcKy+lTa0InqmwWylNK0xAcDeVDrM/Vs4yIQLzeO+LPgYg/QoRcAu1BjD1wTCA
3yhB9ZSMZZMom1bn2A+bRDzKWwlGBvfMolxTIYI0DpV6L7GvEFnDL6k+1GySwBeLxyyL2cxDxJSe
Ii+i0qmKP10QEt3IS/gKx/qGyG7fU+erd93dwebH5V7WyY/COWqYzVuR0FL7JPE/vgSv4a5Lm4NH
U1sPF+81nyFTMn9IFh4mFl7wYrNi5YlNc+CK3z556MB1yf2sue9dZpQc8RhlZ6bFojRECc4kKBpM
5YyVP0lTeO8UBTeFpLkd461td45e8t+oIlIbpEzU6bO0rN/2DgTh7mNQNF0CgHF4r/rq3WpN+2DI
LS6BngtM3cZjMpFqwqGCNAiAqDN5hZ0WoioWCOVh9mIzPK8TxuMrMdI/TPI7sNs7nxTF4f9IANEm
Hrcjax4QYVwEFkiFXNt14bkRMGj8sj1bNnGl3SnSoZWxX+9ES5iASEfF8i522QA56mH0sCQW92Hh
UTifv1LULxZExTGkUgetVgyd8K1KZjaB2XJhFD38dj3kSSfJyH+qAdNhc9fZBWqmLcAPFs0qZLx1
A5XyEW9tWG0p/BYKhGuZzYPJK0e0SPBCszO1fw9mshoWY+8KSzfVzZKn2+KAwWhf+IwBnrDIuYTO
YKmmzAHdvbEgR2tnrsJi5+IhcjkiJNqaijbfvuytDzVmbyX0D72U8l759h6x5sBA3VEf/duxPNCZ
nyaFqPe5bo1Iw0r/ONgm5p7QlPVr9lb6qjQqicin5FcIlxOio2HJtjVx0VZdzhvbVnCB2G3fBuAX
62jA/PfUKWDNVE79R9duMDpbLn7paKLKn7UtAOStcOmMGG/ZNe5He1ZUmc0QPLMyUqZeyVKShENJ
6jjdqA4WybjDkR7BYAj3YtMST+LBhYiEO7o+kCK2TBQ4Zxho3HtePLCb81YIGOVhct//T5XVAIDi
L64Uki/tTpVqr+Vtsn53cTAFajLMWYwn7MQtikC23/BnSF5EI4gZrNyeY4CN4wGe0jbXmcevRFXW
XVrHL+H/8thx2hBQiypTPWMzwq3X8fJvWYQTA4q2MqoQwhETsYuKEhKyll/DU6E721hZjdtmoOEn
AhI34udcBiLvNbxDhSOEw3FQ69leWDMfboCGke7dCb6OpbkXc23uII+/6sLLge1kmbjs/s7H6CZK
PgjdV34SrD9oNJOOIz3uyYpmd618wV+xT+NDKIVMGNUiWRxy7GBMJxhbSrFXsj5e7oAvVXpbjm73
//gJ2738i4KACDys+rO+RXwrdPG8DWeQUMAXZ00DzY9cKZXJ7cch3nOgABRkN+GbisBGPSc2moY1
KTcTv3VnLBpMGdhgDLw4eod2Jll+MQd5jnO9YGk4GMbot44+lE/thksWN6ka2JTvT0sLB1iy09de
e5QO6DAs+mzFdYEno3HrvmmAi8+duRcAf6xpk5xrFT/Mi+GD3I3Hy+bw31iHIMDXUaA7Gq8B75z5
3vJ7jZVQwJf7IZ0xK03npHMwYDmZ63sdH2cuofBlg7eXELOgFTRr/bSs4jlpSznZ2/pQw+pzkPSs
Q1JTRRf9KL4LSPZGq2/sFG+fY/1vfxOy4DYG88lfvYQVqbVdSbPIpZDPyCiKV8CZg3uWBRwHX8bb
rea1u/gYs4eej6uEeDJVUwyw4rLaLnSZ+mqqaq8o0/fR4yHo/KN/qyFiKMAWXOW18rNnqdr56Obk
E6iIDgEy+SdmK+I5xt55r9Dtt5mfnLX4rpj38+10i3YlnOlDJVCmN6F52Q4+NdzTuDKg4o+eGiO5
U/MZyY12T7MhZXq3t+zpF7WCB5sZl6cPuEiU7D7W9rLC/RKaR5eN4tu5daW4mrbgcraNabbLNajb
o/G0aK2KynIkVpBQiR2hI0k9fL0CxmYG2klLV4WrEr63BxN1s1D9z3hqsYBscqvmYBIG6sBpazfT
zXy9wOtrlD7rlrkkhbOhgKW/G6CbzYJabUhIPFcXiMcTFT1F+Iui4PpsNe4t4WezrEYY1KBzCoQ9
24qv2x74fNe65NdyfWFqNzKjNNqRdlzQqYmLvfkBlHQD4/2J9oRAqEFHYDubvLx/WtvUgoZEqFaE
q0RFx63DH8FbkN0/H+ZW0gqs298RzfaqvqAmQV0zA2vz0/3DHZKOaFTiqEDrtaVV0nRrKDkE5Z29
c2GfsaoNKGUqxXbxyU+EFKY3vzD6o1MY+0VT4S0wiPQCKJ7eM++0iEAzju9NiolhIxkGB0Tu4D6h
1QyyN8rlbN0shKT3w+B9hUzxB6q+bku9mo754Kew5d1YLoWvo1UtT+SSNrgn3WkXpvC4EMBsQKhp
UdZihW44hcVrv+sUsz05pU85S2bG3WMIdcXLcf8BqkgjiwQ0xW/U8siDnPl0/GNaLofmxCazrLLZ
ig+2ED3w4g6dc31vFx/TrLPjHClflJe7QC3b3y9CuNMESLV4rMam6QQ1KS+RQvNcfpMHKHp8OD+f
cUWvbIMgmzsLMHjhWmpdfw5rV+AZtaLx1JePoPiYu++6XO5olk/b99PjJ6Ile9Cq5F6aK6GkaxcS
nmZMPE6co94+DCvoSWRvICFuvPpR1hsVQg0J4UJL0IFogC/t6XMev3a60QKv1KD70DmL8sEhK1XC
IrxYbWEKME5WX40RQpsnjUuzhwqs5k0a5jGTNu6IOrh2T0ueK8tqNa8PZH+Jwc+C012GSywDh8aF
tBGpwJEZAWLUrIllFeWSqMhmy8jmi9Lm6vGdaoPPWrJ5or2gJi36epsTu/9sRjv3/xen9B4Jg4JJ
K2ctoaxf1Dn4Y1yAfhjfxD7o8krMOU6dUTPav881SEAr9cHTMwbvkYNYZQeeR1bMvfNBr808NI79
Ipfm9TNlKs9GofMFP9hq1axMbOMhyCXhvbv0RCXqeWzp/eqgSbE53JKp604A6sx2N28fgWIQJ6Fd
4SPzp+dJ1w+jAc6H9eWXws+KPTs7rTVURXofWTcZU56VU45PsDRke056wl6CpOtVXMddfvwPKdo+
8uhOGZoKoWlOwU37dyqt5SYR46pzP0tTpDy/For3CuzuQW96xzKm1oJWqsZ14Brbu/h+/yLJ8ofN
46qCYQ/B9rl77OfHJuG+2ZDQFAOWH1AUF9DVHPjBBlUNtp1VV0jYHGK9MF6pSPsQDI3L5hz/khDX
H6QQXp4RM8lRIZCMZcoAY0WUCqRYd4KBLT5uPRJTYUKlAFSiu8Wqm0+LVvWkp8iHW1sZaRp+ov++
hSn+QWezve8dD+OowwFee1xH4N9nILBFpbLecpDHPulFm+r5dQCRJkj+ZH/vRb1A35XRMIr7KNKT
41Ut58QlLXdgeMeBTkxZ/js/LrUHL77n8xpXgyasF3BUb9qq8KEj4IJxBBG/fylGSORcc0ocqXTV
1vxfPs4DNDT3FanQu9bsssgdl9x52L0kVDtTmbqwrSPttJwlXbzdIbe2VdhyABehr7lElRWps6zF
tvPOVwlm0usKZiSCBRCPQy44yUBTETE1fP9fZw/wBE6kkG4CN31XC6RzIUjIpd1F3Xjr+R5JJUdK
J6uEndYiutDEJHxVDXI0bwWlP89GvBwTWMHoe4Ha7SAumyS+VK7GhTQT7rrFYfsAaGW0md7l5gXB
eZt06tNndrQHnfnAaSWAeIkgCUbtfocfJaLG/sY3kRf+oE7+cOpbjLaNBKc8SkootS91/zSPnUpV
Wssud46m7pAcG3S2uqXpOHUxgFuiuX2lQNJmKKp/k5MTCZaTH4SFqCA5JZjPYGMLlvcXUyuUa8t4
DeFapTvgTXJgbADGYPXVN0TucIqr9uWjyKW+H5Yapf3YF1Xv2gt74pyILd/5TQg7892qPwxBiBry
aznmS72eoVXLb2RD5pijl2zQxIwBnY+sJa5EdbRTWCFYzBsKvyBvnkEHSBZboZbqAuz2nK/QvUBf
hvXhQlWu7YBLEfSjhWOxAb9iSgpVuvaa1pF5ppcFQ+cLwITLEffPWSaEUQKvIFmm/oh153Kxcu08
TA+MZtYuilqw0V/c7DXpD53vH8jx/N6vMq6EHWevSguSe3uoudwwWjl6XiKQcIX81jzqsIrIMJoU
pZArfCYDe7Zrpq9glFQDw4iKAW7tyqsv/pXlUga5YzZl6ZArkFFbHJ9+URWt1FAt+Fismm9iigrK
pUtRZ9YjWNkdL8jqcCyr1vL2NzKrTvREwmNTe9jZr4VRBdW9jNBILgQK6sqRIEzfodYiyHFKlBNH
nT1/wVjUB7QfDgcnU3tA0ZVyU/JMVBupf2JjyZcmvfsBn1iuTusXSGlKX8+iYwSDo4Erw6OQrh8d
Xh5tYmadeyLbiQE95N1LV1VQdpjh9MD7lXvNRG5DS5cEKfGDisgwFy1+DW+OHvvrDkUbY/mkgiLQ
DDnM6VJfFS3MIHAqzTCRvCz6yca27b3l5RXNLNk5t9QEsy2haPeDHo2/c//syGjJHx/eyqnlCxTC
+f5kDSytEmrYGVbIJvynySgU3m/IorHyBAgC56Z1UEs2MdXCPdGNe1QUtGm2/9TrUGpXlrZ98Kaf
imzNap6U9A2MOJN2H7UDRRYEAcnFQC09IF9KLYwYYRAnE0tteGY7o8MSSKYSF7lvMsAuZyBC27cd
zx0AS5+xAf/OMmtv1UMQ0LYD4EWk6yh2/A8K5+x0/SklQCVmvEdZhg2FZGr3PYLjJYge2h1Hp3nG
yEo+qei8J5FUvtXfQXMY40Eb+pmkfSqLUNuZwlRUcMAfrZ5dciE91hSxvxrAJkrl9MvmJHBfVylk
nMNSNn3eU+mlig1BQrcdctNkfiO8FIjII98IriW9i54EcaJ4dWair2iU12nWlSRe85Nw+tfYPkPZ
2SSESh3z7VrvEJ4rMwT32Fd2b1ZY2QZ/NUrCaWVUH34CPoAAnRd+I5PniPZJKhYc/SCOOmuydqR8
GbxdmbzA9jpS0mn03GEUOGMYO0O6sKuGIq3Zet5sFSsURTko5/Kbe8XSXKh3mubYFJnfK72fjpYi
UFsjQVXDhe77Xw+dYUyhQhTF67iXzGChdBhtlv+EvtbFi7bbBbdgWLrCJ2tDoKJBaPl72jrfn8QV
OyHQMop6UU6t+C+DaTMNshB0FG2auwBBTwGz3iKIQTRC/DXaGpZNOQpf6O1UnWLAFlwwiQ14IWFa
EDvyc6HD6l0W3bYQZrn4fzPXpQp/w3tg+UlCbpgLknrYTx0XTrHAqX9Y4ce84lSyo9vq7vr7ICKH
m08fp+QOiwQOx31UI9q1pt+xrWgAYV1yUlnTn5f4eKKJg0Ap5TQ8Lss/zuF4+Oja4LrnqeT+4KR2
nVSy02Eq6s1Zmg3awizrgutwtK4ZR8dTpu8T/mhM1pnWffOrtxx0+12XkxP9uF7mI6iImJBawzKf
zPs7ts91GgO9qIlLr+FrQpqZ3NKJsWnH+PaGKH2VmhvwdkM6b+JBFsDNiosWVAhjCRbyT4eUIpfk
TMZ078FfC6bmFG/Gj5rY2NVapGHNoeDdL1kuOXo4sjqkFGoDkJe6nIQfaHLYLyUI+uCL/j9KGPxJ
fm7culj2TPiYUhlgvFNrBMpnQoKhZRCbsPXrMUdyd+qU7XZAT10+GRWJ3bDBkmuCitZoyrtCx4AG
XCvazkMnMQKvilwq16Bycgnn9hGCjfIo7JFe3D23Iat13aTS3deAg6UxBLvBauYIZnWS2CmBKXJc
HD9JXwmQOW4SJlU37pl4baEssWfgo+NFUyyelQmuAfevI4dmn0K8zav9CTAPyhif3BnJSKgaa2Ed
1TG9U8NcQSOOHfhIiuV3cYSEu+yJZSnBhXD02N7GwCfzjWj/VLMxPWr4zDVi89joNLs7ulqf2wTU
etsfz4jzYYaSM+R4PJbPJ1P6eSFo0HSUAINfg3TkL8KRQmvRfF471q0OHDzF2Kpy8sO5Z5R8xo8X
qZ8he83rLEA6ql9ElPHMAyN2iRYSaRph5i6I/8j9gUzsobstOahtXJF5lTmX8bguis7lIceeRe8u
35T92C/sB427vosjQvR37KtCx3Tvfm3NpBB8ybrQ8AQsqT141VO054BpaW/zKRJPDjyrA0mdxwe2
2fq03AvcXmf4tp4VdSrc9d3YvFsy3jvdDxZtjaEKGYbkOYjobBLohiZuFtrhk6v72RFLCJmcJIbC
RHEKgf1tH4REtnuURpGDZ77donDVO3Tx7gJn8F/qNpYqYRxaq+jJg68UrOWv+YmbX5YGT1mzdMxf
cbB59kF6vJfXfSPoyHvHae5oPoTAVquTdh48tVsvvsjIvJR0Vs7L4O2shn9g02qE2h441G1p+sXj
QipZg09ilZEJevQo+FFDVOsrDp4N6Zu14AwjQeqGDxslmCrIOdiyGae6s6261fOeESDE54RTGgU5
1kelzpImLXJw5cUS4CBDLqqdRyrntldkBrZO5NFgv/9Ykz12U4yzSRjvBk3Q5O/9/zIRErvh2TXR
Vmo54V7uemnTUZ57FktC3MQKZ0YL9Sdtofm3tXd0V6uz0CG6a5Ikzj164Pw4enxt2fAkfjPeUGWj
nr1oZLgM17w1gOlecLqNuZ8mvneAVkFM4HIOiR7/kCApK04b6oMpICoJ/ZIiXE5cqNGhXM0b0tiu
g7IUdbVwpNKC8n4Yg95Z3gkZr55PKzjdWqwTluuHL8IHvnECLj6Py8zkJuEsBKAaZje5ePVWjF8c
qrc9HyhMcEsyTvwVgB7wrksYqpnXCvGglTVvVTeQ9T3oskUMpqjbybEjrQhFBaKpSwVYfSN5yIRT
mu1BE8Aajp+64Nxqvyg98YndodecC8udUdBifAhzbcczYzdCNL4z4wub1RCoYKJrvwjirnUTsAzB
IqD+11Fo5n2yVc0EiLqlv8SBCpXjGatwbfqljdY2/5vcO+o/3vjQgzZf6bPvKNQQuqa7xE5sBN00
YoJAKQsRKi9dgnoRj6mF0XtZ+I23AQuWtJgQR8egepTAbsgLKr7ZknK5TlcUYa4dj0+/6qOeO4Dj
Ekca9ru5wEE9iUBmK43WCkA6A/mFw9WsvMuA1ZmohkmqRpOtpLkmzErGQFh8RY3oSLe1vgWO4BhR
VcmdB64TJVMPwGsHZptDXHT3WiooPDJVCawFcxqXg14pBW9dDXROrhEDM5Tf0wLTRB9eBh1wSdFS
TrGG0HF2oVcFWfqAterhikHLVa6n4UYpP20vw3Imb4fOQigF51rHtQwxfNGsO3hS3vCLIv3CnG0m
bAeT3/Fm3n5OU+blK6WzeSZajvWB/DnTMRRP+rues1PYOju6U2fOBHwfq2rLkR6k9KDjXpMq9b/0
ELr3uRMQIZ1sfgpieBMJIxLuSBVhri1R0eeD0Cst09auTNraQeljr14EezWfgYL21P8Nzv4vudM4
sg6Y6hAdTCahn83bNI5zLqZBhH2drZ2r22BiU2et6iSM9ES0b6jAVrDj3sEXhUGTIHXcIvmYGDIq
n1jeQ2+coddST9w3XQveWRqbXttklDzQf8cOqq0wU1/756AYVUIS6j9kvb5Y8rjIxLiULNFcWWpC
2/Mn4J5Czgxy1UEeURA9tCPspQ7jgf2tjHo6aWo7J3RKIrqQjTq+WFZqw7xiAag1D+o4JnkDJyom
N3ORKzaZbfUXKq7rQ9swuQ8WQfrifRDKJ0peBg23sIu7hfHNg7PDWlLvtYylNbcxvKGk7HPKCAuo
JWDC0KGHr5IiDJqf8AASRlg1S8JFlIKSET7LqkW+D4ETMvKI63vmPXkXKaQIM0+dlkYNDPR/SwRW
sFd1I+LlttLfmSvnu50dsxjkhnyt0wtGU9cA7MZ/hgX6BWzq3UVmbDuYzfOFWdkFdVFFdWrWgbWr
aUBXsjgD6Telk9hK+/dmWok5q4SMmku5m/hg1HetHsSFt6x3P2jeK9Du8trnZx7XDQyDHXKA5bcV
r03meL1cKZECAfMYZBk+Ea/+Vr3P0HhSoUY7Gg8TZeUCTP+9MlW04bF2B7WBW1fxAEETju7AiQY1
ydfW09Rz9laV6/7bQeIpfBBreyH3bWGhEl82mwDhCyHmaHJy6Ka4+nEwL++fFXiFEc7i/9wRAcju
k/ODiFlcl1EPc/bGztAixdhQsc70M9wuVRfhCNv254XbVmog4Ht0a4DPWYS4dxaCdkP9IrG4Pje+
lEeDAObRFZOEhb46atSF6Hrq+oc7RlppgpZjuFq8ewLcN8it1d4mjAOfuVIqkvPJTY2eea9MG5nG
1zyZ3/+mySUq+IfuSUfDjZWt7zotDrEYQNGTCkRCsuDVqEtWisPTOSqzYpb2kFXg8eKYJwzjPgkx
YP52HA5VwZIqq9pI1GbxZs8fTo4kXcXYf0D9RAg3NWwM2A8tnPGPDoS8fsUawHZHzUBpUCnVUj3u
c0GOQ9qKBO7EgLd1jpqtpvDNfQxRFgmKkmRxMHDIPhaI8AgW0MioRuC1N+go6UEOQU/9v9mQujp7
9otXVe8fbQdoOUrHWADHRrHTARqEW536EiSuUKgyI2/+bUJ/JUlRYt6lIurpDRIEh8FHlIP4L33M
bNJa/YQp13xD/OFVNo9k1e3fURisaC2neTQXsrvdKvRNAyXlr8usrNjhNWeEUMdS8WY2sMOJ1tFY
k/8+tc7yD4JmWvtOLk7OrI2BIq148kGIJpTlzAk1+VM4XGoTKRsiWpcOJDcAtNM8WhJ0VmFuWQzK
heth/K20lbO/aA+7iVutApzonxhMF2T5v2W111OMWLUxaXW0wTJY3lVcOH2wKT8yWwobcXJ/GrDL
+k7YAoyJXidDKB/Mkm1nUqpti9eVnuwdfMGgrUcYB1kBbc75cTKw63a7VeRkaQ138u0x0plQvE97
A5eLLX1klbjDO0FDtz6crY47ZozK5QbcuzAeMSYLhPimbksajv2BoJe255CFtaLFOYgNZ2z4CqvU
LJ6m3rv8f6cgGFNeHpxcqAeY6om046+mJHasV8c6tdZRFJwGLVlwCCXC0zMDe40GxkPpuo47obVq
QLFKjAYG3dPsxkZ0RGnFK6WNpH/yoSrnilCBGIJPqAKzrkv+eCwRgwVkX5kPscfPek1+gQg5EEoS
DhjgulfO3B2+5fKY+9sYVv5S2r0YkPJdtFQCstTyysnE6oDIW/YRjD3wH13xP2au4NOHN+8VaAlI
85EXscw7VklnIHi4JuyDJjtsNiBLKuE9JMZLCWUfHbIYpjplwHxxkp49FIp1fTbM4AN56OnAiJgM
G4Pu6TOWBhpRg3GsYqT6HVLZNcXh4fk8mYn7pxu+FBqhkGCvtVhIzZsIGB2MnSBj48GyGKtYFTpI
bAlPD1phQMpkAqG7tv0Sf+JRP5o7ro5GbHr5O8Vw1wEBlZtmPJAPMyonwzYmA2GQgd+2247SYgSR
nMa0qeVBjG0t/ydLhnywzao2lagrD/1zU/9lkC7kRafkYGrSoL7dAxj/XR7gUFynDIqqXfE1FMGJ
rOrNPctywkNIbm/Hhvf61zhTKLbBtx+vtbqshhvxXfBWyWM5svE3sK2K00RD56DOT2wyQ34QbIG5
SBore1hn9OI/uwz1ApfsANsIoCJhU6OKCvPk5+MC5ptMuZc4Yr3VaSqQ3LzUiVwM3MBeUOSVKFgn
g74uFpaFA6clkVzn0J2AraMUCmG+6FrlYTHOg0VQjxw1ztz+mE26QT0OJ6skUlf5GFUzk8oL8ooH
JXV6HJL6yZH1igvHr3zI7REjpOnc8NdRZsv23e0sTlyJbRtiMbhJ1j6rikavtZ/3JiDCOgISyTQt
Wl3lJuB6kETxjFWWOHAGjtegUrtNWowEmA8hNIFsDJo140rqpWycozr76AnWy4wLpVYtvbAs8itq
CanQ4ITlcfvdKrkt6z6VoxaGnLYbQwsJ6dMkwhja4HWBgycDeT3w3ozhEmYXMh2fRDhcM0kV06JL
OoKNoi9FVgWxgyizxJBaQGWk9QYRUoFZkTHKymbUMkrBoX67oiiIBs/V+/AizgGlmlgF4t75aKRd
sJGONRPnxH598slY2W5s+uHx96WtvAwfN4O3478wPaJSWvjA4LtfsuzkJCinxYmpa37G/GTUAit+
NJbi1znttr9r+99FQZySOoaAViJ0RkM+lOFFFEaGYCc0TpARGZt7pf4LzDic52O3tYyh1Et5A/kC
pXV6WBtFOweAMb3ZUx4K8+dLfkJQ4VDBxldIXkdFO2cql3hxoCk+t+Kpjw+5lR8eVUYfh6Zp/q4o
f5slMxue3tvVCgAwRAmBM7GTpQPVESUDcTs845OYQhxRVoATKIiLRPk+WqpYe54EgEXX1Vnc0fhp
cg+mw4jORC0cs/YRQM2jzRMiH4m/eLbLsSvjwxkJLUealIQ89Y3AkrhfdYXcPGQFXf+oJiSSoEDv
XiqlxDI9RwW4ggbDNvDTxPlfBD1nkFEjyHMFJS5mXcu9w1SyH5ZC/vD97xYTm4pTWbjR9AQj21iw
ZhiaASH1G3+awmVwIzAl6CJSpQH3yf8nw2t/rlurrz8He+Gq6Zti8h+XslPxE62KKD/KA3NQOrZ1
7mozlb+sC27nkr0oHTTrzBJ0AQoNiyuhOobbaLWsNk3W/1lqnam2ma/CrwXpA6ndCVV89JxRsiUE
A+8dbVpDMGA752+reFlXGYGTuPndvrwJZlkcXnmPyOWpVk6rPT43jeoqxcS1AQjPxDIBxNbHhMRS
a/B0TwGstvKJfEp54ynEormQWu4310cK8zWjiahHMUdfMozJmsKPOh4LC+Tp+Aa0YMljMr5vFBea
iHwq3QlRn1c2QxPh7nBzDFIgF/zbxPfZFGjNPWY/LJokoUWLWoGI6bngCBM6PoGqBzPbLKOFa8CN
5/dblQhTeT//0YjPy+nSqc0XekIxzC2G0svHOlYsdew46G7Z9W2deoXjoqBN1a5TmAsifwN22Oaq
PdZf5UwoTum7Fi52NxqRDiC/brODSUoZ7VYPbWzgwdje0XMMBWbwkiCJ/3+Vf+Yi7J7U0VCrH1hc
rRLVpKRWJLx3ww7H0oRUVCKzH03kwTmfyG/dWMcCe04NCv4MEk2bmiHW/3Igurr/lUW+b2v46Jr0
TL98AaPL9VI14EgCAj0nmDruGg/h+5ZvC/sm9qZmclKf7S7+E9CxcMkIzrSQp9Yj+40VHcLjHGX5
z78y1afar4IMXFpOD5PHlcONIMv1uoARKH/5+CO5tSj7TQUo8jGKnbE50yAK/LSzDI2YBHKFW8m3
a03VDzsoeSF6YlnFZBFBKTzEWhUwtmsa4Cl9nnyoROZ9VKWEpw1UBJeaNaZCNOXWdk/fq7bJ8LNk
ap/Zvgf52GdKSprY/BobQqKWSYad+xkh7MYRFB92HR7XmiRgcsYsJRiUxsmaKdrWjVERgC/cYYfY
FN8HF5AfGNEi9ZFhaI1uhjtXp+431Aw74j+QXMy4mGwEAa5vZMTRJrjCEzytpkqo0tDDnE5Ot2Bn
T9zY8FlQNwgK/ARy4Cl9r/Cb6YPy8kA6RD5XkRzMaVaAShhmDJiN/rCKw4BRKZRC2pTzIVEP7rrN
9cBVotRrS+bMw9Sj8Hr7XoajScsw7sukb+j+gAVckpx6yRGXX6aL+sOPtYntR82K57kCHaS3fgjd
DKpnlAvnQoz2jsIvjmOUZZYpDsai4WmkZ7ny50pgszVdqUjekwPofKchuaOZ+c7z17dZneYlS5uu
P1ZAL/U4ceUsSEILRPAhamS9dVnqckXnVIWEew/dxOvop3JV5ht/17WMKaassRnkwPjWKSgrts5y
Vq3pKxo2jceuoZJg8UV5cZllwHxYaGqhDCjhhXaSRl6pAdljZia2Mc29qPYqcbmQQLNc/C011v6I
gWxjbClGcGtkuFQomHnjQgw5Qoyzea5KMH6eGNYBfxAMWuHk6hLpLZKx1nXJda8zSIjamyhascLK
gvHVim5RQWoLNs2lZsWmMXR+Z1faFgvFB502p09ufOMLbhrJoowZQwNLa8OrRO0cb2SHMSE+hosg
bjV186+m9l1AP2C9Z7ih7W65xvqn1F3JDns8UYgOjG9obpof+b9Fto/qM6DCtK8BIz9jH6y5d+/w
zX2A6yZh6j1smdYvcYE5Juc5m6b6y3bQowt1wFyu4NdllHFWQBadq6p6+UvwBWY+A9dq87jZXV0y
bgC9jU/rEKMIETiSQD7ZF9hhSwL9XuT5RSDLzApNDB4f7dNXhNV1AEDY3EUiYkTwgrWwbwiB025b
Wj41jLzldRFnI3lJ9w+Yg1ZkJatSzAg+2f5mb+qHm8JrHuT5nizfTzsvBSIAiAiYGIg85DvPeCfe
E+UVDu+xP4TVQ6Sn2tM/9U+iyrkOeg379Y/JNB4orpt2CxQQcZOpdnHulel23q9joHErFTvFelmt
kFZBjGi6ysa0GApCnB4wQ5ekjgYED5QugT9FmXF2K6/OrMl6jFWbhxBQ3Z+1MMQIQAO/HGBnzGx1
srnSp9fn2WER+knUZCvlmEZ61RjNfKBE+st+GTbPdD/Mp4Kv7+QGoprDoOJyLND9rIooj7/cJqL3
xhag+ii0xD86mDNfoE8K9COIanw/jPSh7Lfve8lhqbuLK8QXZGPL5SWKqZHN138BTtw3oCXOAaYX
jhkCV59HVRM0x4ho4MGop+y6CNVH4MAyOEGkYQ7QfwvUUXq/7aR5LnWnmeFCdk3dAG3M7qKpDvB7
+8QERat9kDWWrvbzF1rwF32sv0qkj5t+Z36VWPbYTsc3w44zwBpDB/DYS9QHrWz3DVaYo5X/995d
pPZe0I3cjc2gLmZNGA8SQLjlLjmq+WcEClCU2ZbeOmZF6Kvt9mtlF53ZShB8dEFxvd249N3uLDUP
D4dIoRk/gd9GFfp6VPNsxaJZJUvtVv7I9iQGr3cwLHydH4TjCBHfm+4uAcB8bm0AL9vK7BqhAdbr
y+c/EeX/7VAtC9ryllbpdFT3jCvK9ze8/jONvZjuydwtoK1SXeGN0sblHn9je3ZlfAlmZU8cYl2/
1VQhh21hPRLI/jXfQRL5D0Yjvie7R20B/5Ll2q6GGBKF+EF0DoIOYiVn3SONkFvbJZsCk30a32dZ
aVGZuaAZoUZYtPI3+9STufXCWQdb8GrheRXMJvIOItZ8s9uCbMFtR35zb2IXq/eohuwBAeXof1U2
SnztZ7jQarOy46rJLeRXMcjdMx9YUW6gwxWoGjcF3L/f4ah4yZAczDIDv2YZPLXtTVKQfnZrOB4A
X+xeoN+3PvzFmvGV+vVbXv+yrkLcU3A2YSJhY3XkeEu3UKJilZCVXZ26AilfjO5FZAhOC+TptZ0Z
/pm2sJnbbIIpJEYTPGBH/gxQMBmDAHAQ0gsYiGMl2U9V8effnj/D0Zphc3BEF+70zSi0GVoiQrsw
rTZ8VWB1eT5+9XIos2gTnedAKIQL0cTpNC0rBcl4IZq0TlgbdkU+tHalduAAJ8EBlWxdy1rl/fw7
0eyzmXqhj0N256YViG1q89f09LXfWtqTUaWOu+5mhWyBk75TqFaXIZDhX3KvK49LBTZB+XA4TfyX
GaaBh3qCX8TfPT1qSWSqgh9Ohfk3DdEzhLKmfc3NpdJY5lYGc9Xef8IQDiDMKGXVA0mXNxzajaab
NWTrqfONb1SQuqJDqC5qdvnap0/j+D9c/qV4umRwMo4tRFNNQXTSTC2AJlNmdr6wcPURGD+Y2QSa
F9AebgHRkap93N9+Li0CEQu9CY9mdeT/eZwWSwbGxSNXAywjbqImnAO/onz+u85ptXL9Kj5rtHtb
s+idZLciySd0rNRPltMrd842WyPk/ASlv0zAvxnwugCkSIsDAeWAxVFXFH4B5z9FWFQJCQBiLmRv
qaKQ+T1mVi5nxOhKo+lKUnNJD27rScwx+ywa5UHVSz+XPelBAA/Cd5sL4X964UkczViTMJqcbyTx
VVSmCgswlILrnAdy/oq8rBgwKrUV6aq1HiUfQZOKXqphKKk5CZsM/ZoVNnhp0kDrNoJKM6BtzaEW
rUccaGqPdytLTJ0I4yhUsgn8jEsOHKy42NB7mcIprHEZpAZugsgOyyXWH1D1qoff5XUZAC70pxba
6W6onpg/SZZyTMYV1wMhe/t5OaqNEyb3FDGFX0Nn0rMlPXQoS1NPw5pbkhdlcrSL5rpKg2u7RPCA
Ve2B6/UGu4SSQXRbISc0UoGXYeZKOuxga/bwZCkMzJxid7BSEKi1fgbhdzQQ5Y8RL8F6SGI/ISnK
WJFm7UiEhaTJaMzdzO0PAV5QIFRHQpTUSf/607RVqorl8HYMkUBE9Done+Dmcdb6a8kKeZJ73rL4
v27PTuK4aEZ4Kzb+eqrsF4s+piGNcizPvUk/uaNe3JTdbmUL2tl0bhJLc/KxcacRZrCrY1O86VWr
LETBWPKCJ1QZbe92gxFhvtyyjdTzXrDrC70jGE1r2I+oVp7buyWQTs6+FcatVT0qAO02+fGy2sm3
eDcEcB6b3tXJ70tbDfuuTMtb8JLXBE5Q6E9GFaH3gaBYqEvreFwFOaQnPZ5CpesPP9lSkXqiZ1ET
PhPDWp4+HqLoWdvA5+XjLSBUE/8LqVhQu1Z6AjFYFxydW5rR7YQ+WsawoRUsB0RKE2E6YoWEwoZP
rf0ckmxG5fLj+ObcjFEddJFy13oqI6ilt7lA/KHEVncseAa54T6rHsIrCJHSqUU0RATGnlpD4Mct
xZciRqWPZgSk5hdDuhN10lWONIlJ4c9OV/wl7f+E1HLl9HW+NYx8ylzPFox+r1IHAl7k/RRPfPnL
E13e64BiJc+kv1gX1vcGDPG1/UNoUU8i1Kge3CR+tIE/HfEqAhgGgVwLukJcsoS4s8ydJNV8MkGo
CZcyA9o9CtJ+khjtD2D6PZjx4HLDN9LaVF+l6vvfh73Y1op1RbaFvMnooj1Up6yCsdQwzuP5pFq6
FnNi341hLCw//G01OLBfSpjV+tf1Puzuix/JaKzJ2PAVzPzUC8q+KH3nbr0GVw4HVCexPlVU252Y
chUTcCOGhtpljybcs7sU8bHXY18x6P2TZ3OmL6TlBNtIygaiG2leoN5EZBKYwPTLls0HDjdEgs9/
KdcNjHZEXndAUPgApqbD3dweI2HMMys/26QtR3uMv9dTMGGBjXspwEFsq6sF/4nflPUVyNiyBFaI
F0x6YDP485Awuc8YFfe11WR6Cw0poqIPnOPNa1TTqBxO7th+l8DAOKJH9Sf7bORyL0G2s1qqXpgz
HFDZRzPXvAxKAOn3/2w8SfCFDrffA7MBPGZJN5r6QY/8CaHBPBLBhsg4KI2bTxFDreCgLSp1W+LU
7Dqgtwj7tzXP9FkClN2754Ba25WAz71HbOFAnscwCFaYuLuMu/Alfu58bcVqHmCKya/R5m5jOaE2
3E7bPzs4E7Xic3/AsTSJBgVChdkVg1C5bhGVCEEu0ISBnHukbjtFvujkvY04STYQYSeuJWThZfX4
seVDwS3ntlhgUZCUHJQhi1W8NjOlAdxrzWjg/hfEzFlYXCCuaKN/gkCQuqAg1Qu3WsLxPPUcKgPk
jBrDUc/Mzxj5sAnvDShvVN29nRAhAR/SBJm5AHwvRvbirLqOm3FX6ibjCJX0X5vhXot6WPq2Zm5O
Og8LZcQqEiqJZ0v11VPPxC1aagTva+SsBL9VO7W3tQcHmJDN/Jfp5TB8Rpb8PqmV+8ElWocHG7OR
tvGX6ZORzhlWIPqIoAt7k3ytyaf6sOzlWtfQGolSPluwTL1j1bE7r6azjnmFFQ0+ptZhxmBFZ7CQ
ZecEHUK07U02KAPy5UhmbTQU8nZbWETIwxsNld7ijXhKbDONQErtOg0e19WXDUp9aRkb+UVYM58w
NWc8jEPipJal+t82mAwGJMYlXR0CY+EGcCeymkvpgnxAwEtR8DyupjglwK/glNoAKf20PU4HSKh+
Lo27ootbFaURHWKP80TBZ80DxWP6BSge1WZ9+gjnGl31X9LJrjXWLR2fluvElGGdrGaMoAA4moAS
fFilGXXrQa90+NS+h1AqnnUsFEu6iZef8hWbhj9tDDaq18XZliyUuxpHbee5X2NzrB4v5LaaUbSh
C+QYNrXdGDCWtZi4JOueocY5cd0D9e8TJtntg7I6/dvIViOWCmbKtXrJcpTBjLR54T/ND8GjdDZN
zxSehVhXAfeZ0DzJJw57DzbBvm/y84IoZ+7hpqqZ36fqq8z1v0Wvv/BX9DBoxRAWH79np2pipAvV
ocZSasivuF45PbvB4BUEvsz5brL8QD6tZdOUM7QiAzSj1wToziEGtfeD+XTul7E1XQHWE3k5Fvwd
j1reAkMoKRvbnQ7K4v0ds4SjQamArSI+LrdvhcAh8eCXm0AbzUmWqSZ0tqO8x/ezrn7Na9wyf2UH
sihpM0k2ocTP+IwbCSiyTQcrdgtn6dJpn+XJApY4DuzuXOYEidqaVSoj080Nqo/2J/Dn2Tl2Fyo+
0JRJ9jbclumZ6mYQEN8hXD4Bvyg3sw10JV2p0O4EEgGXd0vmKGYvSTvaAoBt+26+/Jdo1UIlJ4Zd
/jo6PPjhesWJaY6o54SYE4BdNyrkTJuPOvpaTolsFSzzn5ZXyUpckgLtHGevI/TxeKfdXfBMPI3k
OlKkclfntQBGqZ4f3wDT7K9c63AUzmscQqCVD1Hqi4SDNiLlS2EqBaJBiWl4iFdAsoUPYe7If6v8
kSg4DIReHnCgH8IwkksIpvUGEFma4tbPntJbIcGIfvAn3dVvvshZ3yVUHMGUXX0ksJRXVF1zq23B
qHb9wFFYDDiWKaWGkv7jYDoqRsbrqpYFehl4l0pAvVFw2cwixjTKB1tHBSIa8fsASJASdSdSFeuB
5rlk0V8QQmaGwYX6bVIIq2PJZrfFg4AwlyX3egfFtaGyINdNWAVtTdKrn2dmVeKlM+3KqCJN6g5B
sOR30/SW9FxJLfgWPoz3J7MHnlK+8YjOUY9JxmHO6HfVkdpvJSpT+NMmHsMl4+zwq0JlAi7otAWB
NJTT+q2vYhX51+wAleOIKkSL0Q0/MQjdk4x7J+VRqChxciSsfOkZcBAW0yR3HMd3bEV825hFDGpX
bBMnGmnVBO/Rg0VnQcTC265KZhGDpXpG0GYblRlD5ilD3kbV/rZnelDxIPsYeTUPIhLcrgM/uo5S
Am90vcWsh7nYqmuM/Bad5cwtKw+FCZFM2fjnmEseqcLjTcxMduZ4rxOxVoxb9R2APlVzt8uWMSd6
Fmzy+MOubINuSanIEwuZMeq4r20fY2bLWcjAIWFqiKLfUIiKHNdEHSPtUVvIWzY0fYdEyOUeig1e
fL2Xcf9/eyqp5rSk0REpBtl4+QKhvJcG7KHiAS6Ld+o21exCS3AYIjzP/LBS3njW0iGCCiumAAUD
TdZhv+rbKigd3lDbLR3ZHOKJGBAF2EKZOHuUkLZV6knpYK6T+Ev1MiViv8HpFzR9CyEttfBdW3nj
ut8q+3bjE7aCqNGS2NveU7jS5+G3yXPWQefq+cXM9n+kiz8NDn0IX/sSfrRE1A62a1+muIBMvfbb
sl8nFJ8WWTkc3Q0eZ9WJaVQFJUr2+uyCydg3kjYqNQCWuu0Ig8XDV/mIhpiqdHhCsd0Njt7+95sh
BP3q55n7kugdc5fK+ATPZ9zJJ1D989bzLLQcR3yU6IpS5PUIUQgHfNr+hw8zDFNCG1bN16xfNvkV
WCWSGF6CzJ7ww8/uFv4peYVHxdIn5zgVAYCCCwqNKN03o5sPz52aDVYI99DEi+hd21XwJuwJC6qE
GOJQRbb5ZXIcO/75FmToVuTBZXyF4k5LlYWOIisncJskVp6ngk2mcGTLH5eXgz5DJAsV0XiCJBm7
yCzg0nS1zfEESaNr9uIg1qJVDMR0cA1WgM9EKsNgoPizqFILsXeB2qkXoFNVCsgplZF6ZfdEj8Gh
isHri484L1T0z+KddG0e8MxkUtw3eeN9W/uEtPb32GLFCragYMUXkAn6U9TMfati+rjueiGqDZ1T
LchwSKAAyrzm5P2iND2aBgNIlkavBYtcitALLfEwluzxE/twOLqJvZ5K90kATVZg/EisvVPjHK/S
ywzXa5NvDvr+Ya6ii+4nkxjCdOomx72/9yAI3I6g5KAfNbSKwewKkoMsabMMgSnG1ZzfAF1st91U
4u3yjQvPh1V9rqlV5kfiAmu6eWBuVyXa4aTHtXrHqeU50TkI7fTesynJkN4w7yb6hudUqB3kbUW1
cEJJi1HoEi5xyNNFqVGETiF5nw3hXQl4XdhOr1NAr+HrF+rjUMlLBOy/U0qnMrXEcE8dvAFtlwQI
vK7oyj+m0Zq1d14JFbKiRm/lkRKLbZ6gbKV0USK4YL5Tw41vxnAWTThPBJxSCd604mrqgz0NN4Hq
PNfJDSBr3FwbNs13ItEOdqQJf88hj+LJWalxP3laITswqEeQlXJKSAPRj04THmpICtk5K9Sassk8
wbIa3X9nR7c40t49x2Jy+wtwqAPe/LMtyfFVct7/FxSTaQCLFY5t+Q4u9+yNE8AKTHlAtH+hmiiS
5E6rTq/EJBGTkVjguxqm112r9ZSEtfez9aYDpIRviz90HbTSvK8DSa78c4ArOsW7E9NCWbTrPtnk
p7bTiCZL78MUdJ6eIYz6EXYLuXU5/xCAz2tJ9PMmBwXWTwy1NEBdDo/HExt8yFlztfRbwlk7GI2o
aFYQg7nwn3kCJt1K646rsWUyzRgrGu8Na+CWdNGO9t7cv3zqUbjpI9DOhzL3XKfgNUHvTojHYoNx
6sRRCWV1jco2OyUn1WF+NUVnLPest7rd/kPFLwqm8RRFs8mpDJ+bLD6FM9fW56c1Mh3a0nR5SMIZ
x5VPtDsLdJGUibjdAR06jpR5s240p7U/k3HHtowb0w2dIa2Lz0v7AMCpAfC7cYvKduKQ/R97ro2r
cFxyArv6jplXgJtdTbnjoelZhQbvsq0d5hRfZEWF2BEwEp/1zcrVR+nZs54v1X4FTLyjAZNA7X0I
s6/6izOX4J9fR+3Tx8lVUkQcaAeQXyO93qtTShkhyuWE5Vtf5urojXvYwKA8q9CbPRLveVzCLRW2
KXUd+Qloxn3usbA4WGJkGrMoDx9Pd+xLo3CeEbdBKQ0hwb31WK8PZ+sa9x4f2tBc4REP8k4lzFNd
TLQVnF1oT9DajzqlQ8+/vNJtQ5Dy0uvE7hM4AiywtabqwCs52ba+A+CgsqtRTOeEoLBXgpyMtMfq
93UA98q0/7jY7HxAN5bStlqXptNyZ47H1lAKAgu1MzQN8biMzAUGcMdlfxjiNzNGrM8kUKHFguEp
5PmSEtT7STtJbC4S49aqHYn/6CKkPA1Df78bJRVNdpvXD4Ec5O5oa287x+urHvF/3zcEsnwb2lbj
lh9hEOuRW5kFqYTxaNVjZ20fIwFiDWiXzlgwGcHOoNNlMQjl7tcMWzBhPJOow5egrOlVUjdxQJR4
+5GS7Vpu5zZ5QqtznQrceEbs/CMdLaJ1AZFR50Vfij1shamBh1BTZV9kl5DUI+gOe9ZniloXl+2c
RakhuPbJ+hvAje/n3dOGY6d8crh1jKUDll7xzp5Kqf/Dh0AjrA50uV1qQ5bfIKUKljjuHoxsdG7c
fXUjKQODfXuXA1qz2a336iqEMuQIZOWCdt576KbYYKe7fazBBStTHJT4GL+PyWjE8d/hnMzWLmYQ
J0JIpK2pfRdxkmshNbeXNRcUSiNM5aqnnAlxA4dX4gluz7WSIbe4xg8dsOLnwVpq+7cCfm6ffD4u
Bl8fuMDXFnNoCPDhQ2qwznOmbtk+gvttZd+5RI2ar2Eg+5pgLMISbMy3s3wpGlhjasxGYrX9Mxs8
XVX3E5qEVXwk2TDc4OCVCiiiOZhafHFx+dpVoGraK6JMrbURrlm85TsJZWRABpRooRqnn5AnUkFo
W370Ez6TRKfX4e9mzbZHfKRMULamFFIcm/V+ddscT3LkvOaZHxDiImw4G0YRNzPBAHcGyK84UjeI
17O6DalzVnaT5rc6CDQSQp3kkOFCN/9fIAfbmaIXI+qqdiLiJY8IouAvYRFn688UmoYpaNc786lq
WY1tbwzzvTr9C3Vgf5dqMvv4/XnvSIVtd/4ZUaLJIxpDpPBRpU4h8uSLW9o/dj4qFC94beQ9VllL
H6vqzMqUP/dqpKdZndL0hh69M3KyR8OFLNV5/m1p2y9p4X49DqSXrxTXQ4UKPtIgT9qK8tZqzpbx
lXtOggbLu7Mg8XvCXPLWQFGw4ag8tSJoPw2vpFYMPqqTKjnRqiwUNoePGSJCYtnLlsS9xZC1UBCF
hqHSbtGPHxWlVNH/a0wH77+5fke5mqD+tnfVrm6Fa+Hl7VV/iUBIcBdRv88MYNfYzWHzIYQ2YFJF
TpMQlYZS9vriVI4ZMZm0KSVJkDs3RPLRlPPjxrEyIgZvnsw6jwolDY5lsrKOFiUHzX4moIalAEDE
WWf8D0vnbxoNpfboduAdeF4vgQx48hwd05s7UmH0U2XT4IuFNtqIc73HrbKrtmRQHAvTZ41x4snF
PiOayPt3BHOvIq/6fYynz7904XDMkyCQubg8apCW3spZNWb1ne3szOnfVubBlVjroX972gyKZlpL
AmPJUxLI3JcsDeRXUHeTIKVdjCs2akdJcsdMQrVsDMVRJWTBu+hHug0RvLB87gJWHnzZ264aTrFL
YLJnDd5AKiVDpRLwe26yyR9gWujtH8vvc8cNcI4awh2Nb77uoHLtTdVSMp6WODCt3NBKH+qlrvHz
XCdP54Fv5IsE3kv3ByV6shhrdkgLbxzxvZwfcy2yxS9uFH+l6P/KIfSN7Xkon1STqKlNwoXqSgIp
6jjgyUZDdZGbCV4iemPBLSMY8yIjJn05Dm/Y/u3p189T/8klUGkH1xkVi4K4Fh2JHY3bNCQ8A5oK
CkwOsGiaT+zZvAgSM9l96fKFYQr3+f9RomXmhDOPEVe935hJAk2hxSkUfmqqTujTVK4w59vY5LBU
J3NuSEcH9bL4ca7a7aYeWK7dJYpJAjS5qJ9YJHiAwRUkmoaFoKsLZqr07vYcnp6lkpz8V6fVhcr8
IA2pJTxk1DN2Z/fea9wZAXXIsBKBCQKTsVJFEEc1ZDixaFPhyAQWIcpUcZ12AcmHs5Qjuojo2ave
f1kPtucBEuiNcCKPM8IZGkttx6YaSAVfFu1NjZRUn84SQEXA2LUITrE884udIVqobM31280OD60i
1ZK32RHOlVf234X/Bq3nVRKWkwrXxcEF135XaUt/Ijq1oXvDQ5Vkl614IsMyBV5a8J55WIPNoXNj
NCBK1JxjcQQTmzbHjZlJ9kKuf0uqwvsyJRhpXaIzTdpo/VJpTtBtvY0wSazfxnvVsddO9HoUWewo
KI4I17vHCWt2A18vqABWKL7T2ydapQuRvZAca9JMvzmFlNyWehbfKxdckJ7oho+2Fwmf/ReyqMz4
BKFyMGrzeBlrHsw8HKbtimQ88CYZTnRMKdST0qn1YyaOIfQLvAIopL+D+I2A+5IH1Ay63LtEj6E9
9vX7rh+8zgcug69o1OexXWAbyM12ISn3LQmQIhDPYYsyHwvWBZ/rLU3ZsMGhkj9Gki9UH/gF1oej
KGyOed7KjdnG0T+nHVbAtpzEBytIlNh5fwyu6KCxA4qlzc7Q+SAEfXbqTXL6xMTjarcF2Ny/iMtf
v0TUyjEZBnvvo6c2ZZOAsq6scqn2oXOlspbQOVrX+Zdn0NnjmL9MJg3i5v/K5wp7AwnDxo0XlCU0
/10BXsDdDshwSFnBE7nvRufS4EWNySQPvAOHwqqNEtW70zARApuCYoSZeYCPNphAs95CXr7RjivW
jKFOjdGbmT6clvb5VPg2NLRKrS6MaXNuSTUEDj3cfp/WVktvzDvETCHnsWb79zRlphHZhVQ9svHV
zR4ODBZMjlKXVxWLz7pERgwJVLdBdAxPhIXdaAOrX/iBOwM320Fb1MJ154vfkn6aPYBhqnScG8bI
fsm707MZ18h51G2+V8Ka22ZvrTokoivpQw1481x4HKPpA7DGbg5hiSPHc5Lfj69dtYAPHTjPAOEb
WDP9bU8l42NvFjkLbMcfNwTtBA3xoxxy7So1xlVxsiCAwNO8ac+rN8iKgQx4BXqlkwjXF4PhVEt5
uXOmAsgc7Id2AYKtzH28MqHro0SyI/4pqxK70OHvqpt392yln99lD3RrDrQjUoc4UbjbfX9BJZIS
d281fHLVJQo9XzTFGYlxQGg+Cpuxven0TtpN7+hNlzMF/9ersSue4/BHCw0ZVcz647CsDSEgLNo+
5Bympqmu7YstBIZlmntfMMKHYaEPSb2KlQKDjFNYfRWMjBhZZTpZx2kJoJ8cIGyCIl4xFjVgpKse
I1mo5Z1GMK0RidaO/nBxgFv3l51XAcKSKMgE5AuUuwB732ylc/e8YylYKh9/eGUBc8s1RNHw3Uk+
cNnWqdZIRMDLSG50QnPNXGDPz4nZuBUxdxD1D24d4K6tyC0XUYamuYMbIQ19DYBceTni58x9Q3S8
upY/8nd3DfBDv+Ja4xf7+COPl/PzFDKtFKyjcRf3Aq0THKwtEECu7FuPjnJ5jL9uELkrZCfhlSas
WpOBZPLW+QSQcP9YDV6qtHrq+JCEFPA9QBsTcsFEg2eCWUwhWRfML+4qv9iJvgGJ3UGEGC4d9JPq
wjbrqw6PY1mEhAtL7OnTX77LTH9pld0FV/RFy2rVkKrEc0YYZcvWFocjj9hYTWFOpQ5ny40AAkLg
Ge8t/4vbRwNvK8Ju4FVWoP3phwlq2QNMcU7Aeaxwz5Z5HV0jYNMXI7e5IhJPH8Lw9s13gELQIW3J
Fu4ighxWnHFUj0FihO3tODb+Lm3/37Kgw8aGcxAiNpvlj32qFFu/GBiOxAFrX43VmJVcTxbRANxY
Ot1K/bjXiKf0uKxPs/dm9dyeg6redUHYLxlK59hQtsM+P8GZUnKYvmGS33kJsh4EIHfD2vhByyVP
O35sUCQexIanhOSKfijGD7eautEfDPucS4MiD8wHsi31wNOvsIHbg9UDZLE8ie5bZg10vFG5BQIG
LsndsrXclx99HT/LVP2l36Inefop1V2/Gk0x55k93J45/u0U7cpyfuwXWcqFg70z0KEP8LKbqO0+
VYZuuBPEvErYhxC0q4GwR4d3c230NFtSv+GI8Sozabt/onFMPuYVGcVkiKAEwiF085duih/lV8nG
vizgBuwiih376dMK50jN4yHdqTZLm03TQJe7CvU+OKuzn7HaunxOZcVshrW9waU5rd9/TGMVMG9f
MpSMbQfMkj0UvvDuMwuGPYqRongMsnEhIH9oWIlCR+/KQTVi+9vqIaYTbSFvRuSjiPQbGhuIWYpV
OtfNXviJUK1nn13E6tgTG920B2kv7Q0Cfv6IA+pxyCFEFUIvjv3V4pIRih7kFoUear10Lw326iBZ
hW5ekmHXWEv4ie/C0ZV9jNz3JN8bVt3ogU1B3MEMWp+vw1w63ncMz6MYFwoqm2eIBHZWqfuqBeXp
jgDX3XyU/CdGhPsiDxizr/sjd/1kOnf5WQb+QF7LHEvC9WPU866pYPTrW0LZHXtOkJ+JrULyzfOR
YSlAqS2Vukg5dULfG613o3fhUia9WuyBkSEu9mfebcVJf+mGdWqQYvn3ql2MD4hALiAyJEaFYyse
M6y5YagXeo4lIVU+l8mBxtpD7gWAeLWWo1oxwY+WL4L85qR+frIknbBriDFHBqdI1Cs+1CY714RH
0kVtqAeTThAhlC5GMlmbQDzEF/NLZeYhsSXVjNcR0LJNjK9LRD72nefWFobHUcprKJdN7RA5D8aC
QhORck3QHmQz0Ws6q7YGK52dhlksu2rmSZl4U9OECyqFksAuGAMqaFlpya5AdaXPZG0wIepHEE4F
PIAdl0cN/+hS4NzGkIy3NdPbpRyOIyhv/svPYGgizRC1QNHTCZ6B4pAAt1E54BCxfoD0ZdP4ubtj
36Z/3CVusoAIjwVOC5nZ006j+upu/LaFRm+F7ol4eZipkvDrCyJP0hGtVE7sKuWd/C2MskCk0seR
H53GIIHaFEpsj4DML1QyZcByya6s59LP1mbqhjQh2BaiIF066zg47rSCKjSASA3mfOu2oMZngL9R
3WbXf/p2RFdgS0jMVlFuksfeXJPyo5aNpM4gsrX2O6nrZ6RtxUmJKdHmimc0NsLS2T2oyk1+6O6z
oAEeSEn7kNo0rlTQegoSXclmbLFUyRtxMFVh5LpVBCmp5Ir4EAJHaAf8K+aveDxugfBn3k43RuT8
Lh9chvz7ABMnvz2v1B4LUm9/sAmUegmNi3QZZlJIrqMQHlzy6NUQc67NHx8BtkCEav6pn8okfaoR
pX0ZS2aZfAK5uk3cMgWbMN2Ebga8FZlXtGvaWN3UVAg6ITYKuFAmV9tnSYn2YAw3l2k5Y5zBlUrw
v2brPtqH3lGQSpmkLRMOZMu9LGTXOJb3MuKi+BRGm3b+5SIL0ihc8OwFTklcrCVjLe+24VvmTzmV
4y6o1MvBTpv1K9FdE5GeNrHT3gjNI5IgWEHxg1pN2gSM80rkrfzu1nBWGka9PiLrsW7qIfosOCjq
ODvphtspIbcg9JK9brQ+iLEcy+0mJeHt/PX1wtV2PK+ALLwP0TNH/xdYyAzQF9e5nHyaRSSN6HKq
Ht6ixSiowwfnKNZwUZ0jpVY+WC51GfTCpwTNDlxCSkx+GCOHIKjiLC2PE8utqtr68sIPflF0qG/C
Zj0V08F1jCAXaW+J2C7SGnhx9ZeV5IEH5me+WZE9HAD6j6682IBTyPg9bXfzqc58hSmaqnLX2xLz
R9E80y5zioAOa1VeAaTcx5A/k1jkf4k7dSBtqQrsj25scQfwRJbI0Z30yMKlUJX3bblLxFu+Lgg2
FVhWahFBI91ZcrGv0mScCX/00dYJBGEyAPw1T+qkMJMRsoDZ/suvhCeATKBustazrKCpu7Dbw1d0
tXvS9OkvshJ9rS4hjckZNLB5lj2UygsunVWdNyWYUfUam+SlIK63YVWSR6lG3ka1mF/nWjvEv8Vl
e2846GZAQ6slViz0VepH6tmo2HwB+ftKARrAg1AEhohQXXE8R+CEsFOThfWnDJ6/wOgq27BEDkoC
ZwTCNQAssKY/jYo4AGRa3FoGiaxl7bYSHew/VoR5DMxb4h39S1KmbyeHJA5NU52FJQFvSj3HMpNW
sWtic58m1XSmisqnpYzuuxOwVZ3gEg9hiKCRBne7rFw35uWQyOVYgbCEjciL55zJImb6+Kjt8Mxg
WNNXnxffpQhepDAJmRsK6iVFMc8u65RSrP0mrHSlXUdzABeZGijX7vWHIl5GJzu218jV+nRi7xIY
gNlOcI/4z1yYWNhrm25nl5meAz7zprbgHBw6S78ESMVs6C8GM4Ac2LxSqJGgJRatNTpFqRsRb9BT
aDalcpxhy58nYqpZ9ojJiBTjJ4x4Dhd7ixGeBgG1ISlSZqRw78PjGW+tnAvkyKMYx8z6xOoG0szd
Us66Ty0xL9PQfICI0bMXVQ0ZKHJa0Oiwge0+kdPLXvH2NiLTtDnwJyLOvcMsw5CA9kFRQu9khfZq
braZcqq9uMkpcmr439Dk9nX9Dso/40J3/EzQLNT04WFU2SU3/3nNLCUJ7eaA0ctQRl8q39x+nki2
PGzJ9iwG7hFSeSRE2vkzv7Xj0LgMPcXEiB03wL46OOOsprXcpayn4+ZrvyA6KrtPOd7yTwpn0++T
tm5ww6ti58xzMQNNlXc18U9SwQuiVpYdUecEh2mtgzzU9OL9RSGW8PD98Nq0ICZ8JVAaHiC0jn34
rAwIh2iPFkXW9o1UeM3EZGa8QHgcq5otdobqV4+YhmQo9tHucRHDck01psBMJya/JcJn/wfo6p36
DQNrS6CLG+sKCLhNWyoJ/PxZ6P1a5Xmxc+E1y42I84xdA6kiZcirIferNPME7rk0bu+YhWJlhCC+
mtTKxn37YU7yrVH07Zu7Qnj0Q+w9FVgf1hckEB1qSZFxNPvxtU+O4obplUFVdBsG7ULcyP4VfdGo
TRtZdQVLE1NLQR5+ITQLz/b5ifU4ri29oRvGsfTgTGjBxEuLT6Jw4/G7GTdSm10CzrajNQsjbKe+
g4QvKI8iILaOYd8KdF5CMhhmnbKaFUZ9mrX+/xwkYJeVN9aH0emx+mxy0T+IZAljiZ6HSpPfTJcF
Ffuq87HEaT4uzcwHxrWFD9yEwQmjg7/pSB0WAMpmYyGGfFP+GAX6bkxkL5cCcEa2YwJHJ95KyhiP
pg09SNc+YHO5gUpdciWChUnwS5e6Rom6mqrzgkIaFGbVnJDQLZT76mnKHsIBzhxPZ9UEsesfy/Ub
qZO0FLtvCBJXdjb+tj6Y2lRmNpYg5vi/1HijLmtXtlD+JCclFj26VqD/N90ta/hmMAJyKq2Mc6lA
UPTc5s167sjA42Dhhlaat6sjIomCX3KN2b9XTU3t2f/k6SDrOPTwK6R+h0udcMoNyOYfHEK8Vyf2
GoPTjzUB6FOOQwKElpYt4PfYxX8Ue1O2ettZjMOSrKFjwC3Nsyo2aVfsC2whl7vu73I4o8D8KW7E
E9YmgzNiPly6wbQ4RIQ=
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
