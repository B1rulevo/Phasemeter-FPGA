// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jul 16 13:59:15 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_adc_sample_0_0/design_1_adc_sample_0_0_sim_netlist.v
// Design      : design_1_adc_sample_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adc_sample_0_0,adc_sample,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_sample,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_adc_sample_0_0
   (adc_clk_i,
    adc_data_i,
    adc_data_o,
    sample_count_o);
  input adc_clk_i;
  input [11:0]adc_data_i;
  output [11:0]adc_data_o;
  output [31:0]sample_count_o;

  wire adc_clk_i;
  wire [11:0]adc_data_i;
  wire [11:0]adc_data_o;
  wire [31:0]sample_count_o;

  design_1_adc_sample_0_0_adc_sample inst
       (.adc_clk_i(adc_clk_i),
        .adc_data_i(adc_data_i),
        .adc_data_o(adc_data_o),
        .sample_count_o(sample_count_o));
endmodule

(* ORIG_REF_NAME = "adc_sample" *) 
module design_1_adc_sample_0_0_adc_sample
   (adc_data_o,
    sample_count_o,
    adc_data_i,
    adc_clk_i);
  output [11:0]adc_data_o;
  output [31:0]sample_count_o;
  input [11:0]adc_data_i;
  input adc_clk_i;

  wire adc_clk_i;
  wire [11:0]adc_data_i;
  wire [11:0]adc_data_o;
  wire [31:0]sample_count_o;
  wire \sample_count_o[3]_i_2_n_0 ;
  wire \sample_count_o_reg[11]_i_1_n_0 ;
  wire \sample_count_o_reg[11]_i_1_n_1 ;
  wire \sample_count_o_reg[11]_i_1_n_2 ;
  wire \sample_count_o_reg[11]_i_1_n_3 ;
  wire \sample_count_o_reg[11]_i_1_n_4 ;
  wire \sample_count_o_reg[11]_i_1_n_5 ;
  wire \sample_count_o_reg[11]_i_1_n_6 ;
  wire \sample_count_o_reg[11]_i_1_n_7 ;
  wire \sample_count_o_reg[15]_i_1_n_0 ;
  wire \sample_count_o_reg[15]_i_1_n_1 ;
  wire \sample_count_o_reg[15]_i_1_n_2 ;
  wire \sample_count_o_reg[15]_i_1_n_3 ;
  wire \sample_count_o_reg[15]_i_1_n_4 ;
  wire \sample_count_o_reg[15]_i_1_n_5 ;
  wire \sample_count_o_reg[15]_i_1_n_6 ;
  wire \sample_count_o_reg[15]_i_1_n_7 ;
  wire \sample_count_o_reg[19]_i_1_n_0 ;
  wire \sample_count_o_reg[19]_i_1_n_1 ;
  wire \sample_count_o_reg[19]_i_1_n_2 ;
  wire \sample_count_o_reg[19]_i_1_n_3 ;
  wire \sample_count_o_reg[19]_i_1_n_4 ;
  wire \sample_count_o_reg[19]_i_1_n_5 ;
  wire \sample_count_o_reg[19]_i_1_n_6 ;
  wire \sample_count_o_reg[19]_i_1_n_7 ;
  wire \sample_count_o_reg[23]_i_1_n_0 ;
  wire \sample_count_o_reg[23]_i_1_n_1 ;
  wire \sample_count_o_reg[23]_i_1_n_2 ;
  wire \sample_count_o_reg[23]_i_1_n_3 ;
  wire \sample_count_o_reg[23]_i_1_n_4 ;
  wire \sample_count_o_reg[23]_i_1_n_5 ;
  wire \sample_count_o_reg[23]_i_1_n_6 ;
  wire \sample_count_o_reg[23]_i_1_n_7 ;
  wire \sample_count_o_reg[27]_i_1_n_0 ;
  wire \sample_count_o_reg[27]_i_1_n_1 ;
  wire \sample_count_o_reg[27]_i_1_n_2 ;
  wire \sample_count_o_reg[27]_i_1_n_3 ;
  wire \sample_count_o_reg[27]_i_1_n_4 ;
  wire \sample_count_o_reg[27]_i_1_n_5 ;
  wire \sample_count_o_reg[27]_i_1_n_6 ;
  wire \sample_count_o_reg[27]_i_1_n_7 ;
  wire \sample_count_o_reg[31]_i_1_n_1 ;
  wire \sample_count_o_reg[31]_i_1_n_2 ;
  wire \sample_count_o_reg[31]_i_1_n_3 ;
  wire \sample_count_o_reg[31]_i_1_n_4 ;
  wire \sample_count_o_reg[31]_i_1_n_5 ;
  wire \sample_count_o_reg[31]_i_1_n_6 ;
  wire \sample_count_o_reg[31]_i_1_n_7 ;
  wire \sample_count_o_reg[3]_i_1_n_0 ;
  wire \sample_count_o_reg[3]_i_1_n_1 ;
  wire \sample_count_o_reg[3]_i_1_n_2 ;
  wire \sample_count_o_reg[3]_i_1_n_3 ;
  wire \sample_count_o_reg[3]_i_1_n_4 ;
  wire \sample_count_o_reg[3]_i_1_n_5 ;
  wire \sample_count_o_reg[3]_i_1_n_6 ;
  wire \sample_count_o_reg[3]_i_1_n_7 ;
  wire \sample_count_o_reg[7]_i_1_n_0 ;
  wire \sample_count_o_reg[7]_i_1_n_1 ;
  wire \sample_count_o_reg[7]_i_1_n_2 ;
  wire \sample_count_o_reg[7]_i_1_n_3 ;
  wire \sample_count_o_reg[7]_i_1_n_4 ;
  wire \sample_count_o_reg[7]_i_1_n_5 ;
  wire \sample_count_o_reg[7]_i_1_n_6 ;
  wire \sample_count_o_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_sample_count_o_reg[31]_i_1_CO_UNCONNECTED ;

  FDRE \adc_data_o_reg[0] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[0]),
        .Q(adc_data_o[0]),
        .R(1'b0));
  FDRE \adc_data_o_reg[10] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[10]),
        .Q(adc_data_o[10]),
        .R(1'b0));
  FDRE \adc_data_o_reg[11] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[11]),
        .Q(adc_data_o[11]),
        .R(1'b0));
  FDRE \adc_data_o_reg[1] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[1]),
        .Q(adc_data_o[1]),
        .R(1'b0));
  FDRE \adc_data_o_reg[2] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[2]),
        .Q(adc_data_o[2]),
        .R(1'b0));
  FDRE \adc_data_o_reg[3] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[3]),
        .Q(adc_data_o[3]),
        .R(1'b0));
  FDRE \adc_data_o_reg[4] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[4]),
        .Q(adc_data_o[4]),
        .R(1'b0));
  FDRE \adc_data_o_reg[5] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[5]),
        .Q(adc_data_o[5]),
        .R(1'b0));
  FDRE \adc_data_o_reg[6] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[6]),
        .Q(adc_data_o[6]),
        .R(1'b0));
  FDRE \adc_data_o_reg[7] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[7]),
        .Q(adc_data_o[7]),
        .R(1'b0));
  FDRE \adc_data_o_reg[8] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[8]),
        .Q(adc_data_o[8]),
        .R(1'b0));
  FDRE \adc_data_o_reg[9] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_data_i[9]),
        .Q(adc_data_o[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_count_o[3]_i_2 
       (.I0(sample_count_o[0]),
        .O(\sample_count_o[3]_i_2_n_0 ));
  FDRE \sample_count_o_reg[0] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[3]_i_1_n_7 ),
        .Q(sample_count_o[0]),
        .R(1'b0));
  FDRE \sample_count_o_reg[10] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[11]_i_1_n_5 ),
        .Q(sample_count_o[10]),
        .R(1'b0));
  FDRE \sample_count_o_reg[11] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[11]_i_1_n_4 ),
        .Q(sample_count_o[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[11]_i_1 
       (.CI(\sample_count_o_reg[7]_i_1_n_0 ),
        .CO({\sample_count_o_reg[11]_i_1_n_0 ,\sample_count_o_reg[11]_i_1_n_1 ,\sample_count_o_reg[11]_i_1_n_2 ,\sample_count_o_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[11]_i_1_n_4 ,\sample_count_o_reg[11]_i_1_n_5 ,\sample_count_o_reg[11]_i_1_n_6 ,\sample_count_o_reg[11]_i_1_n_7 }),
        .S(sample_count_o[11:8]));
  FDRE \sample_count_o_reg[12] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[15]_i_1_n_7 ),
        .Q(sample_count_o[12]),
        .R(1'b0));
  FDRE \sample_count_o_reg[13] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[15]_i_1_n_6 ),
        .Q(sample_count_o[13]),
        .R(1'b0));
  FDRE \sample_count_o_reg[14] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[15]_i_1_n_5 ),
        .Q(sample_count_o[14]),
        .R(1'b0));
  FDRE \sample_count_o_reg[15] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[15]_i_1_n_4 ),
        .Q(sample_count_o[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[15]_i_1 
       (.CI(\sample_count_o_reg[11]_i_1_n_0 ),
        .CO({\sample_count_o_reg[15]_i_1_n_0 ,\sample_count_o_reg[15]_i_1_n_1 ,\sample_count_o_reg[15]_i_1_n_2 ,\sample_count_o_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[15]_i_1_n_4 ,\sample_count_o_reg[15]_i_1_n_5 ,\sample_count_o_reg[15]_i_1_n_6 ,\sample_count_o_reg[15]_i_1_n_7 }),
        .S(sample_count_o[15:12]));
  FDRE \sample_count_o_reg[16] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[19]_i_1_n_7 ),
        .Q(sample_count_o[16]),
        .R(1'b0));
  FDRE \sample_count_o_reg[17] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[19]_i_1_n_6 ),
        .Q(sample_count_o[17]),
        .R(1'b0));
  FDRE \sample_count_o_reg[18] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[19]_i_1_n_5 ),
        .Q(sample_count_o[18]),
        .R(1'b0));
  FDRE \sample_count_o_reg[19] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[19]_i_1_n_4 ),
        .Q(sample_count_o[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[19]_i_1 
       (.CI(\sample_count_o_reg[15]_i_1_n_0 ),
        .CO({\sample_count_o_reg[19]_i_1_n_0 ,\sample_count_o_reg[19]_i_1_n_1 ,\sample_count_o_reg[19]_i_1_n_2 ,\sample_count_o_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[19]_i_1_n_4 ,\sample_count_o_reg[19]_i_1_n_5 ,\sample_count_o_reg[19]_i_1_n_6 ,\sample_count_o_reg[19]_i_1_n_7 }),
        .S(sample_count_o[19:16]));
  FDRE \sample_count_o_reg[1] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[3]_i_1_n_6 ),
        .Q(sample_count_o[1]),
        .R(1'b0));
  FDRE \sample_count_o_reg[20] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[23]_i_1_n_7 ),
        .Q(sample_count_o[20]),
        .R(1'b0));
  FDRE \sample_count_o_reg[21] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[23]_i_1_n_6 ),
        .Q(sample_count_o[21]),
        .R(1'b0));
  FDRE \sample_count_o_reg[22] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[23]_i_1_n_5 ),
        .Q(sample_count_o[22]),
        .R(1'b0));
  FDRE \sample_count_o_reg[23] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[23]_i_1_n_4 ),
        .Q(sample_count_o[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[23]_i_1 
       (.CI(\sample_count_o_reg[19]_i_1_n_0 ),
        .CO({\sample_count_o_reg[23]_i_1_n_0 ,\sample_count_o_reg[23]_i_1_n_1 ,\sample_count_o_reg[23]_i_1_n_2 ,\sample_count_o_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[23]_i_1_n_4 ,\sample_count_o_reg[23]_i_1_n_5 ,\sample_count_o_reg[23]_i_1_n_6 ,\sample_count_o_reg[23]_i_1_n_7 }),
        .S(sample_count_o[23:20]));
  FDRE \sample_count_o_reg[24] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[27]_i_1_n_7 ),
        .Q(sample_count_o[24]),
        .R(1'b0));
  FDRE \sample_count_o_reg[25] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[27]_i_1_n_6 ),
        .Q(sample_count_o[25]),
        .R(1'b0));
  FDRE \sample_count_o_reg[26] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[27]_i_1_n_5 ),
        .Q(sample_count_o[26]),
        .R(1'b0));
  FDRE \sample_count_o_reg[27] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[27]_i_1_n_4 ),
        .Q(sample_count_o[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[27]_i_1 
       (.CI(\sample_count_o_reg[23]_i_1_n_0 ),
        .CO({\sample_count_o_reg[27]_i_1_n_0 ,\sample_count_o_reg[27]_i_1_n_1 ,\sample_count_o_reg[27]_i_1_n_2 ,\sample_count_o_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[27]_i_1_n_4 ,\sample_count_o_reg[27]_i_1_n_5 ,\sample_count_o_reg[27]_i_1_n_6 ,\sample_count_o_reg[27]_i_1_n_7 }),
        .S(sample_count_o[27:24]));
  FDRE \sample_count_o_reg[28] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[31]_i_1_n_7 ),
        .Q(sample_count_o[28]),
        .R(1'b0));
  FDRE \sample_count_o_reg[29] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[31]_i_1_n_6 ),
        .Q(sample_count_o[29]),
        .R(1'b0));
  FDRE \sample_count_o_reg[2] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[3]_i_1_n_5 ),
        .Q(sample_count_o[2]),
        .R(1'b0));
  FDRE \sample_count_o_reg[30] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[31]_i_1_n_5 ),
        .Q(sample_count_o[30]),
        .R(1'b0));
  FDRE \sample_count_o_reg[31] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[31]_i_1_n_4 ),
        .Q(sample_count_o[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[31]_i_1 
       (.CI(\sample_count_o_reg[27]_i_1_n_0 ),
        .CO({\NLW_sample_count_o_reg[31]_i_1_CO_UNCONNECTED [3],\sample_count_o_reg[31]_i_1_n_1 ,\sample_count_o_reg[31]_i_1_n_2 ,\sample_count_o_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[31]_i_1_n_4 ,\sample_count_o_reg[31]_i_1_n_5 ,\sample_count_o_reg[31]_i_1_n_6 ,\sample_count_o_reg[31]_i_1_n_7 }),
        .S(sample_count_o[31:28]));
  FDRE \sample_count_o_reg[3] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[3]_i_1_n_4 ),
        .Q(sample_count_o[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sample_count_o_reg[3]_i_1_n_0 ,\sample_count_o_reg[3]_i_1_n_1 ,\sample_count_o_reg[3]_i_1_n_2 ,\sample_count_o_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sample_count_o_reg[3]_i_1_n_4 ,\sample_count_o_reg[3]_i_1_n_5 ,\sample_count_o_reg[3]_i_1_n_6 ,\sample_count_o_reg[3]_i_1_n_7 }),
        .S({sample_count_o[3:1],\sample_count_o[3]_i_2_n_0 }));
  FDRE \sample_count_o_reg[4] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[7]_i_1_n_7 ),
        .Q(sample_count_o[4]),
        .R(1'b0));
  FDRE \sample_count_o_reg[5] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[7]_i_1_n_6 ),
        .Q(sample_count_o[5]),
        .R(1'b0));
  FDRE \sample_count_o_reg[6] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[7]_i_1_n_5 ),
        .Q(sample_count_o[6]),
        .R(1'b0));
  FDRE \sample_count_o_reg[7] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[7]_i_1_n_4 ),
        .Q(sample_count_o[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_count_o_reg[7]_i_1 
       (.CI(\sample_count_o_reg[3]_i_1_n_0 ),
        .CO({\sample_count_o_reg[7]_i_1_n_0 ,\sample_count_o_reg[7]_i_1_n_1 ,\sample_count_o_reg[7]_i_1_n_2 ,\sample_count_o_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_count_o_reg[7]_i_1_n_4 ,\sample_count_o_reg[7]_i_1_n_5 ,\sample_count_o_reg[7]_i_1_n_6 ,\sample_count_o_reg[7]_i_1_n_7 }),
        .S(sample_count_o[7:4]));
  FDRE \sample_count_o_reg[8] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[11]_i_1_n_7 ),
        .Q(sample_count_o[8]),
        .R(1'b0));
  FDRE \sample_count_o_reg[9] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(\sample_count_o_reg[11]_i_1_n_6 ),
        .Q(sample_count_o[9]),
        .R(1'b0));
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
