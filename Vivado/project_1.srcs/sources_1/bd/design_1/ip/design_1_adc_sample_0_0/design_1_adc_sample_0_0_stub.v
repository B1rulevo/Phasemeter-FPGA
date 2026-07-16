// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jul 16 13:59:15 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_adc_sample_0_0/design_1_adc_sample_0_0_stub.v
// Design      : design_1_adc_sample_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_adc_sample_0_0,adc_sample,{}" *) (* CORE_GENERATION_INFO = "design_1_adc_sample_0_0,adc_sample,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=adc_sample,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "adc_sample,Vivado 2024.2" *) 
module design_1_adc_sample_0_0(adc_clk_i, adc_data_i, adc_data_o, 
  sample_count_o)
/* synthesis syn_black_box black_box_pad_pin="adc_data_i[11:0],adc_data_o[11:0],sample_count_o[31:0]" */
/* synthesis syn_force_seq_prim="adc_clk_i" */;
  input adc_clk_i /* synthesis syn_isclock = 1 */;
  input [11:0]adc_data_i;
  output [11:0]adc_data_o;
  output [31:0]sample_count_o;
endmodule
