// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jul 16 13:59:16 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_axis_capture_control_0_0/design_1_axis_capture_control_0_0_sim_netlist.v
// Design      : design_1_axis_capture_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_capture_control_0_0,axis_capture_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_capture_controller,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_axis_capture_control_0_0
   (aclk,
    aresetn,
    trigger_async,
    capture_done,
    busy,
    capture_enable,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    m_axis_tkeep);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input trigger_async;
  output capture_done;
  output busy;
  output capture_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency data_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chan_out {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan_out} enabled {attribs {resolve_type generated dependency enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chan_out_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_chan_sync {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan_sync} enabled {attribs {resolve_type generated dependency enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chan_sync_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chan_sync_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire capture_done;
  wire capture_enable;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire trigger_async;

  assign busy = capture_enable;
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_axis_capture_control_0_0_axis_capture_controller inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .capture_done(capture_done),
        .capture_enable(capture_enable),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .trigger_async(trigger_async));
endmodule

(* ORIG_REF_NAME = "axis_capture_controller" *) 
module design_1_axis_capture_control_0_0_axis_capture_controller
   (capture_done,
    capture_enable,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tready,
    aclk,
    trigger_async,
    s_axis_tdata,
    aresetn,
    s_axis_tvalid,
    m_axis_tready);
  output capture_done;
  output capture_enable;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  output s_axis_tready;
  input aclk;
  input trigger_async;
  input [31:0]s_axis_tdata;
  input aresetn;
  input s_axis_tvalid;
  input m_axis_tready;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire aclk;
  wire aresetn;
  wire busy_i_1_n_0;
  wire capture_done;
  wire capture_done_i_1_n_0;
  wire capture_done_i_2_n_0;
  wire capture_enable;
  wire [31:1]data0;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]m_data_reg;
  wire m_last_reg;
  wire m_last_reg_i_1_n_0;
  wire m_last_reg_i_2_n_0;
  wire m_valid_reg;
  wire m_valid_reg_i_1_n_0;
  wire m_valid_reg_reg_n_0;
  wire [18:0]remaining;
  wire remaining0_carry__0_i_1_n_0;
  wire remaining0_carry__0_i_2_n_0;
  wire remaining0_carry__0_i_3_n_0;
  wire remaining0_carry__0_i_4_n_0;
  wire remaining0_carry__0_n_0;
  wire remaining0_carry__0_n_1;
  wire remaining0_carry__0_n_2;
  wire remaining0_carry__0_n_3;
  wire remaining0_carry__1_i_1_n_0;
  wire remaining0_carry__1_i_2_n_0;
  wire remaining0_carry__1_i_3_n_0;
  wire remaining0_carry__1_i_4_n_0;
  wire remaining0_carry__1_n_0;
  wire remaining0_carry__1_n_1;
  wire remaining0_carry__1_n_2;
  wire remaining0_carry__1_n_3;
  wire remaining0_carry__2_i_1_n_0;
  wire remaining0_carry__2_i_2_n_0;
  wire remaining0_carry__2_i_3_n_0;
  wire remaining0_carry__2_i_4_n_0;
  wire remaining0_carry__2_n_0;
  wire remaining0_carry__2_n_1;
  wire remaining0_carry__2_n_2;
  wire remaining0_carry__2_n_3;
  wire remaining0_carry__3_i_1_n_0;
  wire remaining0_carry__3_i_2_n_0;
  wire remaining0_carry__3_i_3_n_0;
  wire remaining0_carry__3_i_4_n_0;
  wire remaining0_carry__3_n_0;
  wire remaining0_carry__3_n_1;
  wire remaining0_carry__3_n_2;
  wire remaining0_carry__3_n_3;
  wire remaining0_carry__4_i_1_n_0;
  wire remaining0_carry__4_i_2_n_0;
  wire remaining0_carry__4_i_3_n_0;
  wire remaining0_carry__4_i_4_n_0;
  wire remaining0_carry__4_n_0;
  wire remaining0_carry__4_n_1;
  wire remaining0_carry__4_n_2;
  wire remaining0_carry__4_n_3;
  wire remaining0_carry__5_i_1_n_0;
  wire remaining0_carry__5_i_2_n_0;
  wire remaining0_carry__5_i_3_n_0;
  wire remaining0_carry__5_i_4_n_0;
  wire remaining0_carry__5_n_0;
  wire remaining0_carry__5_n_1;
  wire remaining0_carry__5_n_2;
  wire remaining0_carry__5_n_3;
  wire remaining0_carry__6_i_1_n_0;
  wire remaining0_carry__6_i_2_n_0;
  wire remaining0_carry__6_i_3_n_0;
  wire remaining0_carry__6_n_2;
  wire remaining0_carry__6_n_3;
  wire remaining0_carry_i_1_n_0;
  wire remaining0_carry_i_2_n_0;
  wire remaining0_carry_i_3_n_0;
  wire remaining0_carry_i_4_n_0;
  wire remaining0_carry_n_0;
  wire remaining0_carry_n_1;
  wire remaining0_carry_n_2;
  wire remaining0_carry_n_3;
  wire \remaining[10]_i_1_n_0 ;
  wire \remaining[11]_i_1_n_0 ;
  wire \remaining[12]_i_1_n_0 ;
  wire \remaining[14]_i_1_n_0 ;
  wire \remaining[19]_i_1_n_0 ;
  wire \remaining[20]_i_1_n_0 ;
  wire \remaining[21]_i_1_n_0 ;
  wire \remaining[22]_i_1_n_0 ;
  wire \remaining[23]_i_1_n_0 ;
  wire \remaining[24]_i_1_n_0 ;
  wire \remaining[25]_i_1_n_0 ;
  wire \remaining[26]_i_1_n_0 ;
  wire \remaining[27]_i_1_n_0 ;
  wire \remaining[28]_i_1_n_0 ;
  wire \remaining[29]_i_1_n_0 ;
  wire \remaining[30]_i_1_n_0 ;
  wire \remaining[31]_i_10_n_0 ;
  wire \remaining[31]_i_2_n_0 ;
  wire \remaining[31]_i_3_n_0 ;
  wire \remaining[31]_i_4_n_0 ;
  wire \remaining[31]_i_5_n_0 ;
  wire \remaining[31]_i_6_n_0 ;
  wire \remaining[31]_i_7_n_0 ;
  wire \remaining[31]_i_8_n_0 ;
  wire \remaining[31]_i_9_n_0 ;
  wire \remaining[5]_i_1_n_0 ;
  wire \remaining[6]_i_1_n_0 ;
  wire \remaining[7]_i_1_n_0 ;
  wire \remaining[9]_i_1_n_0 ;
  wire \remaining_reg_n_0_[0] ;
  wire \remaining_reg_n_0_[10] ;
  wire \remaining_reg_n_0_[11] ;
  wire \remaining_reg_n_0_[12] ;
  wire \remaining_reg_n_0_[13] ;
  wire \remaining_reg_n_0_[14] ;
  wire \remaining_reg_n_0_[15] ;
  wire \remaining_reg_n_0_[16] ;
  wire \remaining_reg_n_0_[17] ;
  wire \remaining_reg_n_0_[18] ;
  wire \remaining_reg_n_0_[19] ;
  wire \remaining_reg_n_0_[1] ;
  wire \remaining_reg_n_0_[20] ;
  wire \remaining_reg_n_0_[21] ;
  wire \remaining_reg_n_0_[22] ;
  wire \remaining_reg_n_0_[23] ;
  wire \remaining_reg_n_0_[24] ;
  wire \remaining_reg_n_0_[25] ;
  wire \remaining_reg_n_0_[26] ;
  wire \remaining_reg_n_0_[27] ;
  wire \remaining_reg_n_0_[28] ;
  wire \remaining_reg_n_0_[29] ;
  wire \remaining_reg_n_0_[2] ;
  wire \remaining_reg_n_0_[30] ;
  wire \remaining_reg_n_0_[31] ;
  wire \remaining_reg_n_0_[3] ;
  wire \remaining_reg_n_0_[4] ;
  wire \remaining_reg_n_0_[5] ;
  wire \remaining_reg_n_0_[6] ;
  wire \remaining_reg_n_0_[7] ;
  wire \remaining_reg_n_0_[8] ;
  wire \remaining_reg_n_0_[9] ;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:0]state;
  wire state1__0;
  wire trig_sync0;
  wire trig_sync1;
  wire trigger_async;
  wire [3:2]NLW_remaining0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_remaining0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000055FFFF0030)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state1__0),
        .I1(trig_sync1),
        .I2(trig_sync0),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3C2C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state1__0),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(state1__0),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(s_axis_tvalid),
        .I1(m_valid_reg_reg_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .O(state1__0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\remaining_reg_n_0_[29] ),
        .I1(\remaining_reg_n_0_[28] ),
        .I2(\remaining_reg_n_0_[30] ),
        .I3(\remaining_reg_n_0_[31] ),
        .I4(\remaining[31]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\remaining[31]_i_9_n_0 ),
        .I1(\remaining_reg_n_0_[1] ),
        .I2(\remaining_reg_n_0_[0] ),
        .I3(\remaining_reg_n_0_[3] ),
        .I4(\remaining_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:00,ST_ARMED:01,ST_CAPTURE:10,ST_DONE:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(capture_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "ST_IDLE:00,ST_ARMED:01,ST_CAPTURE:10,ST_DONE:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(capture_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    busy_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(busy_i_1_n_0));
  FDRE busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(capture_enable),
        .R(capture_done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    capture_done_i_1
       (.I0(aresetn),
        .O(capture_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    capture_done_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .O(capture_done_i_2_n_0));
  FDRE capture_done_reg
       (.C(aclk),
        .CE(1'b1),
        .D(capture_done_i_2_n_0),
        .Q(capture_done),
        .R(capture_done_i_1_n_0));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(m_data_reg[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_last_reg),
        .Q(m_axis_tlast),
        .R(capture_done_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_reg_reg_n_0),
        .Q(m_axis_tvalid),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[0] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[0]),
        .Q(m_data_reg[0]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[10] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[10]),
        .Q(m_data_reg[10]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[11] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[11]),
        .Q(m_data_reg[11]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[12] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[12]),
        .Q(m_data_reg[12]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[13] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[13]),
        .Q(m_data_reg[13]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[14] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[14]),
        .Q(m_data_reg[14]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[15] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[15]),
        .Q(m_data_reg[15]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[16] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[16]),
        .Q(m_data_reg[16]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[17] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[17]),
        .Q(m_data_reg[17]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[18] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[18]),
        .Q(m_data_reg[18]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[19] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[19]),
        .Q(m_data_reg[19]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[1] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[1]),
        .Q(m_data_reg[1]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[20] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[20]),
        .Q(m_data_reg[20]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[21] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[21]),
        .Q(m_data_reg[21]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[22] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[22]),
        .Q(m_data_reg[22]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[23] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[23]),
        .Q(m_data_reg[23]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[24] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[24]),
        .Q(m_data_reg[24]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[25] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[25]),
        .Q(m_data_reg[25]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[26] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[26]),
        .Q(m_data_reg[26]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[27] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[27]),
        .Q(m_data_reg[27]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[28] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[28]),
        .Q(m_data_reg[28]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[29] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[29]),
        .Q(m_data_reg[29]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[2] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[2]),
        .Q(m_data_reg[2]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[30] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[30]),
        .Q(m_data_reg[30]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[31] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[31]),
        .Q(m_data_reg[31]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[3] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[3]),
        .Q(m_data_reg[3]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[4] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[4]),
        .Q(m_data_reg[4]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[5] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[5]),
        .Q(m_data_reg[5]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[6] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[6]),
        .Q(m_data_reg[6]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[7] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[7]),
        .Q(m_data_reg[7]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[8] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[8]),
        .Q(m_data_reg[8]),
        .R(capture_done_i_1_n_0));
  FDRE \m_data_reg_reg[9] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(s_axis_tdata[9]),
        .Q(m_data_reg[9]),
        .R(capture_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    m_last_reg_i_1
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[0]),
        .I2(m_last_reg_i_2_n_0),
        .I3(m_last_reg),
        .O(m_last_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8BB88888)) 
    m_last_reg_i_2
       (.I0(m_axis_tready),
        .I1(m_valid_reg_reg_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axis_tvalid),
        .O(m_last_reg_i_2_n_0));
  FDRE m_last_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_last_reg_i_1_n_0),
        .Q(m_last_reg),
        .R(capture_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h47744444)) 
    m_valid_reg_i_1
       (.I0(m_axis_tready),
        .I1(m_valid_reg_reg_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axis_tvalid),
        .O(m_valid_reg_i_1_n_0));
  FDRE m_valid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_reg_i_1_n_0),
        .Q(m_valid_reg_reg_n_0),
        .R(capture_done_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry
       (.CI(1'b0),
        .CO({remaining0_carry_n_0,remaining0_carry_n_1,remaining0_carry_n_2,remaining0_carry_n_3}),
        .CYINIT(\remaining_reg_n_0_[0] ),
        .DI({\remaining_reg_n_0_[4] ,\remaining_reg_n_0_[3] ,\remaining_reg_n_0_[2] ,\remaining_reg_n_0_[1] }),
        .O(data0[4:1]),
        .S({remaining0_carry_i_1_n_0,remaining0_carry_i_2_n_0,remaining0_carry_i_3_n_0,remaining0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__0
       (.CI(remaining0_carry_n_0),
        .CO({remaining0_carry__0_n_0,remaining0_carry__0_n_1,remaining0_carry__0_n_2,remaining0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\remaining_reg_n_0_[8] ,\remaining_reg_n_0_[7] ,\remaining_reg_n_0_[6] ,\remaining_reg_n_0_[5] }),
        .O(data0[8:5]),
        .S({remaining0_carry__0_i_1_n_0,remaining0_carry__0_i_2_n_0,remaining0_carry__0_i_3_n_0,remaining0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__0_i_1
       (.I0(\remaining_reg_n_0_[8] ),
        .O(remaining0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__0_i_2
       (.I0(\remaining_reg_n_0_[7] ),
        .O(remaining0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__0_i_3
       (.I0(\remaining_reg_n_0_[6] ),
        .O(remaining0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__0_i_4
       (.I0(\remaining_reg_n_0_[5] ),
        .O(remaining0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__1
       (.CI(remaining0_carry__0_n_0),
        .CO({remaining0_carry__1_n_0,remaining0_carry__1_n_1,remaining0_carry__1_n_2,remaining0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\remaining_reg_n_0_[12] ,\remaining_reg_n_0_[11] ,\remaining_reg_n_0_[10] ,\remaining_reg_n_0_[9] }),
        .O(data0[12:9]),
        .S({remaining0_carry__1_i_1_n_0,remaining0_carry__1_i_2_n_0,remaining0_carry__1_i_3_n_0,remaining0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__1_i_1
       (.I0(\remaining_reg_n_0_[12] ),
        .O(remaining0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__1_i_2
       (.I0(\remaining_reg_n_0_[11] ),
        .O(remaining0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__1_i_3
       (.I0(\remaining_reg_n_0_[10] ),
        .O(remaining0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__1_i_4
       (.I0(\remaining_reg_n_0_[9] ),
        .O(remaining0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__2
       (.CI(remaining0_carry__1_n_0),
        .CO({remaining0_carry__2_n_0,remaining0_carry__2_n_1,remaining0_carry__2_n_2,remaining0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\remaining_reg_n_0_[16] ,\remaining_reg_n_0_[15] ,\remaining_reg_n_0_[14] ,\remaining_reg_n_0_[13] }),
        .O(data0[16:13]),
        .S({remaining0_carry__2_i_1_n_0,remaining0_carry__2_i_2_n_0,remaining0_carry__2_i_3_n_0,remaining0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__2_i_1
       (.I0(\remaining_reg_n_0_[16] ),
        .O(remaining0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__2_i_2
       (.I0(\remaining_reg_n_0_[15] ),
        .O(remaining0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__2_i_3
       (.I0(\remaining_reg_n_0_[14] ),
        .O(remaining0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__2_i_4
       (.I0(\remaining_reg_n_0_[13] ),
        .O(remaining0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__3
       (.CI(remaining0_carry__2_n_0),
        .CO({remaining0_carry__3_n_0,remaining0_carry__3_n_1,remaining0_carry__3_n_2,remaining0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\remaining_reg_n_0_[20] ,\remaining_reg_n_0_[19] ,\remaining_reg_n_0_[18] ,\remaining_reg_n_0_[17] }),
        .O(data0[20:17]),
        .S({remaining0_carry__3_i_1_n_0,remaining0_carry__3_i_2_n_0,remaining0_carry__3_i_3_n_0,remaining0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__3_i_1
       (.I0(\remaining_reg_n_0_[20] ),
        .O(remaining0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__3_i_2
       (.I0(\remaining_reg_n_0_[19] ),
        .O(remaining0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__3_i_3
       (.I0(\remaining_reg_n_0_[18] ),
        .O(remaining0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__3_i_4
       (.I0(\remaining_reg_n_0_[17] ),
        .O(remaining0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__4
       (.CI(remaining0_carry__3_n_0),
        .CO({remaining0_carry__4_n_0,remaining0_carry__4_n_1,remaining0_carry__4_n_2,remaining0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\remaining_reg_n_0_[24] ,\remaining_reg_n_0_[23] ,\remaining_reg_n_0_[22] ,\remaining_reg_n_0_[21] }),
        .O(data0[24:21]),
        .S({remaining0_carry__4_i_1_n_0,remaining0_carry__4_i_2_n_0,remaining0_carry__4_i_3_n_0,remaining0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__4_i_1
       (.I0(\remaining_reg_n_0_[24] ),
        .O(remaining0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__4_i_2
       (.I0(\remaining_reg_n_0_[23] ),
        .O(remaining0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__4_i_3
       (.I0(\remaining_reg_n_0_[22] ),
        .O(remaining0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__4_i_4
       (.I0(\remaining_reg_n_0_[21] ),
        .O(remaining0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__5
       (.CI(remaining0_carry__4_n_0),
        .CO({remaining0_carry__5_n_0,remaining0_carry__5_n_1,remaining0_carry__5_n_2,remaining0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\remaining_reg_n_0_[28] ,\remaining_reg_n_0_[27] ,\remaining_reg_n_0_[26] ,\remaining_reg_n_0_[25] }),
        .O(data0[28:25]),
        .S({remaining0_carry__5_i_1_n_0,remaining0_carry__5_i_2_n_0,remaining0_carry__5_i_3_n_0,remaining0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__5_i_1
       (.I0(\remaining_reg_n_0_[28] ),
        .O(remaining0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__5_i_2
       (.I0(\remaining_reg_n_0_[27] ),
        .O(remaining0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__5_i_3
       (.I0(\remaining_reg_n_0_[26] ),
        .O(remaining0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__5_i_4
       (.I0(\remaining_reg_n_0_[25] ),
        .O(remaining0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 remaining0_carry__6
       (.CI(remaining0_carry__5_n_0),
        .CO({NLW_remaining0_carry__6_CO_UNCONNECTED[3:2],remaining0_carry__6_n_2,remaining0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\remaining_reg_n_0_[30] ,\remaining_reg_n_0_[29] }),
        .O({NLW_remaining0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,remaining0_carry__6_i_1_n_0,remaining0_carry__6_i_2_n_0,remaining0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__6_i_1
       (.I0(\remaining_reg_n_0_[31] ),
        .O(remaining0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__6_i_2
       (.I0(\remaining_reg_n_0_[30] ),
        .O(remaining0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry__6_i_3
       (.I0(\remaining_reg_n_0_[29] ),
        .O(remaining0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry_i_1
       (.I0(\remaining_reg_n_0_[4] ),
        .O(remaining0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry_i_2
       (.I0(\remaining_reg_n_0_[3] ),
        .O(remaining0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry_i_3
       (.I0(\remaining_reg_n_0_[2] ),
        .O(remaining0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    remaining0_carry_i_4
       (.I0(\remaining_reg_n_0_[1] ),
        .O(remaining0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h55555554FFFFFFFF)) 
    \remaining[0]_i_1 
       (.I0(\remaining_reg_n_0_[0] ),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(state[1]),
        .O(remaining[0]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[10]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[10]),
        .O(\remaining[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[11]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[11]),
        .O(\remaining[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[12]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[12]),
        .O(\remaining[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[13]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[13]),
        .I5(state[1]),
        .O(remaining[13]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[14]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[14]),
        .O(\remaining[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[15]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[15]),
        .I5(state[1]),
        .O(remaining[15]));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[16]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[16]),
        .I5(state[1]),
        .O(remaining[16]));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[17]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[17]),
        .I5(state[1]),
        .O(remaining[17]));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[18]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[18]),
        .I5(state[1]),
        .O(remaining[18]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[19]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[19]),
        .O(\remaining[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[1]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[1]),
        .I5(state[1]),
        .O(remaining[1]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[20]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[20]),
        .O(\remaining[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[21]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[21]),
        .O(\remaining[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[22]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[22]),
        .O(\remaining[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[23]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[23]),
        .O(\remaining[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[24]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[24]),
        .O(\remaining[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[25]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[25]),
        .O(\remaining[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[26]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[26]),
        .O(\remaining[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[27]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[27]),
        .O(\remaining[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[28]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[28]),
        .O(\remaining[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[29]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[29]),
        .O(\remaining[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[2]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[2]),
        .I5(state[1]),
        .O(remaining[2]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[30]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[30]),
        .O(\remaining[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \remaining[31]_i_1 
       (.I0(m_valid_reg_reg_n_0),
        .I1(s_axis_tvalid),
        .I2(state[1]),
        .I3(state[0]),
        .O(m_valid_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \remaining[31]_i_10 
       (.I0(\remaining_reg_n_0_[10] ),
        .I1(\remaining_reg_n_0_[11] ),
        .I2(\remaining_reg_n_0_[8] ),
        .I3(\remaining_reg_n_0_[9] ),
        .O(\remaining[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[31]_i_2 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[31]),
        .O(\remaining[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \remaining[31]_i_3 
       (.I0(\remaining_reg_n_0_[21] ),
        .I1(\remaining_reg_n_0_[20] ),
        .I2(\remaining_reg_n_0_[23] ),
        .I3(\remaining_reg_n_0_[22] ),
        .I4(\remaining[31]_i_7_n_0 ),
        .O(\remaining[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \remaining[31]_i_4 
       (.I0(\remaining_reg_n_0_[29] ),
        .I1(\remaining_reg_n_0_[28] ),
        .I2(\remaining_reg_n_0_[30] ),
        .I3(\remaining_reg_n_0_[0] ),
        .I4(\remaining[31]_i_8_n_0 ),
        .O(\remaining[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \remaining[31]_i_5 
       (.I0(\remaining[31]_i_9_n_0 ),
        .I1(\remaining_reg_n_0_[1] ),
        .I2(\remaining_reg_n_0_[31] ),
        .I3(\remaining_reg_n_0_[3] ),
        .I4(\remaining_reg_n_0_[2] ),
        .O(\remaining[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \remaining[31]_i_6 
       (.I0(\remaining_reg_n_0_[13] ),
        .I1(\remaining_reg_n_0_[12] ),
        .I2(\remaining_reg_n_0_[15] ),
        .I3(\remaining_reg_n_0_[14] ),
        .I4(\remaining[31]_i_10_n_0 ),
        .O(\remaining[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \remaining[31]_i_7 
       (.I0(\remaining_reg_n_0_[18] ),
        .I1(\remaining_reg_n_0_[19] ),
        .I2(\remaining_reg_n_0_[16] ),
        .I3(\remaining_reg_n_0_[17] ),
        .O(\remaining[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \remaining[31]_i_8 
       (.I0(\remaining_reg_n_0_[26] ),
        .I1(\remaining_reg_n_0_[27] ),
        .I2(\remaining_reg_n_0_[24] ),
        .I3(\remaining_reg_n_0_[25] ),
        .O(\remaining[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \remaining[31]_i_9 
       (.I0(\remaining_reg_n_0_[6] ),
        .I1(\remaining_reg_n_0_[7] ),
        .I2(\remaining_reg_n_0_[4] ),
        .I3(\remaining_reg_n_0_[5] ),
        .O(\remaining[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[3]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[3]),
        .I5(state[1]),
        .O(remaining[3]));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[4]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[4]),
        .I5(state[1]),
        .O(remaining[4]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[5]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[5]),
        .O(\remaining[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[6]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[6]),
        .O(\remaining[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[7]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[7]),
        .O(\remaining[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \remaining[8]_i_1 
       (.I0(\remaining[31]_i_3_n_0 ),
        .I1(\remaining[31]_i_4_n_0 ),
        .I2(\remaining[31]_i_5_n_0 ),
        .I3(\remaining[31]_i_6_n_0 ),
        .I4(data0[8]),
        .I5(state[1]),
        .O(remaining[8]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \remaining[9]_i_1 
       (.I0(state[1]),
        .I1(\remaining[31]_i_3_n_0 ),
        .I2(\remaining[31]_i_4_n_0 ),
        .I3(\remaining[31]_i_5_n_0 ),
        .I4(\remaining[31]_i_6_n_0 ),
        .I5(data0[9]),
        .O(\remaining[9]_i_1_n_0 ));
  FDRE \remaining_reg[0] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[0]),
        .Q(\remaining_reg_n_0_[0] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[10] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[10]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[10] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[11] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[11]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[11] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[12] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[12]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[12] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[13] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[13]),
        .Q(\remaining_reg_n_0_[13] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[14] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[14]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[14] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[15] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[15]),
        .Q(\remaining_reg_n_0_[15] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[16] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[16]),
        .Q(\remaining_reg_n_0_[16] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[17] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[17]),
        .Q(\remaining_reg_n_0_[17] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[18] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[18]),
        .Q(\remaining_reg_n_0_[18] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[19] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[19]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[19] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[1] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[1]),
        .Q(\remaining_reg_n_0_[1] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[20] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[20]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[20] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[21] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[21]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[21] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[22] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[22]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[22] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[23] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[23]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[23] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[24] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[24]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[24] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[25] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[25]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[25] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[26] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[26]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[26] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[27] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[27]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[27] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[28] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[28]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[28] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[29] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[29]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[29] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[2] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[2]),
        .Q(\remaining_reg_n_0_[2] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[30] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[30]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[30] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[31] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[31]_i_2_n_0 ),
        .Q(\remaining_reg_n_0_[31] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[3] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[3]),
        .Q(\remaining_reg_n_0_[3] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[4] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[4]),
        .Q(\remaining_reg_n_0_[4] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[5] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[5]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[5] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[6] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[6]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[6] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[7] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[7]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[7] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[8] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(remaining[8]),
        .Q(\remaining_reg_n_0_[8] ),
        .R(capture_done_i_1_n_0));
  FDRE \remaining_reg[9] 
       (.C(aclk),
        .CE(m_valid_reg),
        .D(\remaining[9]_i_1_n_0 ),
        .Q(\remaining_reg_n_0_[9] ),
        .R(capture_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    s_axis_tready_INST_0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(m_valid_reg_reg_n_0),
        .O(s_axis_tready));
  FDRE trig_sync0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(trigger_async),
        .Q(trig_sync0),
        .R(capture_done_i_1_n_0));
  FDRE trig_sync1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(trig_sync0),
        .Q(trig_sync1),
        .R(capture_done_i_1_n_0));
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
