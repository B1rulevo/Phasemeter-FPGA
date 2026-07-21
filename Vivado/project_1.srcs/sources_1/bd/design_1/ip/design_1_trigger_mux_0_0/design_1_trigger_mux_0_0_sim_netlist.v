// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jul 21 12:10:03 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_trigger_mux_0_0/design_1_trigger_mux_0_0_sim_netlist.v
// Design      : design_1_trigger_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_trigger_mux_0_0,trigger_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "trigger_mux,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_trigger_mux_0_0
   (clk,
    rst,
    gate,
    trigger_select,
    ext_trigger,
    sw_trigger,
    trigger_pulse);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input gate;
  input trigger_select;
  input ext_trigger;
  input sw_trigger;
  output trigger_pulse;

  wire clk;
  wire ext_trigger;
  wire gate;
  wire rst;
  wire sw_trigger;
  wire trigger_pulse;
  wire trigger_select;

  design_1_trigger_mux_0_0_trigger_mux inst
       (.clk(clk),
        .ext_trigger(ext_trigger),
        .gate(gate),
        .rst(rst),
        .sw_trigger(sw_trigger),
        .trigger_pulse(trigger_pulse),
        .trigger_select(trigger_select));
endmodule

(* ORIG_REF_NAME = "trigger_mux" *) 
module design_1_trigger_mux_0_0_trigger_mux
   (trigger_pulse,
    gate,
    clk,
    rst,
    ext_trigger,
    sw_trigger,
    trigger_select);
  output trigger_pulse;
  input gate;
  input clk;
  input rst;
  input ext_trigger;
  input sw_trigger;
  input trigger_select;

  wire clk;
  wire ext_ff1;
  wire ext_ff2;
  wire ext_trigger;
  wire gate;
  wire gate_ff1;
  wire gate_ff2;
  wire rst;
  wire sw_ff1;
  wire sw_ff2;
  wire sw_trigger;
  wire trigger_pulse;
  wire trigger_select;

  FDRE ext_ff1_reg
       (.C(clk),
        .CE(1'b1),
        .D(ext_trigger),
        .Q(ext_ff1),
        .R(rst));
  FDRE ext_ff2_reg
       (.C(clk),
        .CE(1'b1),
        .D(ext_ff1),
        .Q(ext_ff2),
        .R(rst));
  FDRE gate_ff1_reg
       (.C(clk),
        .CE(1'b1),
        .D(gate),
        .Q(gate_ff1),
        .R(1'b0));
  FDRE gate_ff2_reg
       (.C(clk),
        .CE(1'b1),
        .D(gate_ff1),
        .Q(gate_ff2),
        .R(1'b0));
  FDRE sw_ff1_reg
       (.C(clk),
        .CE(1'b1),
        .D(sw_trigger),
        .Q(sw_ff1),
        .R(rst));
  FDRE sw_ff2_reg
       (.C(clk),
        .CE(1'b1),
        .D(sw_ff1),
        .Q(sw_ff2),
        .R(rst));
  LUT6 #(
    .INIT(64'h04F4040400000000)) 
    trigger_pulse_INST_0
       (.I0(ext_ff2),
        .I1(ext_ff1),
        .I2(trigger_select),
        .I3(sw_ff2),
        .I4(sw_ff1),
        .I5(gate_ff2),
        .O(trigger_pulse));
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
