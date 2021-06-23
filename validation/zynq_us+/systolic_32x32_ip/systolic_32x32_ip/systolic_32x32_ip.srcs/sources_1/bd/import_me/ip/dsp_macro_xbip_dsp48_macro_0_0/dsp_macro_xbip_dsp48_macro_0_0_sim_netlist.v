// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 22 17:08:14 2021
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/tr-validation/validation/zynq_us+/systolic_32x32_ip/systolic_32x32_ip/systolic_32x32_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-3-e-es2
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
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynquplus" *) 
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
  (* C_XDEVICEFAMILY = "zynquplus" *) 
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
BXJCqpxfHeU9V5N2yd5UxDdnaDCbmNiHdjk3d4u7g8CMaIjsYqc2+3a3s6lQY7W+xazUPZoF1Iqu
/lgSA6IDyh9B1p06k/jYIdx8cOaCb9OvJ+qvHMnWmovYU6zWRLbsBpvh86sVuN7ne61OrfJ9Gtn0
vAMWPrE4iY2IPAxSGiQWUswDYohRWcua54JYITyLKw8vJYsfXST+sgFAVqVlzrTyfSj+fA0CHHbj
xRqv70qEgW4Zl/4dKTqVp4gqpEVoHZWA3M1laDojeJDTwAFxKPyuWq8stxlQmEOJz0vPd8+/mo5r
3Mu03nLc0ZDKGZlgvB8H4T8QfiMmkft2FD7yNQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MAj9qrTtgIqsi/3hhVZ+NkkCxglGsdEzOkbdU7Fypx6hTEGyXu7ASvDuSgbWIQPXJ0KqPBgLtfzy
NM3rrWR5cp129Vs8WnmJ0MVDr8T6CbKXeHUnQD+wF5mCr+gIAwPGQ3wO0z6zdblzLu98W5ReqA3+
BYyk3GfPn7DMq0nbl2IRzg4zBm7YSJNK7wuuvIMhwQhbz0v+Mkp17L0EB+3xU+Rmmyw4s91pkD26
F7M1PDihrZQa6Gcc5slfVAcv18L40C4+VnRNQzYck7m5AO9bXInw+OVXz2intf5Q9QZnN/HMbnxp
3WAJRbM8MrWYQQdzzHXW3EueevYNPbRUkOXIQw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
ERbAKQeHDUl4fqeT/5q8e6gS+se5nTM6yPbAGpPezCaDh/QVK0ktltZC55PvneO6ZJKq7Nz5Jy8o
grJfl9VBaNGKVdlJp1ftJ8faXCOYqcIvyVdPmWxHtTKxENhpmuXxoNTetNZXW+jx9OfS86DsQEZt
54eTAefLA4J1L+t4poDazpcY7VeMMjen5u3KbJ25VoEZiA/6Sog36wB/n9JXG4+nVdLZD1pVH1Ny
h38VtKzd2PTpxmLDvmG3boPDadmdGqf6zGK9BheukdTdsccc20K2L8ZOWpvf+/WdCcpkbgJriNBT
xviO6w6priXkVj0+3+Pg2pqqQY+k9al6Eii3OwLla6QV0D7TI8xuVnhi/CkUD+7meFjepe9AaHmp
p8fW70GLLy9AK1NSfDVIppIrFQJNY4rH6pWiYmoyQew+lV89+bqiyQkOWbyeg23RCIPNygTJWys5
wMoZBujOXyZzzsg+ia/00ivwBK7mVxHeQKh0eiYLHe2XGuzsjkjSYqYujtbRe/hFjsr9LQD2L0v+
KyjoaJEq5QtnfVgHj2ecbuRxEyUjd7Z50hamRuEi8TmUqbEKR5m7ddjLr10SIYmdlp8O4M6x0jvW
A6eSyIaPgYsDvK141mEdbIxcNMRjFhK/2n3Br2SOSSkXd+zRa9GOxLjyo6LGQCm1UtzWDXHmiTYH
+86zqeOOsxBeVSmPD2y6khtyhAeC8ZD6+J4pZC/zEYc30tx07kuaLICo7CavGcT1CmoAsCeuJQY6
7MO5sj9Z0SvqFN0R7d1yjjmXjBt2mQ/kaj+QboQuztn0rx6ftA4o8D2y7tjFoBLew1d2oUDrMTca
Lik+/rq61iZ5eG/AAcbKuV6Ujk8lDEzajJfqw3OYpYA/tPilS/KMPgTGlDjwS67kPl608K+p9siA
iv2Yyy4XlYmFjbqlM5444aiFE422rJaiyEBlBgrtlb0alLX9yHU98/L08UgCYjk2m8hMLROP68ED
h5AvsCV/zQLlTXqd8IuY5+VMm+xPUYW3nXuVLNlJsIYtJBRe3QTa/5JHbll9k2ty8hk911QKAvVx
ZgZyIemGKtrJnXa9R/csufRNQZHcYMonjacTp9neVTfR4SSbsuLhp3/4GpFnG57FiLIfPG3JL+Av
iQCVx6kJw6MEaulh3xLqEhHU4dVSfY90WuqJg+ENeLNVSqZbVKKI+qVfJ0hTZEVSD47wjza+9mb4
zIhOv9FMWhVE3S7AFkdPW88Q/SqIDU9EbZvdaUoRLb5Q+913guPswV7jJQ2SCEEfxbrt0+krVQNe
d+p+QNLVeDei2ICeTBGgx3MIH/RVyOb/sGcgvAql38rUTfXp14Zcj+C/PA9sQgNpE6yq7Hc2YNmB
B73F0Sa88iGFJjFyp+r8Ve18XXDkllwPOG/6+fZZzSeAOLfXlTSVW/X8QzmYmfyOJSQ5jX7f5GF3
iDWanwR0sO+q9p64inKghIMq4ggRCmWAamLkBStqXxGlYAoPURFDwr1DIEHWLQklNmxquFSTX5RC
xDhXblrfu9GgcmbuhLgayNpJ3a7juobXJd8gNiqEcvb+wXyzR7haKjEflwZnWQIAFhwgXvKBCh0l
4446O4oKTHEeUMNIJfAoF3tFdbtRBWYlYvkMsjkdH5wSZ+fU0JlzhhjI5KYj2TeNw7/BkQmEe6gX
qKgEirlc+GKO7QVVcW66CmXeISXm24L5/3i4y7iu6ZtbWSprmIzpkVkHAYDhPoP7S2TMt8zytGCw
/6o+Cb1BWPKtCVvMP3U8tdpTzlmgXAP3s7QpfHVPx86mJgSwVZ3S/b489BhSXLQ4UTfmyRif6k13
BFZd4BE2DxgHVaPTeovg9QeBJqE4OJkT2dlk9Sk6x7brbhLnAHZp6deL2eTWRxlGx9y67qeNhiD2
GtdvQ2lRbSCT0A5ebIeYwdK7Sh1yIsX5vwKT/1sX89D9QLDsjAHLGDa5RpIXcS1Rs4X31PqXwvj5
zYpJ/ImKka/kKORMJrMPUPXwWhjxq2a/htLvDnLPo3DjhQgQMR63JvjZAqAigfTDCO5waSeUjl+t
EeTkTlWiQYveZKX9wHbaCBn4rizXx3KW5BGbsBrWX1T0L3xY5TLNM3YPaYByRHRyc75689rBb7yb
9CaLlXhD0K6MqwXZYnVRxNXxEvWPbNi9g+IJmipLQNUv4+1zMXuwVxpA7OzRmO8aL+oUNHwgaSYk
shLX9KncJSCgQMqg2cP2WBwvsngQrzuUb98ene98FLwTvjxgRHh4W5VbQrzLEc5Al0UFYCiM9vUz
qDpeh4JfDkPR/cRYtyby+DBCmnDT19CsXtyu3WgRsK5b+KnOGn4IcdGmHAdhP9uDZiONueWord3m
bq/6qx6FBANrSMAq3T1IfWs6nfu9+RT7GmrY3acn0fAlNxDL48FLfuC5ZAbGHAG3XRkeBtkqCjOj
4er8MDSuy4Wah5V6VUuyAJrpPJ1KTw2l5cCZvzmk8+g7zdOL0kV6jJo81VSNpsQtCyquqyWvfu+Y
lIzzhItuNTpnfGEgVjIbZZctdb7VtGXVukvCIQ91KcPmOnC5jFyGro6vG74JHAXB6aQNzCuIC5f2
kU79EYBGW/gM1DDmxLjHtLd4bDRC1p1IsgPh+6IYsRWDgZkYKfvh4i3qDzDOYrsSjfG2XQNW9/Dv
7/dulD7JzlgUzLrq3HvGRDGC51c124CgQFN7PoU9VUb4vEhyTwhJVOGTTjLMw9XHpoX1JdQnLPgl
lOqJYJlq4bPHw9oIaorfwxqsjKSjjo0ttEngoCP4VvAUuIJPrzCnRUfs+NA3f2PkcsvtEPF+bSiP
t5J2ukKTGx3q4mJ1ILzbfbGLvh+TMxnyfwWvQNij1cvCJ1JIF+D81WMtT1kHCOGlrJi0od974XJz
YcGZbAxvoEidbeb1WYAomJBSGFpbtKSZAAmpEC3auV2ujNOTWnHjMXbAbOYbUSgaX7M5cfGQJc5a
AEJrFg2wqPByFB1/KcnAm213rlecJUyLzxst8SA1DyZKfK1JScfI/JZjuPICvwW1pkuQ/8gxj53V
8EovGboydFugM8mHp2+9lUGqQdMBDd/GzsO2qBdao/2ZQqmWIGYshppKIXKd3Tyqj7hBmVFSQjyk
r+4WPl24q2CvDu7w5EZ6flIaZVUmcVvO1zd2GJ/B1B85tCp4ZozrlE/Caw03zh4lVm0YOWsXiCGt
yidvAhXOmwRex/kz59SgFBdEeOm73aETkTV/vR5gD7ZUcMasJ8vZrOk/b9JuTIQuqcvH2sRzoj4+
xib2dxKICu1kG6AviW+Mw4xjPR8lv0JwIFaMX+pIS/k+sqAsx8QMmgZgsKgKb88CfslUFJz8ypHC
ieaL7si9Wijj4Lb6xIzqgi+Hv6PbTmyDNOgXIpzxZC6B1nwBkxd002/b3FEYuIowAXBDb9WQqWbe
+Jg5DT72Rl5E7RkHJh9Uy5kT4dyFOsEZVa2WBeXdZ1MrRtF33Mfmu4y27XGd57FP49UlypLoctJg
64QWPOoTpQpxCXoP70uqheLMuXOQB0pos+r/qUwqfS5k3o7hMDXKu77bkU8A7yYXvdBNFNfyFeTZ
U4fi6Y/lhOxb/J5NCt9NZGqgtcR2i88dlnZLStLsRf4GIa0oVQr/XJeVIIL4KXqfHmDmcPyCy7ok
8RDUlrfdwYVWh/XGysG5374TWNyyU1rAJzGSObQY7ULnC3MFVpoiHiOvHDLfBxmXIHB/YdofamVH
v2fDhLib+rXYO182y9ACC1VyOUq5uCDQN9hBTZo9yX05uukpwFP7GXSns7OY3CRvu6N+n8nrodGE
5H3VvMWmBo9OepW5ruUL/1Kb3c9WTc4ukAoTgKBDeJN30R4ccBWJvAtezJ4dGoar8oBmpLZ2DJw2
dkLPThBpbV2maADOUozs+bHR6JEQv+uYyMao0IFy9JcXCApFIawVEgfQldnQdgUcJ3PhigtEoy6U
MsuG/t2C6q/tBE1lqKb0EO4CZJ38y+1CeuleD4pSAOpM10o3Ri8mOOYCDB5zyUojoZx4PhXcFcZe
gGLypZA4eMM3iMOPlgeqfI16Nd0YmI5igvv78orIP4sxrrjk6rNycez9+cuCqdyKyOZ+EBtwVDSU
jO6IMgCz8f9zLEGzdIQf6YsBpbrpCAIm3n/mTVH6dT27Ki83kiQPx4OapgfL/XHsthq8VRTlNl7y
CNkrvHjdSXwYv4vhf1qYgf+cZdCik7kkuvDjA8TZhNMpbl+2O2hnZba/b6R/rcAqKTIzqKoQsjVA
VItZ1Rbc1IHQOvq7huDKa5DjkEtpY3LDR9a2+QkMaK4ju7z40H4nW0nLuP5CTsLPNEdC+EBMoZBs
Vocw0XjdRHZtp5mJ25ahoTGRSvC9UU2nx1SvckvCAYUlBEgHmLE4/2NKvf0RSsFGdKvx4rECq40X
oGYR3M81FnsFVvnyWKujL1m6trbBpOidxnXo2wQABsrBEJ+RFzs7mB5N4LFO0Bo8nMaCJPPxVAIH
gRpgqqyvDxK01WvZXMk2XZXgPvfr+gI2fSTCPzlLBH2kNzgC8KIMmWuAwzviw0+HeSEZDx7nrTqJ
qCoDkyRlr1HWwqwDb3w8d/rdXBj7+I3ed6zBWhRcHtXtNYa+JqJ+4wydmTOkBKz0IV868QJiSeyp
vXN2IAtCytH7JsDXdU0kGyez+XCq5DfXZeRrp74G7EV4pXdYXKuAtakWlwKt3/SwodW8UBHhEv4s
llLfcrSY3A/C5/CEkOPre50O0nN2bYsj5Ocv2LDB5tqx1QR8GOog7MpgWOjG5u6IdF7oprEmh3V9
5M/RZ1B5Af3NSLlo18WEZ07cL6UKZLOP+V+O/df2rdrVv7D/3UezE+x3PnSeLy4Pn/Mjc85lAHA3
IyprcDb4ENLtTvDFM+HQJKU8nlZhBE9R/3wlplJ5+QKnaUwU1xgZ8zqjYVpL7hPUS5sNjGELsVIb
45PSrL1KGMGXz0viZ6BFouUPC4WDm/LYd7++NxaBYoqS67W/Hx1rwu+XeC9KZw7yWxQH5G1KCc7d
QLdigmOxqnPMjnQzQqK4Bohf5Vsb6CKdYgODxk0V+j3vI5gwBLOZ79darKQ8XJ/uBsKiNKr99Ywq
b/a570ZLEUSX47XmUo0Q+afLeBl6c5m/CyBoPalihBZrDijaJSOlgnnBCVNt1aCrYSiJO3OZtXcU
rOxuS516GK49HEhUQviOu2G2BjjqvOvZG4kWyQDU44A0o2JiuDX94G4P/geNbn4OfW060lA2hsqk
+aCKIOX6wZD6uhNl7ajkuqqHJq8u4x83Cpn72vhhp9h2RG0eMifUamu9FkYVLuPvW3Q2S5sybqqs
SJy/+YnOUt47s5d8Lj0HmzS8kZuljYvv8F77XxUAngJc7FLlXQKeizX0PkL9Laj9HphSQVB4ogeX
DWQEbwbv6ZADtMvq36nFs9ylKpT+4bhUEyXkjTL3D1z4B9AgHmyn9IQUWkgPghKkvKI4J4br0pOi
VjL527nweJDEicrOVAWIxA0ZijLDQGfJhK4Ts1hgVPlQs9ppskGHvCyo0Qn21iol/lxcoRUruc9W
sF1ruXXNZhUxPIBQc7C6XnL17sjdY1d871zX0hDcstjvWFmOiVeJv2YpELWB7anBaZiYUrgprK7Q
Lfd8sic6cPRh7NL7oqojEYYMRcRlIbz/3InYpKxMt//mVnF9nizQcPzEjrskRuaF+N/iAz+G5Agm
igbzRDoQEvNLzD43mZpB05TultjrycCOB3ihNFT97OVROoImSdw5o990SS/A37STnCTfBGAgT5QD
X/11cuggkHvckQk2cA7RA4SnIMWm3z+rclUL3LFOTBax79KLeOzgavZMpC/d8KfUgXP76ThSAmSl
sYk9hboEuETtwnhoh90rdNLX/2xGu0jAtVu0XhAgV4WY9Nrq4x+MOrUdUpjhEcSvKi41sYIvcFlg
PMxnfsI8LkPXt8/BeLir2r+UQ4+1ODOb7uOIg0A8haoIcqd9JfsmlsMddJa3kksoFWK/gz4ulwYr
BcGavbomBtfB6IR2ohFWhQDhNO5mRyd8vVk0jhUqsxWKISSHOtHcNYwpmZE/a/AJ0o7EaY0PT2ay
60XGVo4ptldMNouLBde5o/Kgbh5gTSq7AhUPU3DC2zPCNJdHBmNe0rByEHJ0gw+OJLRe5rqupxD6
DEfy6+DLAU4hZSo1WRUHIG3g8yB//SlSuLk6WOgos2CEJ9rWU1O+Tu4F4XimSlBKJQApQtYq935U
BInG6u1+fUbqpnrwdi8qifPgifcwwgZHr0g8abvHb7hUmEQIqE9P26Ng0nnDB5W3dGPNb2MULtFV
xTE0kpLHj2fX9mcHBylOHH5wm+JmUCaxa/VG/7WJfTxx616TNOZutJLW33sX7PqonBowizgz+O2s
GZiGzio1avYjJ1aCEe0SAB/ZaV0k5ujIrxPRpBkv30mNtwMoifJ6UDC1tgkX8kvoLhmXoK0SAuK5
hiGDxUU38PuQXRuFiXkw3BT+JlJvwAYw22gMMXsybZ6oTaqDuuei08vuxPKDxMkWELCz/6my4vHV
Y3ZfGguZJ6pamD7no/5DpD8zNwWw9TTVH4MMUq6+qCA9D0NQbIpu1P7X+BMxnIwn6rz5wo7PLcgF
amNiDq+nCg7Fvlwp78BpgZ3kvhFNIPUMB4CLOk+ElDvY+Ee+tjZmZM4AnlPbSFy8tfK6ZmcAAv51
JVOaE+9Fd9WK+QMOAfofQByozvKWSo7ToDmMWSa2ONBLd5ofdsPPoUWWlC3eAuM8GDredKTO+M5s
z1VOh3DcgqBAxRJ2e2jnPMtUn5Aq+8SYozj5Gq6hKIH6ajWwrWPbJEOzoQUFI5y2SWQ/1DCFlfsc
AtjdV0gbujaZ6ogXGZ88bjAtdFJ6t5u9NQdnQOs7fDoK6ZUaT9WNFityh3zQlhJ5upzUyRJWVisj
k5RzUzV92QK9GJ44d1P8YARAuRhDY2uW6AHOPp/653z5DvSDhZEPHkfIGMz6dfer/BjjlMLRcEfE
S0hezss6g6Us7p7SJ7cGkH4MGYoCLp/9aYQc9UCS6PyyG6pKAFOKoAnNF6Gz5Sl4tkc5tOdbK0j8
7uGu5Z8ZVa9RzHtiOF9PyJ4liPh8nfLf0T48+IyaBfD4bEb5fjF+JDAXGcVbt3nrULeqz9e2YlMK
2fk92MXoudrRyq/bcT4Y6ljKgh701jql2u0LOJK6OOP+BESGiztjXplhI09Zu1lX4V1OoD4/0m3B
cig1kDP9mqd6rV55kwXtmJTUZOLBOD5OApRuG8NYuMzapgoa64s6ph7XocWDvDHeLSFDBOxpYfWG
hs5LGxhSWYhGg/7GIC4hbZR+9sK0WmoFTWKfk4xI5Og4HRi1ynLmpH3DGsqaW/6ji3fo61YNe1z7
6md5vZExFhTTK2CYiKsAJemfNHi5CMbfBQJrRerToShhYjhIHdYi7yz9pG5jPBQ3++fzBwgWjRsB
TYcWtzoediHTj+8NW3NGQbqzo3VPMeyOMVu9BkF25YHF76XO2X5/C9cpc9euZ0E56W2WRV2uXulo
4QtH0clp6cOvBM/ghgZJg0AWVtb98A37bI9p7p73ZlNsaCGAOwYDIjSQiM7jzCQxIFtd3zkufEZv
leSGi5rwVaF04RiBC/3hIVFQUzXfDHdl4IB8txMBeLhYyV+KyaYyoxH1woKVIsx1O9HxilDyVT8T
LsAsSdTLgT57H8t+0sG0rx5IgBZZaPO9D/fk2bh1EA16rSPXRpeLB2mf1RUSIwXUg0m2WsaIUUlk
uzq8RRdTZKNICIhktdnahLs54s/NCG3JaenMdYcJ42r2Bc/wBBfrLsnQZrumODQ6xoqm/uGFFvpj
ROtp9Tq+gEW+jTpTROBM8uVq8omBXAyTvZwC87oPLbRLpEnJX5ZWgFPz3ygXbeTTmH8Gsnu6KI4k
nq0WROwyAzRCSB3vz6jZ8rhNPTWuUq2EuV371KrVHXWYDyeXlbf4y1j9V6xakHP5//ZXHEZvnELo
CigNUFeUZn9Qd5SQgIEFH16VoG2Azh03aYtGdQcnZT73P8HSMd+m5pJy+FLC7c7N5Je2miUyFmOy
hkqWynGxpAozGD3qnpoqHYpRre0ah5hauB+oOknwhPi4FdQvbPVwI2vJJBRDRVDgrCEMnreCu8Ku
d23WTzK4W7j437hxXzoHCrBuvPbmIHwbrZGXYmRQ2eiVqMYD3Ogh1jC3ijDPGrePKCf6eq+f7bGA
uuP+vraNWilkyA2bNRCCK+MOdOtr9PRKAw11T+ZeGuL0xOp/dGlS+RLC9q3wVBZxxsvsPfqeo/rh
UYGSZf4h35400IW1HoHwepkdlkR1Qat/Aak/yCSNiuEp1PtBVUmwV7yrC+2lgy5mXXOE0sCN6Jx8
jXm3Qrb/rQHl/pNjbLyHMMu7/QfIqx89CGLlcSNGdi15A2MUIWiAkfl3/PzcO3Fz3EbNdiLj/in0
wCLnANTH+0oCvqvbJ6Msv0lsTfAM3JfBjwJ2rwCpQCncWr7ouoH+zA2O8vDTzYanNlEecDYfjJwf
22qgjtM0HU8FarkFH0hJOaXkFeUG/7Hte5P5ajtx0zhq+mpW8GiY318AL0dl1fuNgn6iUpOL6J58
ikgl3MehMx/ET6Ry6oS37hG1yGPv3oI8DHRhIcWLgM5e9AvyHKyhOWl5fIzgXaLJH6yD52eN6wb6
S3fZJqk0BpZVhilgThTyT9fckvUUayLWCfhmMOyLo7OOJeakJk+bVzCh4SUd/1BUdzgZo8j4jVyH
JZ00ouwZ4cvTS+8+4r47CzIsOjLCXBaSox/YisaxKC0QSy47LjiBtc+sNnfoQbNj2PpkJiWV4zYo
F6CPuDmjn+fK13NEPXUNja/U7xwnnQN0JxRzQTUjNcViIra0Sq1jqbGkMXfJBOf+zZBYiWVGf4aO
eTOi5apFki2QqQ9dZhCkAns4QWe92ZAoZ09DvncHxnLA/UKgocbIMxLGEBzkLiV4m2ugRTwPZjf4
dKmRyjv/5jfpSMV45rPgbI8xFPmPH12XAWQ9+GiV+3UTgtn0/jpeUmWjxQ9DV1tRzqiric7v2pf9
TtZzWyVnQbj3AUA+ZAgBys4/s1b3QJ7Gie+JoYgVlqV7pymAa2zJ9hlEIQA3OIDGAFe+4n+2+6bg
28I8+mdphhDq/yr3/UotYDNui6NHluf2DiTbyE9USI1dN/Dg4/9TL7nGVOh97PwlobWKqbjmsAIg
ptA8N22RJTCCvM862m+kQHYpYD3t5j0uqL2SI+dgX739fQ3DyM6fBK0zYth/h0+Mv0Djhmv1k/0y
+FwLV07hvLTRZZy3g7JxT9Fuc2x2V6f16zfZnC64c/yZalbuCY178aAcOrBHZtAM2L6RFCtXKwyB
+Fx2F4ozONDExWPZJ/O/DPV89RTKti1vb1i5Yc/IsT4wSv6EYQIbfTLeywVcKJugD3Y7SDQ2wEzx
gilfrF/o/hM/3DFt3FFoX/GwPpw2Gh7maiJuppekE72FzQyv4kuWLJHLd2/nsfGjh/XMlCwLl0vo
b5L5rEqZZniauScX3BPOfuDfwHU3J7FUzbhAc9GAUS7w8N2QiYhaRkfyRHJbIKqt7JtWt5DJzj9g
x1AunhoCS6xasTtYd9ataAnXc2Rq7MppXbLq5NTlbOy+J+Wh7ii7eXdwBTN7YKyKmZyYHAgDpFe1
dS5AnJmdUJfzmbM6dafyaQvUf3u7whorp6jvbcZMikKZQOFrk4eLXJSRJCI6E6cVRBCsXElbH+Fh
T/d2LumQk2YPur0dRx5NQ8ZdEOxmYUKpRRnLL0EubeRFdEfw8ou7EiEAWUkS8jyhV+4CLanokmCu
GUDojojlsnhxYBsSBwQELIuCRouHpbvx9jwD1BxT9rYOsM6gg3pIM4JUreUoXVEbcPVd6DhG+H4y
enxlxa2SwlMsdYLpwJKhyJ71Du3/Sn6S7MmbpuovX5KT3VrbJabA0G4WE2oJvqfBEi41CXwa783s
Eb1sE4MSNSm9PltTW+2z8Vk9+FeLVYt+WNfr+JgyVwe7btEgMGJxAIX4cj8HEFZ7kUQtyBfMKfuh
f8f82GOTLRRxnr28lkW9HRjWoB4VEiBk854q6+b0mcqUZHDfnpLKguUX3+C3Ml8YKItTY6/iuWgE
OzBy7Gl2fA8MjmgXLszDMVScka5S464+Jj9RjpOF0gwbLbZ2Nim/AqDKimHGFG5QuwO6Lcm6PwWb
fqJ8x4KyhB8VwTitfV4NczQqQcBekMXAan0dHbld1bpSMCbbKbr1D5Iji783xQUb4b94pXdYPkNj
fFurgPs6uh0Wz+OXUC5cxTkj9iddY6JstYM62fVwZV3IluEDXljdyx63RA9zo/3/YqIcwwEB9rZC
MdUxp0ffj4EU1fw180dGJKsF9xkkHIG3w5lWj10K36SMRh8G7J34ErDCFZWg1KKC+8iPHRr4p+Q0
iKZy4GK/bsv+D3I0cma7MIJKRSQm4bHZ5HUIoEsK3WzQYY/PU5tjq8Wqz9oWdWRqNqRxakGOLhi2
FjGjXq8Tm5yojFKQAxNTfZwY9ZMA4PkJOst3WJZmhFgrNGRygBmZ0lTJilWtHCKiAW+OKhVzNxLd
Becv040AsqoypXf9ip0ZchxU1kTEUXEwiT3S2OhkpV/C9YZ+ZE+bcp7wqX8bh17bYi7dac+WUSW9
Epvdi9Db2BOnWMXnwViJJdPFZJFKm6oOe4U8H1Wu4RSUtxuIWPYFSgqOD0+F4itdpITM+E+wNTgv
wRrUmr6sz3juA/MYzoCWaUKEol3ilt97e4gJu0BrzZZjrJIZw5dYtouf6lX8N0UNyZmJeU3VxVm7
xUtp3wvM0Um7fB6DWiLt8wTvxfgv3HtXYJmwxecb6jna2ORJ/mSWk1RAmw3X/5TdnMXyCY4KZmAb
hOm+BKSCEhGi5rLTx3uuB/UTEjSuPu/cHTNtbAHgrNl/OimyDK8uSLxEuouu9aHkDgV7/G8aqqmc
LVgH5OQKYkVfsoFC0ULVp8J6JiCIoh+h2/qEXWYhsyKSLw5nWoylyGg+j58WHTQ/04VXpBDQgjw4
8dtPIbZ6N44tAqmhFcIWz43tbhnzvaxoWOisd1jJU1YXQoMNdpwCoY+F6fKTsbgaOpsmX5JffWvf
vshX9O8rSp4NMKshNgy2mdYOuwAbTqztd3eiPgS0yxa2oNEau5+OmBJjx1m0e/JjmCkvGfFaY+1M
QH46G9sA/gTtaarxi5DtPPt7V074EiS4FFtDtJcuOAVUyWlNl8zQ2HSgXcdBeG1PKzvJDyKlqS6o
Th/Ap8yDcZHTq+SOg+ReCQa1Ql342ZTrSLv90gQPzrU0uqm4rp4quvWIZxW/B8zxcTWUj3y1Pcjk
jfw0EZpPeBUL+Mhc25Gql9AqPaptqCJMvzRTM/gcwitnn1wQt5HL9Gdt+VgyuINSspdDBr8RP7Y9
j+p58/Pu1aFUEjsWFwmuDfy7KsfFZmNUModAvitNwKI6SjexxVamhruWBs8Mgap8cYUkOn+Shfg4
uuSCwEjnFpsnq2A5rNyLaYAifiXmba3RaxFPpyBV5HnVq9f+v3whprxTAMT6CH2sSip1Lc1LJiJ1
epQeEPmlQ9uxBN8OewiyAYTaFpe58bXVrQC5MmOD9dgQIMporp9iJyqmauldiPyvCY7IIRWRe873
PqE4NV6KHZpZFbHSAT+/6tpE0PaL/BoJt4KIubglJVdxUYKBR1BpFETRkWWLmVH70xx7eNNOvmAg
rMExtdSbJvqHl+ouXvB6QXnlatEFcAymm78/qXjHmZ5uyZpkU7FzO5oaU8g7THELquUQklcWsFwS
EAjj2r4t7gpgjNL03AKdiFTAvc6vv4U+eEdEVuPsy0P/9lOskcAaHqiRmotqRb1Ygv208RGMhbI7
uYJEzUpSk2HvM56/JEH/rUxFWCUo/mw/5YFKBKmhnvUQa9aJT4WTtc5N29cEI90GLark4n2T1TfZ
n5KcQKgD2yaFrxltFo1QHsKYo1sbI93cMljbgwpwgnuX9DgKzODXJlsp6AXkQtBgLuLHJpch57Qk
kx1qX3tY6JL/vj/fMKMQvbwAjivtFBVMiZxDM0WEk0kYKJlYPtAL5pmvjm016Su7cA7yKFmk4X/W
/V7GPVhRuTyCpBERmpBSr5x6jcMB1+A6xAPOD6RfC2yvylXtMhiW0aie5Q8pduWDDOrsYbvlHi3I
lp3ofrsMr/cm+oTJFbnRenIz6fq9FbF+W2EWY3GFA5t/fZXgAA7wdWISDu/2obyJVudSW+Wk5bdc
qx4CCYDRlhwbDnlJ2PqcQR3dfx+gLgnKPkSapFBy4vEAOoeEW3shbihpoLv3U0AR+6SIANw/8Qid
9A/+UFHxcX5EbE3fNolp4QCAUbHW4dhScKJJVkrDM6bUc7AbR2fUitIuzMiKyeZNNHBlmFXuTqj7
gcbcxHxC8tNLNww188gd40W/rsnf5rlvq2H6uoFnFMMjR1DXpjIlq0Jp1kELZosybTW/UAUbUkme
NNDIXvnFnH03nXtci67/ycwUspBoxAGbTGUhY7zyrobjUENuWSpnmIN6cppMaUfD+vxkoZpaYS/e
kQWTDIQuERhl0wOqasG+/duhrWYrDI8fcV/2Z5AqdJtIle1qBB0U6nrJ5IRVbS8ojR7FvGzoNBgf
FeWIEHSU+blEha31Fwx9ItXGa4Ciy6n4qjOISwiGQm8SiZA9U7m9gx12z/SvqN0MTkp4iYQIJ5Tl
rHp+qbRc8WpX2NBmHOWkE+kmmINwaWMtgop16k0FTRb6/SIajAVLAijj2PRrSOKwLcr9rAZs3VVu
T66bRKRyD5O5NFa0mn8PpPUk7rZKktkYBKp4eaAnIlOd8pIevNi3RBjdV0q8xkWaQesX5I2IcjFA
7V2AjMUQ8kgkHzvZds6LfXqwIcf2zutQjrlCzTv5eXM30Qubj9ln2we4SPqg6PPooPJ9/o+YehU1
aQ3Feo7HD+2hS2VQFJKmah1hNdM92yDqtZuHA/m9LHalEEpHn98lN4IMcym35IYuZ8zpA+w5HfhS
Crfc3u8UBv5mKeQ8NF6VF6umfu9JbzSd7f8iRYgOplx5cufA9acQlUToAb2LJkXs3WQd6nv3DIme
qX5m9HotPlZfynqRqcdom62+O/evXfJGET9EagSZkYIgQty1Euei8Pqk4Pa0fAEYWs1g5ZlpHKvq
LPwWQjUG9ObbENozi0ejPoDhT8GqswUm4w/iJyjkaVwg29XsKqN8j5AAUdeZxm+oPJKJ1u/hvb/h
BYMKrLGRq4m55Jftre5sDI3UJcK5KP2ZmVP6wBpExxZu61bFXZuCwCE3MbBwemGj2DHzFWuBG0X/
cM1zT+/1Q2hIrjHIQ3Q+LbtT6SNa4R992S5Dgz5c0A6TI2XgieU0lTs7A10FaN2rYRujXC6HhqC9
1MyyxIya5DJDxqrvCBhEEb2yorwmItCl+yk6+2Puq/0kfU1G2POypOjBnXY4pbo3kAGGZGxDuDZq
zSSG5Cv88ZW4BHlhOgOkiWN82GueGOsacLrOdqRQT+kck7jaZRzpf+61PPw9RQaPGWi4WJ+/43tl
Ctj5UF40kvYj6xBFHDjU8kHP/luZ9ZDkPdeoRisY7nwNENxyqgHOUPfhI1Y3NcgjKEQ81PECVH9y
dBe2q9mw+KwX6049hYuza9v5AGz6DAEO3R8uJtKAYbpz7LxYAvYkgHHg2MgNXA8g47viwUZjlJPE
yNu6ha8FV0SnQGtZRUwtUQt+9N66dGrO6DU3wuenBhOJgew0zArqhKVPqhodbNuJxLDbAhqau83m
LuJHceuF25H/RtXIprTcXaIJqz/FjQyCT1kuzDEvr/l6tX/LnmRTfC89IM+mSf2ji/9TJJLKav6h
HECanK6gGjcYvv1qLbW7Enlp8ayQ3VPbfII8v/NsVUnBUT+oyLvqjHyWkXj4VU2IIloyKuFAhMY6
hHu3cwwl48mFUfts6NEbiey0q78w6TtUvx8ihBbQFi+HB9PcR6Faxprmubw4EHmMJ1VrLIRZzpzA
exudOUItCJA6fzU/NZKJaypzhEa0IwAdjzZHr5IF1kcaBWsJf5TVezECSzhmUxz1VGzn864oogON
sv2rlbEtAvG34TueLLiQBIt7neld/JWbOoiMvsS/PDwLBW8VbunxHKV0GCjMJe4XwzaXWgOnVQw5
gYcS12nq6dOZlgQ4nURQmKe6HBuIDAjrj5necOwKadb6Vz7eN1D7He0xhMvdzqRXuLzaXUDcLZOE
omy9GYqCo+m2Gk05VUBAqVi1JnmIc68tnsveXoRUj/Y+E/klic0bPP7W9BtQfwLyTzY0p5yxMlQN
Wzf+pqJpUYB25D5Adz19JXr1EF2tAJDM8vKHqCf1J2RQmx+zmKfAYP3ijzcy8ajBHXqRPSi3zOHF
T6iqInnep/3PY804unrcXErkDUXOE53GoH4MW+vIjE56afvh/PDfFTznufbG3wr7nMbsDuymbfNB
JWKP2rksc7fw8km4y1yoib9JdRc9zl6BvvK8k6kHw9+b9T6L8D1jCG4yzZfNnp5dQdg+rZvMHaVd
VfF9tet2NtSSXlsNsOTgOvINi7i7rWMh/LLcv9YyWcs25wPB4BSpp5eH9rFKJ7QhINh5qmqGFR1p
E9YzfvstTPqPnt/h/y1alOKvqIEUQ9A6/sLRHWkldOvZeLYPVi0ns3dakaD1rNkjxdpusNTDu42a
Qz8MrmUgLulNczOoFgonLwGvO2E1nETdjD1Gq1qODL7qmSIKM0g+S8hSmYXoGjqFsNSa+g/R8hjA
JO4BHWC/smd3ATeU6hnmGymPFtcKL8mDh7eddiXrTb44Qfr72VnQVh0IO9DaBU5FLfd1l6k9hu0P
lWwLcxwimgwlNYAPBgVpY7jQoO8Uie4adzLPpWbwgmMWzCSVI5/19KSXMvVNElJ0rm3Xy+Q5dN7S
8Crqt5ovHgrcu6/Hi5iNrBFWzJxk2m9AItJ5kTGir48SzTr+zxyOGRBH+AaW3WCKriH+srQuhV0C
K5HkDpGq3bZw+HNoe4mDqIDvegwIiDdVhaFIvlb/wutbEuGwdfV/vxyCkt8OOZ9va9uSa3Xfxw/t
twR2JVCiKEqXsaKdNfQXMNeDRlXDiL2Hv0/E8svpJZ5JUykeyl42T65lnjT+QMALQCrzI3kxWWiz
jVDlnYLCwC0EtBts+KAbXgkUu0w/0y/aGIvZWIt4WPGe0WQNrkgxXA/x54SeTpGbYb5VWCzdhlXW
ggApolA3YmAQBUpbyj2lZzcsYX7Xe1JlBNdIOhiCr4I5SvE1e2pNSvs75lMl1dX1/7PK9RTBEq9L
DaraxTgWDbC9+z4lux2Gzk5y9CESawcGkDf08aJX08b7+IKBQbpLqhrpcFgUpK9aaLyszbU9T4Nb
jsPLBBWIobFXD3KtQcw94NOZRZNhiuI0bLJLYrRJlVooPt0geSIYLfBaN5TD5TndFwqadN1nAwFF
0TY/h5+BoHUwc99hDH7+kxwKe8ya92dEBlyT8Ph7DkMsrJUZBZsKqPyiScOoMaY3sOdtYn1YsZ0G
5qjIHHVrLbLICaQXOhIZBRCVqUSWsZSjZon3zc42A1wrNto+h/RLjAoJsFl+v5qhoWa63P6ppdwC
rIPTNoUhanD5EJ1zLoKmbRdeOuprQSJGfhv/OarYG5dpnyzN8lpL/JDGJ1VJp1SiqrLaLdPDIEuu
j83KbaaA92+ABIxBOSePbMXtqeCSzvagSp9DEanNfApOEelR8Q++CbXYEN/oHAOW7q5/BajeoDR5
7BBKGo7hdfILChppx7GhVGGIibCtl+aF7dtJYwr6QTU9SfOXlsmaw1eZSuWwWEqw2Pgh8RLpWvMP
RbGyKxbAPkZUMBI/dCMjE3M0qselkQq4lVD7OTgqYsq4hom9K4blvscOlsYr/pCWKjSLY4oFTLrM
rYYPX2COYl4m0bdsksu3KM+42XD9TSKb7rjOR6aIeM1O8Z5zsmVMhSLh9TrCR3f2KmYFI8ofG/ST
4+3KoLnpR5i/Wm2wQw04ag+FuX95Ra6i169d93fOiKT2xmNamyS1eqFAI6FvehIIpMOcC7nPljqd
gq/Ct9QqAEA4AI5WuI+qdoxV8J98uympl4sUsJj2CGImCgyPcQWuvihuV3MsOUi+RYj8y9v/q0O8
shDZjlPMaw13+tvYx5vyqFRXzc2s4Ykq9/CWqTLJrC+XTtSUu6me7pvsGNmn81fRCVkyspOkxYIm
KDc2FTNB6FNzinxgXdjBl1sZ1LCvwrBG625kCJTECQRuD/i9fUziLfpQzQPSFdDZgFVnBpo5YywS
9kD+3f+c4Jxe2RrZDXHbdjsUrWu8C1Prv1sN958XnmaQNMnGWUoJlFtoe7uZzfU3lR8RcXVKZv18
33jMp7OS48HVhx6Dr1nSG+vj0dCgGSoAeT0dc8wZCKfoCkRDD769xaxezAOLJWLmhiY0pUZJJV15
OdYqeVbY0M2RYfC3eQjyOqgZ/16ahyx7vzts2HK+03yPMQGzg4Vzy2QYHbMFwHdPz474CLW5qnoq
gh0z/HppNXMnAH+BCrPckie67kO2Kp4+kv5JLVF1rmg7ye9TIQ9hWM1ne6Rv/HWtbvQTPVkr1wim
rg7aBjPpAbuBI9h5pdedKs2T0BK6QVQIk9kNxq5KvDy2q3P9qaYkBK8KJk/NS1FSp9b5UpZMyoiv
k82x2/jCmPWV+2IzAye0xapkillzR4wfYmcv+iMaKHi+7P98emLYiaPsJ+2Q6IKENmShZhmiJK86
tKmmrRm6IbQlIhTMxSedbb1Hlt2gaYdBG1052kyeCELvRc1sbBHF95vx/gpICpB0Qup9dAnwZghT
c0lqD2XJ8rEZwI7ZW1NFEz9vjP3UtwgFXEHYbkuiZrVCn3fxLb5vbhQCW9bRu8f2UKP26eoggl1b
OMme3LkVSZFClfsUGI/XoZ3Hk3lJ3dTzvGv8zveRegTfqpxQCDGBh2vGM36FBU+ij1j9jzKA/kw4
Z6vYGbhihPl2cKg0zORpQ+Ng0DJYGJcCVXN3jTYKhHdOQTuYNivXs3xtyoonm2voroYVlkqwbon/
bEc7xPmCd8GEdcOHEnamv1Cj3vlEnn14qiSVNYAKnlmPFdbWO/y7wVW27mIXGnQW7jzuObeSRPeA
4/evqXBazYXMjVQLZmDjZLC2CR63C0tpT+V+1TO1A39tKK0eF+rYmYkfB/S24G/cElfyFHLl9yjl
ZeBq5dggrKP+p5da0ykPYvyc5VQkECY4hIHat4pP4P4b7kwfZf111qzmNhR1Vv5k9LyrT9owX+n6
Hj8TSUf6ewKtsezlRbkmt2xWwuihtcgH0iNF9GS8woOO9kmtC8IIXfvobMvGx5Am16aHWA3kCd2g
u72bq/zJb/x92ECHQ97VUvBgniB4kKLRNyVjG/w35MGlNNiv0gBOAaOX7ZdPPWxgdojC4VmuQq8I
bQb52YuvKuYmhhZyWguWcHu4oibJIcFc711cqDs0+d7W33YZ9+rq4tYEqMicNF71VrztfGgG4hCU
o+DR3PN5c1RLVGaNSyNLwVV2y7TAO8ud6jHywXLqt1YL9W+7PnO0DpB49+EM+/EhcwYIvvckphyq
xLkenzvoKNfALIsc9T5BAYg/G2/i3nSJ5YzCJv85fTYxiK/Q/CdpFp1acPk6c98VPvtU2zX59qqn
C37pWvS1TsuitDgRs9Xpy2dJd0rJPLZQEaMGawq+0brFuXTSlk1SOQUpuTuInTWIgZX+XIzkbB42
AhyE1YDV2EE91jyMg3R0wcXM0p6rb7KvMARob5U5nbCIeEuGXkX2hPnxbi94tK7ai5SR0Ta8nOqk
yV4fD422SisN5pkpNTb2pWlOzAgbp+RrAtltKsN1TLjymPw3gm9RPhfc9ku6+ijsqH1iLfMl3q68
L6LtGX1z8cTUCWf9AcgxoQSlTlZrUGU01d/9YeILypJPp7O3AXrDXSZmcIEALwBcMplzPzFbkED/
yf/zEqEVkP7+oL80yWINfWSSKAWEjvABjqr1y05Ya1ajaPV5sKF6Qk0WQhxRLeDxpMw+36swrSQL
GJzHGew1h4Iif6Da/t0RwncXMiG3oZC9NhsXz1QIMbltiQmYdgycCjSAfstl0UMVAHQoCxROIwxS
JhJ7CrpNwxQaydlp9GKEoEdWCI6kcMEjh6IXirVuv+CkurUiosib6A1z57HfG1DGtOX5kJhGmOGy
9HZu+Ti+CYxuTTUuBO/uf+oxYilNNcVWd0m+KbxGELBYLKy5J7xsQwDEHG4PJTW5Lxsjq5NlniZn
50uY5IDI84M1oUz6wlBxg2keLiyLx9GUqA03rAKBr9Nkb8qYpyQiWApiFDF2f6aezflqdtklvsJj
uIfo2h95Zr5TMdYv7N+ssfMUXszBRb+xCKYHn6aVJQIIUcOuAi/Rp8PJ+vxt+c9zrp3PHp8m7Vv/
dRx2DtmGDmfd/Ude0B85QbejNMviZN63yh9DDkON6itw5fdvxlKYFbV662Htj+gy5IZ7CJNExszB
B8eKpPLcdm94X+jxgybtpX5P6KduYbif9ZgS4G1PWsBRig1ztQZTWNHwr7QjeWeH/NNbvq53Mb5f
k2fMaqzODuYnYga9XAi2lGDfgs8r4NOXkAfgAXxZ2t4VtldThsNu1s36GZvxbbiGU40EqVVBE4vP
XBE0+Xtr3AxkQdsv6lcec+os9Bz7Git8JAFfvFof2zGnEewF9LQMsxKJ1zHjzsIi2ZX3aT7eNhu3
lSM0ZWMZfaqH7xXFHzBd3c+9HgPWBsa9srgBhOBVEJHIKLb9eQxaZBG6ZkHpER2NEHOCMzx5TOaG
t6QD/OSAlxArB6fP4WuY0njnC7X9wukEJJ6kDzYTKW0e+DHnRBOyFwbBF0hZntzmiPY2E+apghoM
xBpPjHI6Q5mdFXQpgJxukGc8Fjdy50kagFk1pqIPgGPol29tJ6mihhU373m7Xxaw8gIxojrKPVDi
YAkB0PW06hVdAOAdxNWIIoLGLvcN3G66etuUbl6P0impfdPSOiJZj7p4bjYs0I/sLLHyDZMwBvAf
QBrOjWOTQAUZXjRIGHgHLnhHoIJVu3E4jORE1tcHXnhPuyDFgaVGFYVFhmz9UXrGEbDww4VgKSZe
4333Jes5gj+MyMEE5cPHg5ylVu7Xi59oLUpKjW2uEpkbQfMmAQO1ULuO8VKpGs5iL8clrBxkqxS/
Q+alCiZ0eppFM/OV30ReY7rOmSGFtXiMC84y+Fe1PGpViRVHGr/GOVdBHAMoz0qA851+m9z48s5m
sF+nQMowuZvOFyRzAeW6ucZ+LUYdgJJb31oYMfa8jpZ6lxcKz0egpoCD56f7mvumC2yNWWmuWK4g
tzOA2qe0U4LQDrluL/m1C4HKl/Kz8JT1Y/w4aCLNL6egk9R82hASU0j5NuKLnaXlQgekHMfkgRYW
G6RKn0K9aIONpu6GL1O0JOGbFr+9yKiSoqyXBVBf37FPO1q96ZnL6Bz29jC/cDD0ovQDHof/S0DV
uLsIiZmNhi14IQzS+nZpTP8Vrm0xa2XOalvnXQgpicyafJbnU5M93KwBRVLS9uMR+eIEOUKHSDEq
5hKq/ajNllHeHmYLeSvuNXHR7wY37mvias8CKAaL7k9Ad8xryZ37pjEcYUEPVnxa/UN1NYQ+2fAF
Rat2n9T/Io8BdgrnznZflafeweCohMAsC++2d6IYSvJuy/MB9pNY1dH7HC21unJfbV9HayKMSxGo
W7Qqk3RaG7q91OLIWFpK8J8e6+fEZNSdMhXceIOnqcW7g1Zsx/KElXrXidwrs6c2/ECr9GLr2gi7
pmcE+Y9OVje7NUNueC3HdA1Yisa2aMq1PipAkep6XW8en0kvbB9Df+jJwrQ9TO7AU/oyYJATuUcM
3XF+sOiQJONghrcS8S92H6gtsjdYjb+D3E2NQVPszVgMVVLXEpgLgz+ZMS3rFCM+fSZ1tEcl6Cyy
Mcj58rEp7IewHYNogJo2TkzTkgjEzM76bXqX7Pov+aqA04xJX2GIHIW3Ym90h3Rk5FYi6imE564C
sHyYaitkB+9sqk9zngYo1NFeNvVLFrVXA1/Mb6kN329Y2LmjoXn18IfZ0WAc+qjHRnd3/uj4OGh1
6hX+2EMJ9NbeP4r1/JMuj4d3chSWDId7kkTfk5wzhWgqUqgsDI1mTjUiCV43lDYM7Jz4yq5cesd+
UbA8siu5aYSCj+mUKZm+JcPyRU6NhghrY9C5P+OristgoOpDzRzaz7kzHzJqOY+pKuIRFTilqCko
ExEm3BNQoVkfUXHtHqKT1iSZsgjfRKOARRwWFsMNQEOmOyETuYJOSsNVhqMQPJrLnyb3/qt+3Ccx
NpMAvgQrY3PqCpZLGbfuwXLz7HCLngLFYV+AulMXDnA+NpxHc6Ewhskbr2nQrj3+MKySwua3+V/S
1L1/sFFes4h5qKNNUqOIsEz6hhOvZviPUSi7D9ePqqwHsBRVluuSgUYJ02xZQLig1by6hSio23FD
nbwvfTWucXjw2W+SftOvdd9hvYzGLCEbAvFMygWw5vH+KwddRAkQhtCtuwswxBVSW1pNgffFlMMV
qZ75GAWbK1UC/Kgtp23SagQbbvWorCwjdGQoKUoydE57DacbbZeFMgho1fx4oM+pz0szTgJ0ixMW
XD4V9G2kQI0hAoZI5c/aD5UZU6sB6zDPuubS6iJbltmlYZXt6LfzcaRHqqERPnYHGCliEacxIf0J
4+cClKebWa0qV+mYnfhCqpaLcNOaNZufkuyZs+6i/kztqZJSVkirBv5V6bnKE+T+rr9SzIm56tVs
pPvNOlu8RceY8C/5nkIWlM/gAHtUrKbIcnaBD9N8tIHdRd2KVrZNOL1RqHvJTgxLGu8QpS2ABPhj
fvbmyvicWIlfQVJExOex4D7+5WyO7LZ19I+ASeyMqyFNlLpjyJsYgIIcrBIUkY46UNI98v3UxPPC
NtWKyBeZLdRqdZwYbLhQWY5SsoIRkPr8ezeyRpIDNhcQlh9Et77TrwHDQ7WLGdogXXgzChcanIz4
/BzrbrIUNv/VO0Nd6+XEsshXQWnfnt8fjAlyPBkHwosMrOxwQHarSgHmtHvrdj5pL9PkpRz+KnOY
pJZYy+O0F43w6rESp4mQqUPCPYH0i1v4pFjPXEE6hGmlJc/FdR+lX1Ug4SJ3WD9FngtejAIvyp4W
ERn+iRRM3xhBe4N/fnN9ZB8P4FBqET9xCdjDMf9ulrRNlv7SzWrK4jQTG/OyN6eYiWaVp75HV2RD
0WyqduuSc2nNaVA9cIDo4Y6if1pVtzvdNMsqSyVDVTEiC98OU9GUCRMNbEsQMvttcGO2D7Gy/XU8
ADBuMBSJcZYUj8CJgvL/HPY46pqjGc0xlTQJmyBfqko9be2xjYeWBeyjAEfTm4dqC2E7jTop5CHl
ctTXwyCvCSUXm71zu+no332s0j/pM6Nn7EqtA8wLH5HE7cGrA3zekLYA630vTH1ywn3oPBDmG+pg
GVp3Se1Tyk10Xfe0t2OkaiJOX+W1jHRBOvJeZEcjxWAwEvDhFcLbdCUcin6RsSLrvUsudGK1wj6P
medE37AbGKsIGUiu/qeTrN7LXIekgpq9mffDsnXIrAWZ/O1TgtbF+7g6mSCjlQ05zWbyOw4x7wAT
orB1bK56wjTfKPTZe0QxM6bGInlwMeeE0vY05W9Zz598dGvsPNFGO3sDxgQpapvIiLlAZfmSPjsm
bnYYQBiSBQZTri0nboncPbjQsBpQ4Geppgn9ibSx3Crqal2CKePCE/hrzm8dbLP3ay6ePsIyxRo9
yGijvmcRoKt+l7OXmh24Au1wMeUZyg0oIY66RrLxqgYB8VTiG/XNGNXh68JVKND2mgfy2i7EwMcP
nMPWkYa0I8hq6PW0aLusoekkxwDrepdcnuO6pvZ8gv+kT6CuPhjNyYj2+5qyFwjnDy6Qu/B/awHi
FK8x0EjX2B02JkabWXx/aX99imvgyAD3F2RsL8vtfHy/pkR8n6Z3uEfnh8ajT+lliWqL5GJPLcWY
FhGB1fLCLpJushM27H8W2yooXzTU9lWXnW06XXBixlqDdTEcpkzdqUmdgGa8OIPZv9Ffm63vKVWm
d0lraTFeRQs34yXneg8h8p5ZjiJWf7EpE4iVgJWla9BYwhm6KruMQMnOvI7ExFXtyukBKH39dbA/
7klR78gHNhTSBZeadeTB4UCqOjX0UGK82IBZfWWLIa6eXI//BbV/AB6UVkbCDp4nuvTnDa6gcsBX
yJXHzmbcpfH2mPPMiJ8WNwX1dZc8aILPla/JZ03fKd1WksJ93u+MatrsxW9ieD9XWHriWAtLEsOk
Jj37L7bYZAVfJeH1hc23TntNGommNu8VwB+pGQS7P39OGjMH7d04tFofOVlszUV28qImHO+5HKAn
KZWdU3dTGtusa0SiD1XPHteAjOs2nbYxgO4kx65MjSgXPQ4t3hI8rYy4hqsE8Wgt7NLqpro1bjMv
bD99lRGssKDxcLX/2uHNGdL51lTDsTXBjbwl8+UHRILzuCF7zNz6hQg+oC8otKN97u5Vg96enz/A
qSJ0uxTRGuaRP3Pk6WhlNJgSp6DBJhw/hHjb3aPV6gUySBApEEX+GyvHDId879+/TxeKvzt5M/YI
J+3dQ/8lfg6sIeyb5YATNAyGohfZYz0Dj8ByjTFJ/LoKomxUJvrTKIefQ/qg02JH9kSrMiQXEY1w
D2N64ACX/xZrh3X8+3oMrxopZxQAn7jZamv/x8Z5EbKZibV8WtkSua+KRUdf2Pyo34dBK/WG3/yE
SL0UR0NF7PAVDgOUW814XvnabAGd2b8i/VLsvXmTyFY83Z+wGqY3KRGTbGyJcviFuWtbiYXeXQnW
/9jHVTJJ4C8O85CBd8PqDeSTgFLig/l7bxZvIkJshfBYwUQ2LVrfHgpRxmKZqkNsKpCmnXwE6IBJ
vSA7m/0lt3CqZpQGqxkUUVNB/lCm7T6DHaHkcFBwK5GUH3QCz2wjkfQD/ZYa1EwqD0OdvZpvA2yV
VgxYTSSRNAhPlYsSJWGvPD7EHhI59FMtAeNr7e4i/P5v8hXdHfzNRYXMYNxkSZxwEysft2JKZgkG
cS/meDRAYh0ygeLHIRF7vE5sVioCuUFCe7Odo271STnOb3EL4w/f5hOetl6L81hwpNssswMdBjfi
piY9ExRTBkThiT5bvCie6y2MaufWpn4zU9MfVWSiRTZ/Sa6zsfIv7TJopUWfaE32+ZrH0bYTYcqW
SSgNXbZBgZBMvtUkfiawaQDu8vV+U1OWyagXHbOcjbwN/Ju/CRv5oGQ/ThlcKsDIy4NBCj1u+dC/
429HkZMG97oYlGLVFSh5hWGkIzfsB2rieXvBIHgqptOq6wN4KTyl8LpOTUlRr2gc+SRx9QweLqBO
T2HkY3B7KL3nG3p037XWfD95lY+cjenOpBM3XDHtW7ziX82njwuT4DH9e2ggALOlIK/88/XG9hKn
jTa0aLeP2DVvrSNSvLXVHif4h0p+Cicqps2rt2XHoc4uvCA1Pd6cBDV13FAdHEDhhLQFhGQCi9yu
GpcWG+Ojm+872i97e/R9XCZ0R5vc9KVrGgeNwsywGj19QUU+SaVzpToUemJ0h8EINHMjz8LiL9Pi
bpRPj8D4nww2NZr1qkg+WcCb1UD1LHpjVwosRNdIVtlyTiLo9Sp63Xy02dxaKtrAEncCiMGwz2Pv
w/E+1SeIYF/0KL78eRtyyghlNy+CO1XKDZ2+0mIUWJ/vCIdAVPZqdkqwbX1KdJrlHr6sXjtMG/FD
8YS6Pi0pP1dGpk7/f0auzbeDzYc1RkstrNQqAsKyubc7pAFikM/tH9gfWZmeUK4NnabCyk+aiJ4v
WwGkXIg4knyR1hqXl98kgFInHVx31Rh3O+TFzIO8Fv4ZXcmXvgEi1ywHFY0HfUfz2zQDjqMQ8NqB
hYOfm2uH79scQOMvx9D1afksKesrVYGyGo0SK25fRur2y85T+2VtERPoupUVw9UENnqoNsWE4bo/
0QOiXGWDXOZWP4gMqiwzd9KebZ7sKu43kNiCxLKf35hsCKo+cE1Oq8odhnvuCor80j2GL/2pUr70
5kgcDhEDsTv7flfjLcTzNzB72OoSJuG/98dJmwPI8eX/48dplxrPuI/IjqwhlWU9XPZ8eeqoWIV+
NRJQM3TqrU5nSHfZlQ4HdyQLEzs8wP2ZbKuiw+0fSMuDk6xWNJooMkfYLTnFPRmf1btM3th0LNho
Du9b0VJYHZhqVV7HdYDusnGJwiNb3PCVJeL/UiIeDlLZO7icE3rtSToljjPzzG1C+O1tWSErEcL/
z9LYufkKcSgKeYtJ22jccA19FzRwHHuC1PPrSian1yEpnO/LoWgC4iwdelqyttefOgYklB4KJKYl
IeWIu+EaY8UNuPUpTjjZ92ztK5TI0KWD3PzAbpvDqt8i0EIP1uNq1SdAcfWqBIsircIfRd20suRY
Nr8BtrrfGjtI9GYzapka4N2wiBE34cZMCXr8pvD/6gAfi9C3MwX0H67VmDB+HpIVEfV0aFjeafvn
7o4P10NGFid4tO2oYKlgPXd7tyAEc5gwse2lTNIXRR3aBrRHBLyVYuPGHlSumhVGbNDwn8ycst09
a+YcoNUsWCllXBmd9cJP2fsdYxUDj4Xl35GAD6EkmI4VTZS46xeuqTAMWrI72RWYkNMLL4ZGpi3R
V77S/dc4JbL/6AO4LhLnPOmJq3/b5jXt5/cZBhQ+y9LLUVzJrvxlYq4fJRtSBAQolYZBDuYi2Vz/
3Pp5LyxyAkcH6GHRvaWS3jjTEseaEvADCwKXgh2g2KRC2uMogeKdTs9t4Y9ip+wDSEoeCCxx34y+
CFYqPlvtL7kY2C7nEbjz+JSPV8Twi72nNIkQcxNQnICl4OYOIiXAZaTPMdHiZMmqdOXmERkBGqF/
8EoFBciFxT6s5FpAMXJrY59we+gi19YHceOKpSBoGDRBVNxsgupzdsPqqH1qEZHzeyy0ojsAoUjJ
mMQtbpjiiPvH4q5eMIFlktR3Jwx/QrrJq9ek5fkkGajmw3KLlVbfbjAe3I9uXdBnEKvFNGf99YsY
C+d1Noz0T07nKeDeKHdPxYUHlwIyTcEj9xP87c8yt6HYAg35Fa9pw0VOa3cv9M3DA7zvgr1qt8pV
MLdwJtOQFlCtPlSWcdvTIyZfX1keXOmFNV9FIzvmizmAg8pMSosLWgQiPSk96Y6JC7oiEqCACoG5
6gQv7POUzD7he3nRtVBGyZfjiBRsl/6eHY2jYZ3PpMGAsm31qcMYoKYl+rHI0Youd222J5Yz3SGo
BpDMJd+I1UYJkvWWeTEnaQj6TjIA2yiJNdGdaKe7qvGp2+tBbQdhhRtxr4YxF1t+LBZ/UsoEg4Bp
ZJnzLMumc1plttKus3KaKQ6dWIMgg38rBTZqb1TQOr26TEFT6Pt3jP/yQ0pNkJRkVpnfjh1g5oDZ
em2FjwXbCV9SKJj+gJ5TfpuXPX+t5lK3d/BgnH0hz8FcyZzhlRTbsLUEZOYKob5DMuflNw5Ja5xu
KcqYedk/1QywK+2MCc7HlzMVPy/pfNU1PkXmqXTEqQKCZR0Id0rI9o+rY7XXhrcF4K+NUrwPpYsz
ZGiuy+XnJ9iC1DyiV2XFkAIHPzzx7hwq4qWtTDMCQHvYvuWPOBVePw29BNVTl3YpMA8WqMP0dR1K
Urljd1yHmEkTTlz7lxlsY0OH8X0qBaARLd2azvYwdjRIHTKsLudy2rie3wZmfJYVqUdwK0vvZWf/
wkLsb1YcH9FiQhoWz3EUvuSPZ4OGV9vdbdVUAmlOG0V7nGCPbXpyRWtOdtV3rc4vUCGPwyt5BMeh
YR7yzJxiefzfyGXzSIZq/FUGO8D8djDvKBV2eI5QydlAMisvin08SaCLQom1433MclsrFNVmjomo
y4Xn8Ps8vgJXD5AJgXpafdiU+ijAwGg2oL8sQqrcIRME9EKBEYhJb0c8rAbs+YKv90TqvHqjD5of
uIDzow5JAC/0w/c2aKBpzyOgtu4NFK2uWt7jkXbOMIbYYW3c3rwk8CABGsnfTAwtVYJSckNFWqsn
D1oy7wPr8NB/wWaaQ3xon9IXjR5QeFWjN17Yx4alLZUQCzHGJ6vG0oNRe+8NtaVRR6lLnrF71O+G
ngJVlRCC5pvqF5x9tzQZdXneYfUMdyq057Z6dCUmWur2rFDk/SGpIW9rFQPlro2wFk0zv4rKLopj
xdNT7gC1xHJitoz06Bi/iqiVwxJ6rvsFm7yfAEYyFrqX/HeSsT6ENIDuPpIGpyVO16bvJKopDqdM
3ALiYtDiVZR59VgPx1MM9D+tlLX49MzRxODsP+yAdGblJ/M/EZ8wEdti/nZJrtWR7fDtb8g9fRWM
ySOUHS3+vuXZcOHlpf5e2MPc7KxpBKqKhyvhHtIZkJkcusmtF4gD6JjH2wOINW/ny+dRhU+Hu9hY
VxcNLE7pM+gkn5EidpxL8vQIeiLxUcOpbMk/STNuI8BKhHGvkBkwdUoZBqLJo9+QQRIIXgdBySLe
iUgX3pzXLTVTuPJ+3Q7nBzcouX04Q8xgRVcpeQsbQOFncFaRLFz0iLwFWNt6eTs0zNUiiiKSvaOh
hMfD2Uo+ueGTKtXv/AbscpigQKXyflMpkdgH5Wgd9S3K2WkRMtuUkjAmXSGyy6jJU2j3Of+UHQhA
ZkH254ZK20LkxezKGetZqJGw709MeMwtGiFM0kiCrb+5vaJycGdrGiwAjI9TQguaPB6jOsn20cDi
+gelwcgZrm3Z+T1Y+TLkM6BFtheHQe8hSAn8qng88j7vP7MEhpuHJgeq8sXFd+9MhV5qOSXq4quv
x2OJnTn+ZP2GLq6N5h4t3Y9Wxu2FrAorIIfe/46YqEfPmOt31iXIQqEpzoDuSkXWo4OTykNTpPW1
MP4vjU3CL4vYsUvP26WTkuUwMBnvEMHX2nHsvsd+uOkNydFK0RrVKLI9pyfBO+7XmxSIwyBPF1ax
9EZy6VplZFYvz6aE2k66HSvOQoEQ18z0ncakCKCONurefUiyclRgaMT4S0I0tgcRvXqF8iTlsQwc
TixdkJtEonKkF7hEzOYehWyr8eOMW85Ht/GXm6UqxukuYund7lbZ/oKQ1qIlfpKxyFTjpMbWW4fU
LoH3e06ai3t+ySuZNRPRZlZTg/nZw8nVI5f86Y7UKIjgVBT7A4KwI37a7eGyH+Blw6dBbWNer3Rb
oyJdDBwf/2G1sHVgi8zgjfh4nO1atHvtrHaqAgMizBf0+R2S+Dqic50P7W5f32uj1TO5O2rExIVi
cJLW1gbvrSlDTuG4YpCFNqe75/UvYnWkQhj0vde9CrmIegjs0AP96CrAxqx3TsxJHA69az/MOqvg
MD+XfS1stH4AHOET5GOqKQVgfIT1+Bkqc9YtV72tDfgTtxkP5ejN5fyNhLss05pJGKYlhvSlVsai
n4tuI2b/tmLA4eR2d+qL87cQAr2YqhaeXxr3+QxA5tO8kF7Cq9FhlolN8Xw1MhxB3urX4tbczInH
+YaJQTGmlEMShmtkTn9CjGdwVvf71xRyKbWgcP6roMpIJVn732CkH4nRzrEw29XryjqiAIUu6DCw
bVMYFpvWzrQu1Lnb6uR9p44yzdtcX8lV2aqhm5m3JiGn8QJV8mV7GNXFXxLJ+JwlftsGH0vDMgMB
1rLc739sx3+74P5z0RGxiy7Q69juSAQUftf8cqLK/XHBgFG7O3rikULKR92ShAp1sis0dwXTgQpN
nUHF8/zv1itJMElsdSzaXIk8sumJoPNDOssi5HQXG/WuXiso3FiEsZnyUSbogg4lrhdt1dAOhI+G
bRNiKHy+bpiEG/njpm+GOZNEHajpDT6KZZ+fvtPmzDXnBR3mRUfWRzsuXJ8ZXGCieU+e4tra7oRK
c80svtDBBtUrAiLGWfeYLaYlBOukcKEFloVsXdMAlpjSrUXx3OkV/YRp/aLTH7Fj8lFFHiCZosWs
0Z7z/m+Emx6RtIPJFd/Ac0wBlwTLMdgrGmmmhfFxB6lT0Wa6p6nSeBr8akM9ZZvO32ZDUzrboGYK
gqJNb5U2/Knb8OLkgJYkfsGVdUvl0jaYSyeesmrIxtRSsmxsOmi5+SAQY5ACQbjDHNAlQnGVBrqP
faBAIWt2sZz3QSSUy4kOikQ01cUC/ZCgzNfHjJRVPfqpMGcedelj2qcFD9ki4cJ3rvEhAk3vZLPA
VtxnjQtu7HMQaW9RoANEEGvuVWXTChUNjAwL9hnkZxKO4jZ8kXevaUJ15M66Rogkvrol2PjfH/p5
ELoS9KoGo79F3VkJPH0VuM/2tcEO5KCfy47wIkz3MRkroJzv3TaxVrpqd3rczzg2LTxfUin7yYpi
8RqyS7k5S6PahknMmnsJ/dimunEXQx0R98lpGymASCHxbxqLX0yDqT7mQ/WWuwTSfX3IY9Jsm6+H
APlp/nNI3y8IxcCFJ7CXyUZQlnQrRbTu5sFdhbP8hFJdwdvjKBNgvI5IILGk1K71lFxKpM7fREgm
xoV3856X6yeOSQuojyiEzn6Cg3bltL6eFWxhCbIMYn+VzJT+N9fLb4hkgOjtbscVvi5cfAHxGLlL
y7NfJ3sjIHKsoa6Y72040joiE71WcD+gK7CiR2QcI+mSf/FUeX4w/nGwqd9m2/y2zSF0RyPk/BKv
cU7nGkDEI/6j44t1zOr3i96mOFoJGKFcx2VZujldaYzaSNP788wGrcOrcz7hkahGE4jTzXK3FKRb
VNCy3W8eili+pXA+FiNX5ZdXlP/AEWwftBLz4n0eFdHee8SRrEYszM+0H7D46VQ8lGQlfB6RuFZ0
HSmsh/5lsHHh8FWqOMxlGFrsj4TtuRsL30gnPOdhl8fukmJex40+GBBlsKGhnLgmj+L+qbVNEehd
JDj5nG1xSfiwJ4ptFHcNGkUNclzRRM8Bn3kOItc5q1uGasos/j9zZ3iM3y/YTIy8Kxdb3zJij5mM
OCD3j7wZZIQtGeme3RCmSLR9MvKn4UHhzBkIHzA/EoQOckmMsq4MEyNjs82M9fryWag0EudURMJs
qpq0/TLrzq9PhBOOWR6m1Hklkqi82jwDdZaSIwqQQin9oDwBN5LZ4aQ5P1OxdZ9TOSLlUYjYei45
wWzizNMaV+V2bLa2Lv3Mkk4BP1b+ajOdqhKTUqS9YRMI9o0o9K/knah7m98eULWjvOdtFMxUpC72
1wFgx/FebklW+Rl3r94JnIMeFPmiNQk8YsL9Ad18b9umCNehrZ0W3THQDMmMcrz0KD+dfAuMSPBl
DVJerSqG+/fYvClZVYqY8OJ6Ju0wsbf6cCgH0EPhkEqV3XbYhZrAX+maSet/sR3QedpQ9IuU/kmB
wHG7eipjca+A08501OHy7YzHC9PEM7DaufWntcd96RifARI7sv4vaTJl0p5Qx95UhSY4EE9X3dod
tZEPdd8qqMg/SUvQLKxidTXOm7NK0nEyfjGVTD9vF4Isk+wCR6zmZlKRZY19FFjkIsaq3rcKBXLN
JLanLIzCVnjhLz+9KTL6hGELd3059pK1UepoPT6FvWrG2DIhdrS506iI+OVjbnX5qv9M0BK3NjC3
71FgC4r9XBojPsASkMCw0xK1wPCwsQPHMxyUWh4/Jh6tjgDpQOoD0w92brolO895YTEOmj+Hgw13
SYKQwKwReBcb+fBDagY8WdZMQgSEnNuhnvb8IDpg84IdlaZxkqNIhp/Vy8NQnQvOIRcopcf3h5jm
IKoktwy9tNonPUPu0n4Aj/elxTY7SZ6qtGqKIiyIMu1JQkGwToOgFEBGbQX/kKy7Mr9ZnpLvN4nf
0Kf3BirMWvcrzKpOeBsIbkO/GLX/W9cVE3yIBi5ms/ndclsA/7yt77Zp4cJM1cA0m5D4pTR7RfWw
vyOOUKvIP20ZuNGBnLYYQLCvaDFa3Mh3a/KHX+KYiaOTy4cJvPmwtciG2ebtwsU2pgYGHfrKncit
TNY+k2h6guRAMHOnRihq+MmZd/kJ+rCCmP/R4sXYv2Ak3uZMDBwWDFoFGflYzco4mzJ3YewugbPx
JgvIsWjv3FTLEj3sSGeuAJtkmcpUunJAVRrxAwZw5wnmCd7eMwplCV8RnBnq6/JGZ7hOL/1HSLm6
qK173B+Kh8dI+trpu1b1qy8zBgFlEFVrunzTAj7KIVAY1YxzJaQAFVn+6sTjjdbewNZt2lDpZGV4
vgCdkXRfWJbrIvBwvGxGh259GqfBvMKhdlh1fnHhDFAKhRkA/DwVhOf/alrzAdHeIB9HX19vYrPY
LcvKw/X+jwSJo6Ouzb7dekFMNlNXP4Ebl12hhjxYbolpfCOF0dZ56pdISuBDtgmtwGug9YHDc2x0
uRBKzbHHF/NwBfjTRkeWfElQsC6b/hU4JwNuTKQqWLlO0+VGZwhPtqc9DmJOKGUUVqMlHovXXdms
OuCht3C6namDVKRdlslkqxQoMGgbJz//7em/Knh1fJM1qM2QSSLmEXNTAk8MkRlIB+TmhDzh6Fen
mGjvEG2LCY503TGC/dUilKsdCw28oT/dbfJvSN9d/2l/Nsog+9CYqhzZEQwi7A+x445S4JZ9AdS3
xpylbyY1FsyKSnxcyx46zWHwTXWccOk3YjGoaNA6c16sRfFx3XJnOGWULxp0FWigLG8+YUEyz935
Sw8sAyTPRcYoM4Y6A8ugBR0tTpCBS2afW68g2RV6GEueItLN79LKdZRgrNAbSvKou5YOjipBUGRC
6pM96uDirc2x7EIQ+isSZIIBMNaNycnGRwf4ihW2GtNOO9DJ/42QfRLCFOIrlM3aetLGXpACvWNk
P0wiqtvCp1ToBwvRkZflkMtxSwYfekjazPAxf97gU3TbvOTwlud+adz+OgR51vckiNuhhh+vznA4
gnf6YP0x3j48LocbPRjSFxZMy0yfFBEX8nxGuZ4LFSXqpHCwZQu2PYNY/0xMZBOK9MV2ZAtCgy3T
+8AMwii0spZYTFj9dAYyWakrTPyZbvibHbjAlCKK+HAQ8FHO6M9OakKImYgYYqQNAPYAiBMziq5D
xwqUp+V1w/txXoKOOAr/9vDJP9/qp1xQooDxc/wuluFT/Kh1bfExJaM5/R4LY8T9uxJzSH9CaGXC
lbSIqV0AwuIuVgxBIaXbWyRFY+3qqTj2qyOyaSu9zgmqS9wKFgnh113NM8TKDMTqUxUb6RiO5jiO
Bv3zduUjwZ+b/z7S3/r0mo5PKlleytEOMUstoXbZKCKRqTaaYDmYI5TyB+Kdf+JH+/P9sd0kC+zZ
NcCDQi7J6BCnbXZcrvovuZdengwXwGiiGAbs2CCCg4QoaZaheTGOBf3iTprVbccCnLCPBBAzTi2q
jUUkNRhNpoJSSRffFSCtwp0lnr/pSpVud5eOqAUZOnK28qu+ekeAJQNLOyeH2hjoHUZJjrY+bNse
D7/XIrlJvE9ugKvze+6o0qgITmvSS030iMzqRxxeCNrB/7mKYsyZsoTLwpEBzMuxtfWKeiI7qsOE
GcCiNgcjtAVMlwI4b18kLXMP71zFbaY7bMms0DUkXX5ClCHCPxVUPtEIkI/UzSRwgFtY+B64aje8
EE0aW2gH7Wd7zZyGQVeuGi+j8BqnZGPr9wwS5o/TJnrWkCN3OYFPEl9AD9DmDdDweAnfrsOnbKKJ
hroEWqZOLTGXiKCKlPfmvXVw6NGKQ/XPaGb1CZ1RmsopBHey6J4jZ9b2Sp4jcFdf2YMKA89GSqqD
m5uE5e1C0r1EMbkCPrD1K5YZAWrcwdU6H4C/NTQFyxZj5P6ZXIemx42OgRBQg1yT00IXYUmJuI7H
tHy6CB4S9tQBxcheGeg2OLDw+jJTbMYB04e3TDnKFE7IMhNwzRswYuRBKhgQiX643NvCv/kzf3kj
IXCISGBvKbGPAluIZJz3im2GDvMsAOHyQr0XTgLXZnaL0D7qr/gRpktrFz4cIWwIYigoWRbcupC6
k/AMDBMMIOut/MOoWJM8P5tBvDegbJvZqPWwjamaxWBt9M38JafAwU39bMMWyqIBP5qb9Qy1zThw
KaPqg/oduN5LjskI1pGn49uQnRYcE2VXrMocMuHrdmW+WFlgGGaFb+UpFx8pei3ixWzcBFkEX77R
IhGw0fXx9bpL/Z7vPFFrHNv+d39F24xpHvMzve4SQIUjUkv+LVbZFYOyG+I5tsTJ6pX4C0d9IPFE
jTFuuLs/WaqOGpS94H/XH+EiV6dP8tRs4qt/Bgrs/D4SswDvD9CgqNzriIOq/wSf2LCuCRKxR7sU
ZlQkjrQp7Vu5avhxA/gsnywohcJYNKr3703DXvwFnBoZcQgbjrpNn6rDunQj77E7gEm5NO4idbjC
WSa53eAEX20TbLLvvfndEA403EGTxT9lI4++3JK354zlClrf4KB6Oom6retcJah0mDbgGkuiI/8U
WDQtJEJe4r+a49oUDL3L6LweqL2GHUPG21haAXaXAG7mMdHuig4TgEHVm0YyJ4m22OH+JkyAF67a
kUEdpBxm1mAQyW9jCnAOk8270QPzC+6b4/K5pp8zsx5Jw5GBH/Wp9boxu/hKIE+pYfFO+xZkHgCs
UjKffsDxPpL4uKg1WN3zdMHOlLaTkSH52hTwZ6q/AChNGP1g23pDzswfisYGhVQKkr05to4eLF12
tXpeflNEpKFXY1VJgQ+WpHBiHHSppMqe163H8vYr97F8xfVDgEMl3vJzA90BIXO5RFU09calJrYD
ETQRPlyBPs/8B+k6tbwCQo3dSfF21lsA0K6ojtCjvl9/k0LwCzBhReLuFut5/znVhz22mowAVw2U
x/MiFyLgkMrXmuhZVRVrrOB8oxK7JAasD8n/zDWK8VRnLzhlKSw6eeMAyIfbjaGC86DAFdkcr1R9
vxl2/HdN23tkpHlT7o/sckXBsjnnm2sYY/XDSOD5JzsMUTSzPP+7qCPpVDDPFO4NCt3+IZV4HCXB
12j+Fgj+ZMtIW5xc6VGcKURKVbHoc8oTE0XQYEvqB0z+k9x//9w4y/O0QQ6SUUYGlb5A+X6MSDX+
ArxypDlcFjFfiVZfh32xBrea13uB5p/rjKzHPFTOeJdzOnxxrullWrKs/EQUM+BIq6iStQGot1iR
RuBU4Bfv8YiPT7ahUMkFrc33YLbHdigKP6zPFoRex73PlFcRwJo4l2W4Sh9LAEm6D7hWZjzyaWUH
JPAj85C02Jn6mGl2QsWP+SoorDuBcotb4PQJdCLb8UJDwpElksHNVQcR5QKQ0Dg0wREEC9RrR0xb
RhdDiP8WT9/2hSJ7wHPwE5LIrGO3+sEKuPEbXjSPvAX74q7o03XtGnJ/13qKiJfGWdFc6tmAjGMy
JRuqs8gh/XDaYlNBSDFhV7jqjLpvs0Awhvnnza4ylbu4ahqfSfcYLxgTR4aVHnpj+5liLtraftJq
cPVMaEBuQ5LTXgq+W82ZbyK6d1Xlk+ipKQS8aQrj6We0dGM50e+TtRaQmpGLI2Ab/Ulpk3DYEZSm
7kkS1zYpdDgjdb+arBJKSIhMQG3VcZgEbacnoyVN/IlUCAvzUww4pkWrvSx+CKDLBPVReM6V3FgQ
xp9FtB5A7gUyn/AItI3JdRbGJrYD7uxtQF5okmccOdbb4CwdlBs0+Amm3u2ZNPkzjkKaTdSdKE1e
uL4rMKMIaN/szAwb1Ths8DTrwik8nGPesgFY8bPQnm2uPESrpb+l0m/bfYEpmnS/RoBcmePviW5J
AcG7H8BcT0yqe3zAOsMjWTtzZ9OnOtmqTzeetWsa//w4xm3NnZNgDFwouq6Pl7HO/wc/r2X96Q3/
r4fHcmfylDJ0jlFj59x1UMiAd4JKuYN9BXTbGuq3OiZuvZAMkZWSpO0wDmAXwMdzZ84/q+3dWTIp
dXwwuwzpAFbkGq9j4WvxO/jhkJImJMq44ImxUznpmmIC2vC1t6LzKao0uAva389VSFjjmat8NsDu
SLFVAwdVfR23XjDPZnj48jh8DR5fgh1k9U7O8c77dkVN96M9uJ2V4ABA+18E2GilGnxA7mjcRW0i
jdhst45+S5EneDjujP//1B0KBC34AldnsU3jiqud3ZgY2BcWSh7xSfGSXCVu3BB7eSbyrq67bqIg
/fbJtlwt5CdElo5S3NcL6BwIU2HCl/ElNUnUZPPlfHxmhRyYLJWrjP0Fo7GKvFYGin6F73tJmQeW
KE9kUTvvXzkecSfuLGi4+h55CBb6KztEkuzAFG2Hc4A6hkNnx5OSU5TzRDgueSj4r82oi+q+Kv6N
pyBd/IfdLM+4fCPwvVc7M8s8UIia4qNM5wWWf//eJo+a8PJSh3BSfeodsYZ/0HFRl4Fo5OWEmguQ
jBLsm+24Cd0IDDXCsU0gFHrSrpj4CTCGwzuca8B9jfkY3VgBxwORu0fDmkLBDcTPxQSfR12u/2e1
ytlCRJpZzaaOXLRfc3jPlhPj3TMogDaLRn3uqF6bbzxeHh9jWpr8gwYMi3a0WRR3POBKxZ3v4VCR
nEIIGEYTi42q7Za7/0PwcHMXXNNc8YPEGlprkGzSTf48V9sv9Vl8YFoNGbg0/1HjQNnRqoAZ3Bu5
4H5ng8iy5FM/qzYpIZvkgySQncxW8EOLI2gJSu4ZUhuhQNZo9zhzzOVKAcd8DxlCILwCxLkljBbo
YKOhzUHP0rYR0hS1GOMItBDcMk++H+adEXsJFm74E2z0LsMIQCoS5d8+FjnKGN/krWkeYgbzL9QU
r8D661j+eDD4VyBmXKGK9sn63W8SkHA01SV5QgJCuDo8v9Qs1NyxID7ciP26M6uoFq+e8zxcD2RG
HNJmpJ9lqjYVrpQq27oXB1+jcXmZBgWkKxlQW0NbfrAGU6uoX148jwgKmGiU/seJmCg/K1xo4grQ
ItWKqaiK8Fzt/pREPUwBjjMuwJNlj+3UQ0TCQ4ix77TTWTStj0vyRkFJI84ExMdc7geOD9zOYLUF
lHp5gDtvbSTZTZSE8thySRwquwVdejTb3qO2ZLfLe8LwA4sh7MDogxyWvazTXFW5TPTGzovLdCIR
UoIVE0QddegfVUvWYYNoBULcJg2YPct19QsRP8HwIW5SxHowfpxAZpt/dqCxsQ2joz7VupXrw89i
ENQJDiWwl/86kIK6NMhIf4rQEVmydnezrso8DSwambz682esC0djTzsizYFxq3CH7daedXv6LEMd
5gz9DnoKzs3t+3ChkWj35v3DOkRDiK9uoYS589hdj9L+h2bJQR/by0JfTU+0a2TZOX/4bE48Ll8W
epNa7wVBH/YJTWIjJ2py+KRi0yU61MdM9Ic2oZkiCddNhGEz8gxLV2kjDbq98/bwc2CboYegkHNh
u6Rz8jP6eqWHCYPOAyTruO9dgk5EqQldxtzJLZiJpJ5fq6Lgm36O6ZE0qdpaQukq1cu7bIHAlMCq
WRAPVtxit6uWh4/G50gpaQU1za5G4tFiZ86eys7dHeqvX2JtHjRjfv2g91iA9p73AuMrc/NvaPcV
jI2gEhbZLm95WE5AMgnpteErSjq43Rdm6EAqLucoQ9p8kMiUhjUosfajnkSLv7Ym6Q0iC6HgF/74
jDgYMBjZOTwww0glbEu9pjtnItrY+iNIfBeFFCJHv/XyEEeBm0B/CegPgTB1VGhmvT96beRU94xB
5Ox1UVehzMZD8TNQH2CfXBpxN7WR8SpHyI7Wpo1bKWG+mqP/4mwJri/k44s0SAMxH3Uw8cUOI/f2
/Icg5lAMtshTMS20j6mLZDDPWpu0MHRgoBsFNEDWEWY/Z8+7R3nF51eZGYVfjuZpcLSS135f/kjq
X7AG02u9++xXHrlgrcMYA9UPITerePs/7WD5ocC3w3Sezixary47kn6gIxvVbszrRpNpMgj3okcv
ottfpTaSfk+iYMkQAWoYVTaEBQxnf8Zl6w/e1V93lhpmEv9b7dgU/bxahsw1cqMy3DyS4OpC2bbi
2sRuIJNQFvtUqwMrAcMriiXHo3a5LmwO+7Wnlns38V4Iy+8Wq6voabcc7YrJI0alycTFziCRoxkn
/i6WjKQ58VlKPiQwPGnjaZmHdMyY4g7o6ClvRb42XMwwWS9UJBbhZeRYcd0fkXnX4oX6P5BQjXJX
MCpc3DemX4JBSLtRNra9ZGy1yvmWvVKoxH+L2gG89r9GOeu9eF9urqu8j2prdLTCffS5NjT+7Tuv
vaIeJaudV5lrtiY1oYpoLtf2MoSN5Ep/LNvaUgPKmawVNyuKFxWjvcxFufGbnP3vUaIN99j7kKsC
p2PbK/ixcwCaUEuijFT/yfB6/amisTWjOPYEMvlwlhM+98PCM4fNPmIjr9Fai56VgN5kY62V1F2R
8JwlP2xvScRXkkECDdh+BviWXPYCNUqihH/XpaNH3S1LpyLddadvzBflicq3YUJLQckXU64hJ35H
7rCSgauGkQsjbzto3SdUMoHMhx8TM74iplfaV/Rn214dUHbX6726CZcyf8Bzayo6T6IcZ0wHCPJ7
WkMvSxi04jpjNIuygVuMKsXnROiwxbxdxExiw+4JF6IoR0PzAZtuvo4Wc+kPG6Av3Mm17EodAGqG
fNhuVfKq34wJPH3HRbPrL8p7OhWIHdkkFdrJpkgbjkag2JQe/l/QNrw8SXqiKF0kiPZRPnnn/c7v
5wP2xsGivs+StfhVWjzBkkid3ftqtGWaKWQDtrHBiVlCGvpoumSZU+9tRtSSAlXbmgN3EhxTFkBC
10um8zKGB1uB2yjl3GY3BuWp0+RzVaa30kJJVzGiI3K6tPPbNMt+qtdL1yIzdwdcDu21zJK7Yans
/c3pZ6HRrg5llz39asjL5z/C2J25kgYgoj7S8TaAs4CurcoAqZvMgvvFZm8RIFd7FVZhHpIDTw2l
jX0zz68CjRayZfqvB7X0IzxzAJe1I/hWa1dvHuQ9od5jlAfINvJN8hTSmjeMISnRTUa/SjWzTV9S
FB8SKJhnL6Zet2uG0ftj+h/65GUJAio+OeJKS8TMQjFoAa0Oy5Ud+wlFaNngln1nyFwlzxZgrcuv
p2fyfuMeqT4oLOvdWSSZREo/VQuXPdcpWKnhmMssJRhYJVJmTxaoTlbjW4Iohy7YvCQrYSezrhyc
Y6B9RHtAQq+QaVFXkmJD2IpHrOCotCivTYHR5wIX/OPBUClBVYmzvJdq6ne4lj8T5AucMQhNPxbJ
Q/CunaJXAXdnwym2LdjNLOOsVviKskZmkgCkAuLHtQDeKSNewEKziXRIUuO1A7a+KheWFcHlS6ST
Z/yDEsALWnBGSju6gkcmil/Oi+jwE5WsbztFJdzcQ/ClllAV2I1OrwIO0//QHj2bF02FnzA/6LsD
EjEgAG3eTpDTUnkYI4RKFUATQTCSvV2d5O9Et/ZpK7I9RKpHEBwPik4kpmwrQDCHRyDaJSXrD4H/
wElwJ/M1/om19yr/PCzV0cnZRJH7JcAzGH4bPe9+5AR39yWZ66Vsvl7GT4UGpOeqy/aHHndj0QUt
2s4XPVPBsc9GVEO2Z9xLv5WdPasrxUELSro3BqSCE2Nwki8ZpmZ9v5mUbwt5/+PT+o7KptNqUaX7
wyfxxSZbTZ+OYUN0gH/wi/K+nkJlMw26OEPxwjTNCPBssf+m0LkODybzypcA4dqGK94h6JttB4tk
oLsqCbrZen/nd2PXJITAtV+sPEIArAqFnFAK5ArORLBsXY6wHTNghZ3Spdf70nxtens2mSFvZ7sk
bWsSylMkVfLfrM2OHu+rpa+uoOoLOG7fW53FF8opNhTBQpSjOtBzK6ay18DDg1uAbIat8lny+S8H
NXFbRJcKfMZ/59f5bQfRGG+oS5QFhAFX0GBjhC8se+sto3Ln+TvD3G+BSWDg8IUP6su2oPQKb7hN
U9M5AiFPk5zx8e7OBeloQpfxK3HrMDxv8+jSTRYYA/roc+KMm4hra/dzHx4Mn5VDpxWaC4X2+2EO
NgQsKxQYnJzRVihFyEbleBEhqLUG6H/Xa4LfpnZoy6yPRqaOKRSdR3IBsh01/xH5MZMozIBJHM0u
ggjmpTUWtIi2NNQFQv2bwqqs3wc41fzB+6+yW6urqhBhirD9/3FVoqMVdV8KlBrwQulbXOLcXD5x
GEtswb7rEINhp8a15ZocyGWH3awDeYvsFZmxrm3+hWul1kzJ+T/m58Atuk33WjOsR4pKZqA51LYy
HYp3XCRExgG4keYMc86xY7mcBM/1TK9SbxBj+bqUqKuxAlq03tdNtYESbB54pWV/cE7awMLCS0if
WAZvG71qUKm8fr/0wpy9/FbEol2cny/+csWqD+xaO59mfztGt6nXwughF14842iXnvWPT8NZ/6iY
8qu/AFiP0UXdnwHPHSD1m8SYgpww9qUN0WZXnEJ3arySP2WT4n2umNN75XCLIm0M/EKUMOpXQ7fv
Tu630AUubH9g4akdAxICXSuXUu717jTrLoBhPgiduDaCepEfpfcGoUjXv2KS7/x7KAf5HDnqYiXg
EvIzculBKyDBMOFdnbWZv42PIlRAMfax36V5bpo0fnZHeguLDrfRI23HC+GsA5wkLqvSfMtYpUQF
kOVN4fGpA/L/ZlMn+/WfD3GWvVqBYvr6D9vnZAXIdNZBib/iQprzckhyjm1baZnOFCBwPtyqy4MU
fgMGDcEJ5c0YZxBsf0/kHAiIRQ2YC/XdmEXYLgg2IvsUV4ZdkcgJxYxwodB3fpnz85Ey6dcgIfBw
Nab0zmZYkrRAZfLT0GcjNX2JxEhzcIlD94h+bSDIsPNeI7gDonnbiv1HkOswxE5qGKyxt8mGoSEg
5Oa0yX5EsNAo4WZhkq/lVf1waDGSouZF3U3GFDxdjEVwhhTxem74ij9y1Q+kygB6/znTdHrHSRx6
0mvYpYY+SWp2crRgXwFIyWh7RNsVhaByG9/zIguE64JJOewEkwE978aR9bswB+X+uyWzAQPw4A97
P7kKjvqq6rOkYbEyOg3CFPmyqVNvCs93yDO8YdLu7S8H4wXSjv3ATSXeik96ku7f8kTe6PSS4MF0
0asXpkR9hOgZy/JmZH+BSwfXq95s+OoW3+Tvn2IvmMGk51Oda6+iXe12oGiczUWms5ObCD2WjgG2
mN7qGtN8eqIG+AqKg4lch/oTLnZ+47rgBvqCWRJhwXC2w+Ge55OlYhH/44CkGxSFb5iKxz/2EVHw
KyumXWI4SDBOEX7SKiRHrlzCQ5og0xbPa/OeN1BQBYjdpFH3TynkOhU4EJcSSpKu3OIsRCBE5guV
QsySP9TcCJzuTKUXabFvf3M9XoST/3zgpH1VG3QaXDJAGdEyYDn+Qg7ue5ip0G5o5dwel8Iq/H4C
fu7PxSExDzBUT8Y6VOWsbUZbGJ/ErmmsEDYmvPf1jfu4eE8+3EVCWJ9MeM3Nr0xA3qDleRDyVXap
w23nXHoLFpda50QH2Da5nBdYnTuVkIfFxPOVNGz1ZGkTt0+e4XS0oR57C2yZIS5vqw+dpmOY7cxf
dMLUETkfgbhqKJvrFvy1+Dc2RidAi3hEV+k0VgDF+0ywkJcKS0bMxLsvFQ985TZW6y3bLddJgPXg
kO6cfRdXDEr0uTaJGu8TvNo+czLuhSECSqKYXnNmORPZvwROApFMlqaLWU7gPzSFHJBW3OUPauKN
u+Q9i+Z3t0vV7K1LmT2fsUKcO0PdiKIONjqy/r0i9nyXUxje6FBu2vPSoIldn9Clr3vI5ysS1eF5
GS0G9BWkng/gXjp+QRl63yrz9uw+9fxCY86rKvpT8ZwshtiS7bT1irarIihLRSnOXLxvRtSH3H/x
KiZ6ljMjs/w6GYIrF6cwgBDJlxWE/iuMWRrUVZWyvUXqE+fmPzlmLzYuZQslZfvIw2CDgMVaBnWH
ui0ttbO4sfKnFi9QRNws7xOYpmNe75VVDWLpb4URyxuRcjljrR3/VxG8A7dmPJCFRd4Y6eKBbPx3
+w07sNiZ+cbFYNz5TM/Acgd12i2v71s0VZNDZ0kue52H305wWfOtzC6kvAlMJ8AF5GQZC5gosjBx
zhSEI6OmZsIsrazC/PwTtr61Kgarr98ylC4n/EY0PLtR+2yDDYUyL6rnKxZQK7XlpxWNbmdY7tf7
wUSKhFM+8LaFtBxLWQB2/bYnrN6WRnf7qi5fwcaxy2eN9uNx2xg+ekZb0iUcu9M6qFHpKHCbYoAZ
RO1LTO3YM/cEJ91+C0XGbcqy5X+9UQ/o+MSj9cNwKNXPlSPizq4OKhkpTCKZN+TdjSiuysG+wEFq
9YH3m0K6bP9CWFuaBqd4QW/XVrevY9cE+y76HNuWBXLUPKnypiNO8KPVxu5vsbKVbGHRo8zgTcPx
jDKZEQ12Dsum+ddYr78R5xb4FKgrD0giXtLwMipEoeDG9Lm4nr9qQbl4uAlM4n3xLonZvSMlU0Kb
A72T4iiAiTZBSFoym4RSX6zDLlX+fV2mofIBM9S167w0blczeY7MS/z8HfuaWuNVWTcBLFv7GhWo
xs+36UgSuOjGGubylFFIk1giUj3k4OpYmdqZ9n1WwyeZOJMXFX0kcvk/6Y+pk646mO/O79VkDE7D
/buIOpw6nIHTiYawG7FpE+HGN5oWUZJ6SDQoEgn+Epi3icYdu1X93rCWtgADQXsXIBKgGd1Rl3JB
iJ3879vWY51CUuqDYrBFZAD8IBSvtTjTT+m6r6YFVwspcYgLXWAA79WasLjKyDkEt/RnoKFjJHpp
OkykR7+/hruaJfymF0n5ANan4z+MGBL1Xn/U/1rpTlLYnsJ3FheGzzvLXSRBpMDISiBzCi6x2NfE
++Ufs0V6SnRRXpiP3lRNmRWoQ3Pq/TdNK7u8BBLxmkijM7/irJw50xXZn7T2daY2gPz7YSHiVr4k
hP8xUgusYSuBOYzai9Sohte8FfGzif3wyN61vp0RU/6SWwh60WpfxkHNdDJJQW/z7rfOS5poPUZx
DrCC7lOIZ31WeA55O3XblvjPVoe6REFoNNDYqshQTUpn0o22aI2PHFB6tyzWxxgK9kC33i+iznqZ
me0zTSGtvT0DJSA/GveyRIC06dICGfa3HizwO216GvppHWvA/dsJFmDOWcP8cklptU/CgOCqVxXf
oJR2hexPJQvwRRvL7tgcw4jGdIHH6upxnAswdFlJx+kpjh9q3r05akF+bdEQnp+KfY3lGPhllIzK
kzqUtTcdT4DC6MaWS3wHiKDuSUNAw04Ni0MDQ3AhmxntB3+7ku/R/gBZpZOFk79Br6ha9X6ay+3b
+5t6li0Uov0KhBQfvymieSc3o3jWTeOFGB0n3m2Wdbtxp3KCFwuAN2DW+vlXLqKXwTKrhd1fk/uF
3h7LjA5U7nXa4oBtqWrggb3hh28fHazE82LIabVpyE0mBSYAT0TRO6qlj5bLoKnIh8Q0D60pcdaU
BMIBLnYdVCvAwLJktfo33/DpAf2VN9qTXWgYesgarjgLXpJGgyac3JVxagcJofiOJTarV0Ue8kTV
9IaDbMnPdGB4tzevoo7ns+N5Xtkpou25HdwWUZshmuefG+L17UyvNs65ARkQpyH1rNrnMqbNwyP6
M6pcaD4hTczY8LJJ/R9WrA==
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
