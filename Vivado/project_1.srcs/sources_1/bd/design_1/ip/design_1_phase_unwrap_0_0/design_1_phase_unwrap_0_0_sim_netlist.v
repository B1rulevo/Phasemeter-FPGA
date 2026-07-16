// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jul 16 13:59:16 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_phase_unwrap_0_0/design_1_phase_unwrap_0_0_sim_netlist.v
// Design      : design_1_phase_unwrap_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_phase_unwrap_0_0,phase_unwrap,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "phase_unwrap,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_phase_unwrap_0_0
   (clk,
    rst,
    s_valid,
    s_phase,
    m_valid,
    m_phase);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input s_valid;
  input [23:0]s_phase;
  output m_valid;
  output [31:0]m_phase;

  wire clk;
  wire [31:0]m_phase;
  wire m_valid;
  wire rst;
  wire [23:0]s_phase;
  wire s_valid;

  design_1_phase_unwrap_0_0_phase_unwrap inst
       (.clk(clk),
        .m_phase(m_phase),
        .m_valid(m_valid),
        .rst(rst),
        .s_phase(s_phase),
        .s_valid(s_valid));
endmodule

(* ORIG_REF_NAME = "phase_unwrap" *) 
module design_1_phase_unwrap_0_0_phase_unwrap
   (m_phase,
    m_valid,
    s_phase,
    rst,
    s_valid,
    clk);
  output [31:0]m_phase;
  output m_valid;
  input [23:0]s_phase;
  input rst;
  input s_valid;
  input clk;

  wire clk;
  wire [24:0]dphi;
  wire dphi_carry__0_i_1_n_0;
  wire dphi_carry__0_i_2_n_0;
  wire dphi_carry__0_i_3_n_0;
  wire dphi_carry__0_i_4_n_0;
  wire dphi_carry__0_n_0;
  wire dphi_carry__0_n_1;
  wire dphi_carry__0_n_2;
  wire dphi_carry__0_n_3;
  wire dphi_carry__1_i_1_n_0;
  wire dphi_carry__1_i_2_n_0;
  wire dphi_carry__1_i_3_n_0;
  wire dphi_carry__1_i_4_n_0;
  wire dphi_carry__1_n_0;
  wire dphi_carry__1_n_1;
  wire dphi_carry__1_n_2;
  wire dphi_carry__1_n_3;
  wire dphi_carry__2_i_1_n_0;
  wire dphi_carry__2_i_2_n_0;
  wire dphi_carry__2_i_3_n_0;
  wire dphi_carry__2_i_4_n_0;
  wire dphi_carry__2_n_0;
  wire dphi_carry__2_n_1;
  wire dphi_carry__2_n_2;
  wire dphi_carry__2_n_3;
  wire dphi_carry__3_i_1_n_0;
  wire dphi_carry__3_i_2_n_0;
  wire dphi_carry__3_i_3_n_0;
  wire dphi_carry__3_i_4_n_0;
  wire dphi_carry__3_n_0;
  wire dphi_carry__3_n_1;
  wire dphi_carry__3_n_2;
  wire dphi_carry__3_n_3;
  wire dphi_carry__4_i_1_n_0;
  wire dphi_carry__4_i_2_n_0;
  wire dphi_carry__4_i_3_n_0;
  wire dphi_carry__4_i_4_n_0;
  wire dphi_carry__4_n_0;
  wire dphi_carry__4_n_1;
  wire dphi_carry__4_n_2;
  wire dphi_carry__4_n_3;
  wire dphi_carry_i_1_n_0;
  wire dphi_carry_i_2_n_0;
  wire dphi_carry_i_3_n_0;
  wire dphi_carry_i_4_n_0;
  wire dphi_carry_n_0;
  wire dphi_carry_n_1;
  wire dphi_carry_n_2;
  wire dphi_carry_n_3;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__2_i_1_n_3;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire [31:0]m_phase;
  wire m_phase0_carry__0_i_1_n_0;
  wire m_phase0_carry__0_i_2_n_0;
  wire m_phase0_carry__0_i_3_n_0;
  wire m_phase0_carry__0_i_4_n_0;
  wire m_phase0_carry__0_n_1;
  wire m_phase0_carry__0_n_2;
  wire m_phase0_carry__0_n_3;
  wire m_phase0_carry__0_n_4;
  wire m_phase0_carry__0_n_5;
  wire m_phase0_carry__0_n_6;
  wire m_phase0_carry__0_n_7;
  wire m_phase0_carry_i_1_n_0;
  wire m_phase0_carry_i_2_n_0;
  wire m_phase0_carry_i_3_n_0;
  wire m_phase0_carry_i_4_n_0;
  wire m_phase0_carry_i_5_n_0;
  wire m_phase0_carry_i_6_n_0;
  wire m_phase0_carry_i_7_n_0;
  wire m_phase0_carry_i_8_n_0;
  wire m_phase0_carry_n_0;
  wire m_phase0_carry_n_1;
  wire m_phase0_carry_n_2;
  wire m_phase0_carry_n_3;
  wire m_phase0_carry_n_4;
  wire m_phase0_carry_n_5;
  wire m_phase0_carry_n_6;
  wire m_phase0_carry_n_7;
  wire m_valid;
  wire m_valid_i_1_n_0;
  wire \offset[24]_i_2_n_0 ;
  wire \offset[24]_i_3_n_0 ;
  wire \offset[24]_i_4_n_0 ;
  wire \offset[27]_i_2_n_0 ;
  wire \offset[27]_i_3_n_0 ;
  wire \offset[27]_i_4_n_0 ;
  wire \offset[27]_i_5_n_0 ;
  wire \offset[31]_i_2_n_0 ;
  wire offset_next1;
  wire offset_next1_carry__0_i_1_n_0;
  wire offset_next1_carry__0_i_2_n_0;
  wire offset_next1_carry__0_i_3_n_0;
  wire offset_next1_carry__0_i_4_n_0;
  wire offset_next1_carry__0_i_5_n_0;
  wire offset_next1_carry__0_i_6_n_0;
  wire offset_next1_carry__0_i_7_n_0;
  wire offset_next1_carry__0_n_0;
  wire offset_next1_carry__0_n_1;
  wire offset_next1_carry__0_n_2;
  wire offset_next1_carry__0_n_3;
  wire offset_next1_carry__1_i_1_n_0;
  wire offset_next1_carry__1_i_2_n_0;
  wire offset_next1_carry__1_i_3_n_0;
  wire offset_next1_carry__1_i_4_n_0;
  wire offset_next1_carry__1_i_5_n_0;
  wire offset_next1_carry__1_i_6_n_0;
  wire offset_next1_carry__1_i_7_n_0;
  wire offset_next1_carry__1_i_8_n_0;
  wire offset_next1_carry__1_n_0;
  wire offset_next1_carry__1_n_1;
  wire offset_next1_carry__1_n_2;
  wire offset_next1_carry__1_n_3;
  wire offset_next1_carry__2_n_3;
  wire offset_next1_carry_i_1_n_0;
  wire offset_next1_carry_i_2_n_0;
  wire offset_next1_carry_i_3_n_0;
  wire offset_next1_carry_i_4_n_0;
  wire offset_next1_carry_i_5_n_0;
  wire offset_next1_carry_i_6_n_0;
  wire offset_next1_carry_n_0;
  wire offset_next1_carry_n_1;
  wire offset_next1_carry_n_2;
  wire offset_next1_carry_n_3;
  wire \offset_next1_inferred__0/i__carry__0_n_0 ;
  wire \offset_next1_inferred__0/i__carry__0_n_1 ;
  wire \offset_next1_inferred__0/i__carry__0_n_2 ;
  wire \offset_next1_inferred__0/i__carry__0_n_3 ;
  wire \offset_next1_inferred__0/i__carry__1_n_0 ;
  wire \offset_next1_inferred__0/i__carry__1_n_1 ;
  wire \offset_next1_inferred__0/i__carry__1_n_2 ;
  wire \offset_next1_inferred__0/i__carry__1_n_3 ;
  wire \offset_next1_inferred__0/i__carry_n_0 ;
  wire \offset_next1_inferred__0/i__carry_n_1 ;
  wire \offset_next1_inferred__0/i__carry_n_2 ;
  wire \offset_next1_inferred__0/i__carry_n_3 ;
  wire [31:24]offset_reg;
  wire \offset_reg[24]_i_1_n_0 ;
  wire \offset_reg[24]_i_1_n_1 ;
  wire \offset_reg[24]_i_1_n_2 ;
  wire \offset_reg[24]_i_1_n_3 ;
  wire \offset_reg[24]_i_1_n_4 ;
  wire \offset_reg[24]_i_1_n_5 ;
  wire \offset_reg[24]_i_1_n_6 ;
  wire \offset_reg[27]_i_1_n_0 ;
  wire \offset_reg[27]_i_1_n_1 ;
  wire \offset_reg[27]_i_1_n_2 ;
  wire \offset_reg[27]_i_1_n_3 ;
  wire \offset_reg[27]_i_1_n_4 ;
  wire \offset_reg[27]_i_1_n_5 ;
  wire \offset_reg[27]_i_1_n_6 ;
  wire \offset_reg[27]_i_1_n_7 ;
  wire \offset_reg[31]_i_1_n_7 ;
  wire rst;
  wire [23:0]s_phase;
  wire s_valid;
  wire [3:1]NLW_i__carry__2_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_i__carry__2_i_1_O_UNCONNECTED;
  wire [3:3]NLW_m_phase0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_offset_next1_carry_O_UNCONNECTED;
  wire [3:0]NLW_offset_next1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_offset_next1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_offset_next1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_offset_next1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_offset_next1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_offset_next1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_offset_next1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_offset_next1_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_offset_next1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [0:0]\NLW_offset_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_offset_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_offset_reg[31]_i_1_O_UNCONNECTED ;

  CARRY4 dphi_carry
       (.CI(1'b0),
        .CO({dphi_carry_n_0,dphi_carry_n_1,dphi_carry_n_2,dphi_carry_n_3}),
        .CYINIT(1'b1),
        .DI(s_phase[3:0]),
        .O(dphi[3:0]),
        .S({dphi_carry_i_1_n_0,dphi_carry_i_2_n_0,dphi_carry_i_3_n_0,dphi_carry_i_4_n_0}));
  CARRY4 dphi_carry__0
       (.CI(dphi_carry_n_0),
        .CO({dphi_carry__0_n_0,dphi_carry__0_n_1,dphi_carry__0_n_2,dphi_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_phase[7:4]),
        .O(dphi[7:4]),
        .S({dphi_carry__0_i_1_n_0,dphi_carry__0_i_2_n_0,dphi_carry__0_i_3_n_0,dphi_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__0_i_1
       (.I0(s_phase[7]),
        .I1(m_phase[7]),
        .O(dphi_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__0_i_2
       (.I0(s_phase[6]),
        .I1(m_phase[6]),
        .O(dphi_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__0_i_3
       (.I0(s_phase[5]),
        .I1(m_phase[5]),
        .O(dphi_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__0_i_4
       (.I0(s_phase[4]),
        .I1(m_phase[4]),
        .O(dphi_carry__0_i_4_n_0));
  CARRY4 dphi_carry__1
       (.CI(dphi_carry__0_n_0),
        .CO({dphi_carry__1_n_0,dphi_carry__1_n_1,dphi_carry__1_n_2,dphi_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s_phase[11:8]),
        .O(dphi[11:8]),
        .S({dphi_carry__1_i_1_n_0,dphi_carry__1_i_2_n_0,dphi_carry__1_i_3_n_0,dphi_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__1_i_1
       (.I0(s_phase[11]),
        .I1(m_phase[11]),
        .O(dphi_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__1_i_2
       (.I0(s_phase[10]),
        .I1(m_phase[10]),
        .O(dphi_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__1_i_3
       (.I0(s_phase[9]),
        .I1(m_phase[9]),
        .O(dphi_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__1_i_4
       (.I0(s_phase[8]),
        .I1(m_phase[8]),
        .O(dphi_carry__1_i_4_n_0));
  CARRY4 dphi_carry__2
       (.CI(dphi_carry__1_n_0),
        .CO({dphi_carry__2_n_0,dphi_carry__2_n_1,dphi_carry__2_n_2,dphi_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(s_phase[15:12]),
        .O(dphi[15:12]),
        .S({dphi_carry__2_i_1_n_0,dphi_carry__2_i_2_n_0,dphi_carry__2_i_3_n_0,dphi_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__2_i_1
       (.I0(s_phase[15]),
        .I1(m_phase[15]),
        .O(dphi_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__2_i_2
       (.I0(s_phase[14]),
        .I1(m_phase[14]),
        .O(dphi_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__2_i_3
       (.I0(s_phase[13]),
        .I1(m_phase[13]),
        .O(dphi_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__2_i_4
       (.I0(s_phase[12]),
        .I1(m_phase[12]),
        .O(dphi_carry__2_i_4_n_0));
  CARRY4 dphi_carry__3
       (.CI(dphi_carry__2_n_0),
        .CO({dphi_carry__3_n_0,dphi_carry__3_n_1,dphi_carry__3_n_2,dphi_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(s_phase[19:16]),
        .O(dphi[19:16]),
        .S({dphi_carry__3_i_1_n_0,dphi_carry__3_i_2_n_0,dphi_carry__3_i_3_n_0,dphi_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__3_i_1
       (.I0(s_phase[19]),
        .I1(m_phase[19]),
        .O(dphi_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__3_i_2
       (.I0(s_phase[18]),
        .I1(m_phase[18]),
        .O(dphi_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__3_i_3
       (.I0(s_phase[17]),
        .I1(m_phase[17]),
        .O(dphi_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__3_i_4
       (.I0(s_phase[16]),
        .I1(m_phase[16]),
        .O(dphi_carry__3_i_4_n_0));
  CARRY4 dphi_carry__4
       (.CI(dphi_carry__3_n_0),
        .CO({dphi_carry__4_n_0,dphi_carry__4_n_1,dphi_carry__4_n_2,dphi_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({m_phase[23],s_phase[22:20]}),
        .O(dphi[23:20]),
        .S({dphi_carry__4_i_1_n_0,dphi_carry__4_i_2_n_0,dphi_carry__4_i_3_n_0,dphi_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__4_i_1
       (.I0(s_phase[23]),
        .I1(m_phase[23]),
        .O(dphi_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__4_i_2
       (.I0(s_phase[22]),
        .I1(m_phase[22]),
        .O(dphi_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__4_i_3
       (.I0(s_phase[21]),
        .I1(m_phase[21]),
        .O(dphi_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry__4_i_4
       (.I0(s_phase[20]),
        .I1(m_phase[20]),
        .O(dphi_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry_i_1
       (.I0(s_phase[3]),
        .I1(m_phase[3]),
        .O(dphi_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry_i_2
       (.I0(s_phase[2]),
        .I1(m_phase[2]),
        .O(dphi_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry_i_3
       (.I0(s_phase[1]),
        .I1(m_phase[1]),
        .O(dphi_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dphi_carry_i_4
       (.I0(s_phase[0]),
        .I1(m_phase[0]),
        .O(dphi_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_1
       (.I0(dphi[14]),
        .I1(dphi[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(dphi[12]),
        .I1(dphi[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(dphi[15]),
        .I1(dphi[14]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(dphi[12]),
        .I1(dphi[13]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_5
       (.I0(dphi[10]),
        .I1(dphi[11]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6
       (.I0(dphi[8]),
        .I1(dphi[9]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_1
       (.I0(dphi[20]),
        .I1(dphi[21]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(dphi[16]),
        .I1(dphi[17]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3
       (.I0(dphi[22]),
        .I1(dphi[23]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_4
       (.I0(dphi[21]),
        .I1(dphi[20]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_5
       (.I0(dphi[18]),
        .I1(dphi[19]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(dphi[16]),
        .I1(dphi[17]),
        .O(i__carry__1_i_6_n_0));
  CARRY4 i__carry__2_i_1
       (.CI(dphi_carry__4_n_0),
        .CO({NLW_i__carry__2_i_1_CO_UNCONNECTED[3:1],i__carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i__carry__2_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(dphi[4]),
        .I1(dphi[5]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(dphi[6]),
        .I1(dphi[7]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_3
       (.I0(dphi[5]),
        .I1(dphi[4]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(dphi[2]),
        .I1(dphi[3]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(dphi[0]),
        .I1(dphi[1]),
        .O(i__carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_phase0_carry
       (.CI(1'b0),
        .CO({m_phase0_carry_n_0,m_phase0_carry_n_1,m_phase0_carry_n_2,m_phase0_carry_n_3}),
        .CYINIT(m_phase0_carry_i_1_n_0),
        .DI({offset_reg[26],m_phase0_carry_i_2_n_0,m_phase0_carry_i_3_n_0,m_phase0_carry_i_4_n_0}),
        .O({m_phase0_carry_n_4,m_phase0_carry_n_5,m_phase0_carry_n_6,m_phase0_carry_n_7}),
        .S({m_phase0_carry_i_5_n_0,m_phase0_carry_i_6_n_0,m_phase0_carry_i_7_n_0,m_phase0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_phase0_carry__0
       (.CI(m_phase0_carry_n_0),
        .CO({NLW_m_phase0_carry__0_CO_UNCONNECTED[3],m_phase0_carry__0_n_1,m_phase0_carry__0_n_2,m_phase0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,offset_reg[29:27]}),
        .O({m_phase0_carry__0_n_4,m_phase0_carry__0_n_5,m_phase0_carry__0_n_6,m_phase0_carry__0_n_7}),
        .S({m_phase0_carry__0_i_1_n_0,m_phase0_carry__0_i_2_n_0,m_phase0_carry__0_i_3_n_0,m_phase0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    m_phase0_carry__0_i_1
       (.I0(offset_reg[30]),
        .I1(offset_reg[31]),
        .O(m_phase0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_phase0_carry__0_i_2
       (.I0(offset_reg[29]),
        .I1(offset_reg[30]),
        .O(m_phase0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_phase0_carry__0_i_3
       (.I0(offset_reg[28]),
        .I1(offset_reg[29]),
        .O(m_phase0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_phase0_carry__0_i_4
       (.I0(offset_reg[27]),
        .I1(offset_reg[28]),
        .O(m_phase0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_phase0_carry_i_1
       (.I0(s_phase[23]),
        .O(m_phase0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    m_phase0_carry_i_2
       (.I0(offset_reg[25]),
        .I1(offset_next1),
        .O(m_phase0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    m_phase0_carry_i_3
       (.I0(offset_reg[24]),
        .I1(offset_next1),
        .I2(offset_next1_carry__2_n_3),
        .O(m_phase0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    m_phase0_carry_i_4
       (.I0(offset_reg[24]),
        .I1(offset_next1),
        .I2(offset_next1_carry__2_n_3),
        .O(m_phase0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_phase0_carry_i_5
       (.I0(offset_reg[26]),
        .I1(offset_reg[27]),
        .O(m_phase0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    m_phase0_carry_i_6
       (.I0(offset_next1),
        .I1(offset_reg[25]),
        .I2(offset_reg[26]),
        .O(m_phase0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0EF1)) 
    m_phase0_carry_i_7
       (.I0(offset_next1_carry__2_n_3),
        .I1(offset_reg[24]),
        .I2(offset_next1),
        .I3(offset_reg[25]),
        .O(m_phase0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    m_phase0_carry_i_8
       (.I0(offset_reg[24]),
        .I1(offset_next1),
        .I2(offset_next1_carry__2_n_3),
        .O(m_phase0_carry_i_8_n_0));
  FDRE \m_phase_reg[0] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[0]),
        .Q(m_phase[0]),
        .R(rst));
  FDRE \m_phase_reg[10] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[10]),
        .Q(m_phase[10]),
        .R(rst));
  FDRE \m_phase_reg[11] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[11]),
        .Q(m_phase[11]),
        .R(rst));
  FDRE \m_phase_reg[12] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[12]),
        .Q(m_phase[12]),
        .R(rst));
  FDRE \m_phase_reg[13] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[13]),
        .Q(m_phase[13]),
        .R(rst));
  FDRE \m_phase_reg[14] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[14]),
        .Q(m_phase[14]),
        .R(rst));
  FDRE \m_phase_reg[15] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[15]),
        .Q(m_phase[15]),
        .R(rst));
  FDRE \m_phase_reg[16] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[16]),
        .Q(m_phase[16]),
        .R(rst));
  FDRE \m_phase_reg[17] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[17]),
        .Q(m_phase[17]),
        .R(rst));
  FDRE \m_phase_reg[18] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[18]),
        .Q(m_phase[18]),
        .R(rst));
  FDRE \m_phase_reg[19] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[19]),
        .Q(m_phase[19]),
        .R(rst));
  FDRE \m_phase_reg[1] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[1]),
        .Q(m_phase[1]),
        .R(rst));
  FDRE \m_phase_reg[20] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[20]),
        .Q(m_phase[20]),
        .R(rst));
  FDRE \m_phase_reg[21] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[21]),
        .Q(m_phase[21]),
        .R(rst));
  FDRE \m_phase_reg[22] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[22]),
        .Q(m_phase[22]),
        .R(rst));
  FDRE \m_phase_reg[23] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[23]),
        .Q(m_phase[23]),
        .R(rst));
  FDRE \m_phase_reg[24] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry_n_7),
        .Q(m_phase[24]),
        .R(rst));
  FDRE \m_phase_reg[25] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry_n_6),
        .Q(m_phase[25]),
        .R(rst));
  FDRE \m_phase_reg[26] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry_n_5),
        .Q(m_phase[26]),
        .R(rst));
  FDRE \m_phase_reg[27] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry_n_4),
        .Q(m_phase[27]),
        .R(rst));
  FDRE \m_phase_reg[28] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry__0_n_7),
        .Q(m_phase[28]),
        .R(rst));
  FDRE \m_phase_reg[29] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry__0_n_6),
        .Q(m_phase[29]),
        .R(rst));
  FDRE \m_phase_reg[2] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[2]),
        .Q(m_phase[2]),
        .R(rst));
  FDRE \m_phase_reg[30] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry__0_n_5),
        .Q(m_phase[30]),
        .R(rst));
  FDRE \m_phase_reg[31] 
       (.C(clk),
        .CE(s_valid),
        .D(m_phase0_carry__0_n_4),
        .Q(m_phase[31]),
        .R(rst));
  FDRE \m_phase_reg[3] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[3]),
        .Q(m_phase[3]),
        .R(rst));
  FDRE \m_phase_reg[4] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[4]),
        .Q(m_phase[4]),
        .R(rst));
  FDRE \m_phase_reg[5] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[5]),
        .Q(m_phase[5]),
        .R(rst));
  FDRE \m_phase_reg[6] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[6]),
        .Q(m_phase[6]),
        .R(rst));
  FDRE \m_phase_reg[7] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[7]),
        .Q(m_phase[7]),
        .R(rst));
  FDRE \m_phase_reg[8] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[8]),
        .Q(m_phase[8]),
        .R(rst));
  FDRE \m_phase_reg[9] 
       (.C(clk),
        .CE(s_valid),
        .D(s_phase[9]),
        .Q(m_phase[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    m_valid_i_1
       (.I0(s_valid),
        .I1(rst),
        .O(m_valid_i_1_n_0));
  FDRE m_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_valid_i_1_n_0),
        .Q(m_valid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[24]_i_2 
       (.I0(offset_next1),
        .I1(offset_reg[26]),
        .O(\offset[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[24]_i_3 
       (.I0(offset_next1),
        .I1(offset_reg[25]),
        .O(\offset[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \offset[24]_i_4 
       (.I0(offset_next1_carry__2_n_3),
        .I1(offset_next1),
        .I2(offset_reg[24]),
        .O(\offset[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[27]_i_2 
       (.I0(offset_next1),
        .I1(offset_reg[30]),
        .O(\offset[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[27]_i_3 
       (.I0(offset_next1),
        .I1(offset_reg[29]),
        .O(\offset[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[27]_i_4 
       (.I0(offset_next1),
        .I1(offset_reg[28]),
        .O(\offset[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[27]_i_5 
       (.I0(offset_next1),
        .I1(offset_reg[27]),
        .O(\offset[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[31]_i_2 
       (.I0(offset_next1),
        .I1(offset_reg[31]),
        .O(\offset[31]_i_2_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 offset_next1_carry
       (.CI(1'b0),
        .CO({offset_next1_carry_n_0,offset_next1_carry_n_1,offset_next1_carry_n_2,offset_next1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,offset_next1_carry_i_1_n_0,1'b0,offset_next1_carry_i_2_n_0}),
        .O(NLW_offset_next1_carry_O_UNCONNECTED[3:0]),
        .S({offset_next1_carry_i_3_n_0,offset_next1_carry_i_4_n_0,offset_next1_carry_i_5_n_0,offset_next1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 offset_next1_carry__0
       (.CI(offset_next1_carry_n_0),
        .CO({offset_next1_carry__0_n_0,offset_next1_carry__0_n_1,offset_next1_carry__0_n_2,offset_next1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({offset_next1_carry__0_i_1_n_0,offset_next1_carry__0_i_2_n_0,offset_next1_carry__0_i_3_n_0,1'b0}),
        .O(NLW_offset_next1_carry__0_O_UNCONNECTED[3:0]),
        .S({offset_next1_carry__0_i_4_n_0,offset_next1_carry__0_i_5_n_0,offset_next1_carry__0_i_6_n_0,offset_next1_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    offset_next1_carry__0_i_1
       (.I0(dphi[14]),
        .I1(dphi[15]),
        .O(offset_next1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    offset_next1_carry__0_i_2
       (.I0(dphi[12]),
        .I1(dphi[13]),
        .O(offset_next1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    offset_next1_carry__0_i_3
       (.I0(dphi[11]),
        .O(offset_next1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    offset_next1_carry__0_i_4
       (.I0(dphi[14]),
        .I1(dphi[15]),
        .O(offset_next1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    offset_next1_carry__0_i_5
       (.I0(dphi[12]),
        .I1(dphi[13]),
        .O(offset_next1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    offset_next1_carry__0_i_6
       (.I0(dphi[11]),
        .I1(dphi[10]),
        .O(offset_next1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    offset_next1_carry__0_i_7
       (.I0(dphi[8]),
        .I1(dphi[9]),
        .O(offset_next1_carry__0_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 offset_next1_carry__1
       (.CI(offset_next1_carry__0_n_0),
        .CO({offset_next1_carry__1_n_0,offset_next1_carry__1_n_1,offset_next1_carry__1_n_2,offset_next1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({offset_next1_carry__1_i_1_n_0,offset_next1_carry__1_i_2_n_0,offset_next1_carry__1_i_3_n_0,offset_next1_carry__1_i_4_n_0}),
        .O(NLW_offset_next1_carry__1_O_UNCONNECTED[3:0]),
        .S({offset_next1_carry__1_i_5_n_0,offset_next1_carry__1_i_6_n_0,offset_next1_carry__1_i_7_n_0,offset_next1_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    offset_next1_carry__1_i_1
       (.I0(dphi[23]),
        .O(offset_next1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    offset_next1_carry__1_i_2
       (.I0(dphi[20]),
        .I1(dphi[21]),
        .O(offset_next1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    offset_next1_carry__1_i_3
       (.I0(dphi[19]),
        .O(offset_next1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    offset_next1_carry__1_i_4
       (.I0(dphi[16]),
        .I1(dphi[17]),
        .O(offset_next1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    offset_next1_carry__1_i_5
       (.I0(dphi[23]),
        .I1(dphi[22]),
        .O(offset_next1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    offset_next1_carry__1_i_6
       (.I0(dphi[20]),
        .I1(dphi[21]),
        .O(offset_next1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    offset_next1_carry__1_i_7
       (.I0(dphi[19]),
        .I1(dphi[18]),
        .O(offset_next1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    offset_next1_carry__1_i_8
       (.I0(dphi[16]),
        .I1(dphi[17]),
        .O(offset_next1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 offset_next1_carry__2
       (.CI(offset_next1_carry__1_n_0),
        .CO({NLW_offset_next1_carry__2_CO_UNCONNECTED[3:1],offset_next1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_offset_next1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,dphi[24]}));
  LUT1 #(
    .INIT(2'h1)) 
    offset_next1_carry__2_i_1
       (.I0(i__carry__2_i_1_n_3),
        .O(dphi[24]));
  LUT2 #(
    .INIT(4'h1)) 
    offset_next1_carry_i_1
       (.I0(dphi[4]),
        .I1(dphi[5]),
        .O(offset_next1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    offset_next1_carry_i_2
       (.I0(dphi[0]),
        .I1(dphi[1]),
        .O(offset_next1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    offset_next1_carry_i_3
       (.I0(dphi[6]),
        .I1(dphi[7]),
        .O(offset_next1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    offset_next1_carry_i_4
       (.I0(dphi[4]),
        .I1(dphi[5]),
        .O(offset_next1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    offset_next1_carry_i_5
       (.I0(dphi[2]),
        .I1(dphi[3]),
        .O(offset_next1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    offset_next1_carry_i_6
       (.I0(dphi[0]),
        .I1(dphi[1]),
        .O(offset_next1_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \offset_next1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\offset_next1_inferred__0/i__carry_n_0 ,\offset_next1_inferred__0/i__carry_n_1 ,\offset_next1_inferred__0/i__carry_n_2 ,\offset_next1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,1'b0,dphi[1]}),
        .O(\NLW_offset_next1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \offset_next1_inferred__0/i__carry__0 
       (.CI(\offset_next1_inferred__0/i__carry_n_0 ),
        .CO({\offset_next1_inferred__0/i__carry__0_n_0 ,\offset_next1_inferred__0/i__carry__0_n_1 ,\offset_next1_inferred__0/i__carry__0_n_2 ,\offset_next1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,dphi[11],1'b0}),
        .O(\NLW_offset_next1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \offset_next1_inferred__0/i__carry__1 
       (.CI(\offset_next1_inferred__0/i__carry__0_n_0 ),
        .CO({\offset_next1_inferred__0/i__carry__1_n_0 ,\offset_next1_inferred__0/i__carry__1_n_1 ,\offset_next1_inferred__0/i__carry__1_n_2 ,\offset_next1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({dphi[23],i__carry__1_i_1_n_0,dphi[19],i__carry__1_i_2_n_0}),
        .O(\NLW_offset_next1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \offset_next1_inferred__0/i__carry__2 
       (.CI(\offset_next1_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_offset_next1_inferred__0/i__carry__2_CO_UNCONNECTED [3:1],offset_next1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_offset_next1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__2_i_1_n_3}));
  FDRE \offset_reg[24] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[24]_i_1_n_6 ),
        .Q(offset_reg[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \offset_reg[24]_i_1 
       (.CI(1'b0),
        .CO({\offset_reg[24]_i_1_n_0 ,\offset_reg[24]_i_1_n_1 ,\offset_reg[24]_i_1_n_2 ,\offset_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({offset_next1,offset_next1,offset_reg[24],1'b0}),
        .O({\offset_reg[24]_i_1_n_4 ,\offset_reg[24]_i_1_n_5 ,\offset_reg[24]_i_1_n_6 ,\NLW_offset_reg[24]_i_1_O_UNCONNECTED [0]}),
        .S({\offset[24]_i_2_n_0 ,\offset[24]_i_3_n_0 ,\offset[24]_i_4_n_0 ,1'b0}));
  FDRE \offset_reg[25] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[24]_i_1_n_5 ),
        .Q(offset_reg[25]),
        .R(rst));
  FDRE \offset_reg[26] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[24]_i_1_n_4 ),
        .Q(offset_reg[26]),
        .R(rst));
  FDRE \offset_reg[27] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[27]_i_1_n_7 ),
        .Q(offset_reg[27]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \offset_reg[27]_i_1 
       (.CI(\offset_reg[24]_i_1_n_0 ),
        .CO({\offset_reg[27]_i_1_n_0 ,\offset_reg[27]_i_1_n_1 ,\offset_reg[27]_i_1_n_2 ,\offset_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({offset_next1,offset_next1,offset_next1,offset_next1}),
        .O({\offset_reg[27]_i_1_n_4 ,\offset_reg[27]_i_1_n_5 ,\offset_reg[27]_i_1_n_6 ,\offset_reg[27]_i_1_n_7 }),
        .S({\offset[27]_i_2_n_0 ,\offset[27]_i_3_n_0 ,\offset[27]_i_4_n_0 ,\offset[27]_i_5_n_0 }));
  FDRE \offset_reg[28] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[27]_i_1_n_6 ),
        .Q(offset_reg[28]),
        .R(rst));
  FDRE \offset_reg[29] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[27]_i_1_n_5 ),
        .Q(offset_reg[29]),
        .R(rst));
  FDRE \offset_reg[30] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[27]_i_1_n_4 ),
        .Q(offset_reg[30]),
        .R(rst));
  FDRE \offset_reg[31] 
       (.C(clk),
        .CE(s_valid),
        .D(\offset_reg[31]_i_1_n_7 ),
        .Q(offset_reg[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \offset_reg[31]_i_1 
       (.CI(\offset_reg[27]_i_1_n_0 ),
        .CO(\NLW_offset_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_offset_reg[31]_i_1_O_UNCONNECTED [3:1],\offset_reg[31]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\offset[31]_i_2_n_0 }));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
