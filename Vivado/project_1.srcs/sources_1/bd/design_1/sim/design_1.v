//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Jul 21 12:55:51 2026
//Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=41,numReposBlks=41,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    ENET0_GMII_RX_CLK_0,
    ENET0_GMII_RX_DV_0,
    ENET0_GMII_TX_CLK_0,
    ENET0_GMII_TX_EN_0,
    ENET0_RXD,
    ENET0_TXD,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    MDIO_ETHERNET_0_0_mdc,
    MDIO_ETHERNET_0_0_mdio_i,
    MDIO_ETHERNET_0_0_mdio_o,
    MDIO_ETHERNET_0_0_mdio_t,
    adc_clk_o_0,
    adc_data_i_0,
    clk_in_0,
    dac_clk_o_0,
    dac_data_o_0,
    led_o,
    trig_i_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 BA" *) inout [2:0]DDR_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N" *) inout DDR_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N" *) inout DDR_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P" *) inout DDR_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CKE" *) inout DDR_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N" *) inout DDR_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DM" *) inout [3:0]DDR_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQ" *) inout [31:0]DDR_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N" *) inout [3:0]DDR_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P" *) inout [3:0]DDR_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ODT" *) inout DDR_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N" *) inout DDR_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N" *) inout DDR_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N" *) inout DDR_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ENET0_GMII_RX_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ENET0_GMII_RX_CLK_0, CLK_DOMAIN design_1_ENET0_GMII_RX_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ENET0_GMII_RX_CLK_0;
  input ENET0_GMII_RX_DV_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ENET0_GMII_TX_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ENET0_GMII_TX_CLK_0, CLK_DOMAIN design_1_ENET0_GMII_TX_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ENET0_GMII_TX_CLK_0;
  output [0:0]ENET0_GMII_TX_EN_0;
  input [3:0]ENET0_RXD;
  output [3:0]ENET0_TXD;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDC" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MDIO_ETHERNET_0_0, CAN_DEBUG false" *) output MDIO_ETHERNET_0_0_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDIO_I" *) input MDIO_ETHERNET_0_0_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDIO_O" *) output MDIO_ETHERNET_0_0_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDIO_T" *) output MDIO_ETHERNET_0_0_mdio_t;
  output adc_clk_o_0;
  input [11:0]adc_data_i_0;
  input clk_in_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAC_CLK_O_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAC_CLK_O_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output dac_clk_o_0;
  output [13:0]dac_data_o_0;
  output led_o;
  input trig_i_0;

  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [3:0]DDR_0_dm;
  wire [31:0]DDR_0_dq;
  wire [3:0]DDR_0_dqs_n;
  wire [3:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire ENET0_GMII_RX_CLK_0;
  wire ENET0_GMII_RX_DV_0;
  wire ENET0_GMII_TX_CLK_0;
  wire [0:0]ENET0_GMII_TX_EN_0;
  wire [3:0]ENET0_RXD;
  wire [3:0]ENET0_TXD;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire MDIO_ETHERNET_0_0_mdc;
  wire MDIO_ETHERNET_0_0_mdio_i;
  wire MDIO_ETHERNET_0_0_mdio_o;
  wire MDIO_ETHERNET_0_0_mdio_t;
  wire adc_clk_o_0;
  wire [11:0]adc_data_i_0;
  wire [11:0]adc_sample_0_adc_data_o;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire axi_dma_0_s2mm_introut;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axis_capture_control_0_m_axis_TDATA;
  wire [3:0]axis_capture_control_0_m_axis_TKEEP;
  wire axis_capture_control_0_m_axis_TLAST;
  wire axis_capture_control_0_m_axis_TREADY;
  wire axis_capture_control_0_m_axis_TVALID;
  wire [31:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_1_M_AXIS_TKEEP;
  wire axis_data_fifo_1_M_AXIS_TLAST;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [31:0]cic_compiler_0_M_AXIS_DATA_TDATA_0;
  wire cic_compiler_0_M_AXIS_DATA_TREADY;
  wire cic_compiler_0_M_AXIS_DATA_TVALID_0;
  wire [23:0]cic_compiler_0_m_axis_data_tdata;
  wire cic_compiler_0_m_axis_data_tvalid;
  wire [23:0]cic_compiler_1_m_axis_data_tdata;
  wire cic_compiler_1_m_axis_data_tvalid;
  wire clk_in_0;
  wire clk_wiz_0_ila_clk;
  wire cordic_0_m_axis_dout_tvalid;
  wire dac_clk_o_0;
  wire [13:0]dac_data_o_0;
  wire [31:0]dds_compiler_0_m_axis_data_tdata;
  wire fir_compiler_I_m_axis_data_tvalid;
  wire [0:0]first_mux_Dout;
  wire led_o;
  wire [44:0]mult_gen_0_P;
  wire [23:0]mult_gen_I_P;
  wire [23:0]mult_gen_Q_P;
  wire [31:0]phase_unwrap_0_m_phase;
  wire phase_unwrap_0_m_valid;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [7:0]processing_system7_0_ENET0_GMII_TXD;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [3:0]processing_system7_0_GPIO_O;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [0:0]second_trig_Dout;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  wire [1:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [9:0]smartconnect_1_M00_AXI_ARADDR;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [9:0]smartconnect_1_M00_AXI_AWADDR;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WREADY;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [8:0]smartconnect_1_M01_AXI_ARADDR;
  wire smartconnect_1_M01_AXI_ARREADY;
  wire smartconnect_1_M01_AXI_ARVALID;
  wire [8:0]smartconnect_1_M01_AXI_AWADDR;
  wire smartconnect_1_M01_AXI_AWREADY;
  wire smartconnect_1_M01_AXI_AWVALID;
  wire smartconnect_1_M01_AXI_BREADY;
  wire [1:0]smartconnect_1_M01_AXI_BRESP;
  wire smartconnect_1_M01_AXI_BVALID;
  wire [31:0]smartconnect_1_M01_AXI_RDATA;
  wire smartconnect_1_M01_AXI_RREADY;
  wire [1:0]smartconnect_1_M01_AXI_RRESP;
  wire smartconnect_1_M01_AXI_RVALID;
  wire [31:0]smartconnect_1_M01_AXI_WDATA;
  wire smartconnect_1_M01_AXI_WREADY;
  wire [3:0]smartconnect_1_M01_AXI_WSTRB;
  wire smartconnect_1_M01_AXI_WVALID;
  wire [0:0]third_gate_Dout;
  wire trig_i_0;
  wire trigger_mux_0_trigger_pulse;
  wire [7:0]xlconcat_1_dout;
  wire [47:0]xlconcat_3_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [0:0]xlconstant_3_dout1;
  wire [0:0]xlconstant_4_dout;
  wire [0:0]xlconstant_5_dout;
  wire [20:0]xlconstant_6_dout;
  wire [11:0]xlslice_0_Dout;
  wire [23:0]xlslice_0_Dout1;
  wire [23:0]xlslice_0_Dout2;
  wire [11:0]xlslice_1_Dout;
  wire [23:0]xlslice_cos1_Dout;
  wire [23:0]xlslice_cos2_Dout;

  design_1_adc_sample_0_0 adc_sample_0
       (.adc_clk_i(dac_clk_o_0),
        .adc_data_i(adc_data_i_0),
        .adc_data_o(adc_sample_0_adc_data_o));
  design_1_axi_dma_0_0 axi_dma_0
       (.axi_resetn(xlconstant_3_dout),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(smartconnect_1_M00_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_1_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_1_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_1_M00_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_1_M00_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_1_M00_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_1_M00_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_1_M00_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_1_M00_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_1_M00_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_1_M00_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_1_M00_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_1_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_1_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_1_M_AXIS_TVALID));
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_1_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(smartconnect_1_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_1_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_1_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_1_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_1_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_1_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_1_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_1_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_1_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_1_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_1_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_1_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_1_M01_AXI_WVALID));
  design_1_axis_capture_control_0_0 axis_capture_control_0
       (.aclk(dac_clk_o_0),
        .aresetn(xlconstant_3_dout1),
        .capture_enable(led_o),
        .m_axis_tdata(axis_capture_control_0_m_axis_TDATA),
        .m_axis_tkeep(axis_capture_control_0_m_axis_TKEEP),
        .m_axis_tlast(axis_capture_control_0_m_axis_TLAST),
        .m_axis_tready(axis_capture_control_0_m_axis_TREADY),
        .m_axis_tvalid(axis_capture_control_0_m_axis_TVALID),
        .s_axis_tdata(cic_compiler_0_M_AXIS_DATA_TDATA_0),
        .s_axis_tready(cic_compiler_0_M_AXIS_DATA_TREADY),
        .s_axis_tvalid(cic_compiler_0_M_AXIS_DATA_TVALID_0),
        .sample_count(axi_gpio_0_gpio_io_o),
        .trigger_async(trigger_mux_0_trigger_pulse));
  design_1_axis_data_fifo_1_0 axis_data_fifo_1
       (.m_axis_aclk(processing_system7_0_FCLK_CLK0),
        .m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(dac_clk_o_0),
        .s_axis_aresetn(xlconstant_3_dout1),
        .s_axis_tdata(axis_capture_control_0_m_axis_TDATA),
        .s_axis_tkeep(axis_capture_control_0_m_axis_TKEEP),
        .s_axis_tlast(axis_capture_control_0_m_axis_TLAST),
        .s_axis_tready(axis_capture_control_0_m_axis_TREADY),
        .s_axis_tvalid(axis_capture_control_0_m_axis_TVALID));
  design_1_cic_compiler_0_3 cic_compiler_0
       (.aclk(dac_clk_o_0),
        .m_axis_data_tdata(cic_compiler_0_M_AXIS_DATA_TDATA_0),
        .m_axis_data_tready(cic_compiler_0_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(cic_compiler_0_M_AXIS_DATA_TVALID_0),
        .s_axis_data_tdata(phase_unwrap_0_m_phase),
        .s_axis_data_tvalid(phase_unwrap_0_m_valid));
  design_1_cic_compiler_0_0 cic_compiler_I
       (.aclk(dac_clk_o_0),
        .m_axis_data_tdata(cic_compiler_0_m_axis_data_tdata),
        .m_axis_data_tvalid(cic_compiler_0_m_axis_data_tvalid),
        .s_axis_data_tdata(mult_gen_I_P),
        .s_axis_data_tvalid(xlconstant_1_dout));
  design_1_cic_compiler_0_2 cic_compiler_Q
       (.aclk(dac_clk_o_0),
        .m_axis_data_tdata(cic_compiler_1_m_axis_data_tdata),
        .m_axis_data_tvalid(cic_compiler_1_m_axis_data_tvalid),
        .s_axis_data_tdata(mult_gen_Q_P),
        .s_axis_data_tvalid(xlconstant_1_dout));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.adc_clk_i(dac_clk_o_0),
        .adc_clk_o(adc_clk_o_0),
        .clk_in1(clk_in_0),
        .ila_clk(clk_wiz_0_ila_clk),
        .reset(xlconstant_0_dout));
  design_1_cordic_0_0 cordic_0
       (.aclk(dac_clk_o_0),
        .m_axis_dout_tdata(xlslice_0_Dout1),
        .m_axis_dout_tvalid(cordic_0_m_axis_dout_tvalid),
        .s_axis_cartesian_tdata(xlconcat_3_dout),
        .s_axis_cartesian_tvalid(fir_compiler_I_m_axis_data_tvalid));
  design_1_dds_compiler_0_0 dds_compiler_0
       (.aclk(dac_clk_o_0),
        .m_axis_data_tdata(dds_compiler_0_m_axis_data_tdata));
  design_1_fir_compiler_0_0 fir_compiler_I
       (.aclk(dac_clk_o_0),
        .m_axis_data_tdata(xlslice_cos2_Dout),
        .m_axis_data_tvalid(fir_compiler_I_m_axis_data_tvalid),
        .s_axis_data_tdata(cic_compiler_0_m_axis_data_tdata),
        .s_axis_data_tvalid(cic_compiler_0_m_axis_data_tvalid));
  design_1_fir_compiler_0_3 fir_compiler_Q
       (.aclk(dac_clk_o_0),
        .m_axis_data_tdata(xlslice_cos1_Dout),
        .s_axis_data_tdata(cic_compiler_1_m_axis_data_tdata),
        .s_axis_data_tvalid(cic_compiler_1_m_axis_data_tvalid));
  design_1_xlslice_0_2 first_mux
       (.Din(processing_system7_0_GPIO_O),
        .Dout(first_mux_Dout));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_ila_clk),
        .probe0(adc_sample_0_adc_data_o),
        .probe1(xlslice_cos2_Dout),
        .probe2(xlslice_cos1_Dout),
        .probe3(phase_unwrap_0_m_phase),
        .probe4(dac_data_o_0));
  design_1_leds_0_0 leds_0
       (.clk_i(clk_in_0));
  design_1_mult_gen_0_2 mult_gen_0
       (.A(xlslice_0_Dout1),
        .B(xlconstant_6_dout),
        .CLK(dac_clk_o_0),
        .P(mult_gen_0_P));
  design_1_mult_gen_0_0 mult_gen_I
       (.A(adc_sample_0_adc_data_o),
        .B(xlslice_0_Dout),
        .CLK(dac_clk_o_0),
        .P(mult_gen_I_P));
  design_1_mult_gen_0_1 mult_gen_Q
       (.A(adc_sample_0_adc_data_o),
        .B(xlslice_1_Dout),
        .CLK(dac_clk_o_0),
        .P(mult_gen_Q_P));
  design_1_phase_unwrap_0_0 phase_unwrap_0
       (.clk(dac_clk_o_0),
        .m_phase(phase_unwrap_0_m_phase),
        .m_valid(phase_unwrap_0_m_valid),
        .rst(xlconstant_2_dout),
        .s_phase(xlslice_0_Dout2),
        .s_valid(cordic_0_m_axis_dout_tvalid));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_5_dout),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(xlconstant_3_dout),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_0_addr),
        .DDR_BankAddr(DDR_0_ba),
        .DDR_CAS_n(DDR_0_cas_n),
        .DDR_CKE(DDR_0_cke),
        .DDR_CS_n(DDR_0_cs_n),
        .DDR_Clk(DDR_0_ck_p),
        .DDR_Clk_n(DDR_0_ck_n),
        .DDR_DM(DDR_0_dm),
        .DDR_DQ(DDR_0_dq),
        .DDR_DQS(DDR_0_dqs_p),
        .DDR_DQS_n(DDR_0_dqs_n),
        .DDR_DRSTB(DDR_0_reset_n),
        .DDR_ODT(DDR_0_odt),
        .DDR_RAS_n(DDR_0_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_0_we_n),
        .ENET0_EXT_INTIN(1'b0),
        .ENET0_GMII_COL(1'b0),
        .ENET0_GMII_CRS(1'b0),
        .ENET0_GMII_RXD(xlconcat_1_dout),
        .ENET0_GMII_RX_CLK(ENET0_GMII_RX_CLK_0),
        .ENET0_GMII_RX_DV(ENET0_GMII_RX_DV_0),
        .ENET0_GMII_RX_ER(1'b0),
        .ENET0_GMII_TXD(processing_system7_0_ENET0_GMII_TXD),
        .ENET0_GMII_TX_CLK(ENET0_GMII_TX_CLK_0),
        .ENET0_GMII_TX_EN(ENET0_GMII_TX_EN_0),
        .ENET0_MDIO_I(MDIO_ETHERNET_0_0_mdio_i),
        .ENET0_MDIO_MDC(MDIO_ETHERNET_0_0_mdc),
        .ENET0_MDIO_O(MDIO_ETHERNET_0_0_mdio_o),
        .ENET0_MDIO_T(MDIO_ETHERNET_0_0_mdio_t),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0}),
        .GPIO_O(processing_system7_0_GPIO_O),
        .IRQ_F2P(axi_dma_0_s2mm_introut),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_GP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARBURST({1'b0,1'b1}),
        .S_AXI_GP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_GP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_GP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_GP0_ARVALID(1'b0),
        .S_AXI_GP0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWBURST({1'b0,1'b1}),
        .S_AXI_GP0_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_GP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_GP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_GP0_AWVALID(1'b0),
        .S_AXI_GP0_BREADY(1'b0),
        .S_AXI_GP0_RREADY(1'b0),
        .S_AXI_GP0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_WLAST(1'b0),
        .S_AXI_GP0_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_GP0_WVALID(1'b0),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARBURST({1'b0,1'b1}),
        .S_AXI_HP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_HP0_ARVALID(1'b0),
        .S_AXI_HP0_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(smartconnect_0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(smartconnect_0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(smartconnect_0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(smartconnect_0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(smartconnect_0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(smartconnect_0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(smartconnect_0_M00_AXI_BVALID),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RREADY(1'b0),
        .S_AXI_HP0_WDATA(smartconnect_0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(smartconnect_0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(smartconnect_0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(smartconnect_0_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_xlslice_0_3 second_trig
       (.Din(processing_system7_0_GPIO_O),
        .Dout(second_trig_Dout));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S00_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  design_1_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_1_M01_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  design_1_second_trig_0 third_gate
       (.Din(processing_system7_0_GPIO_O),
        .Dout(third_gate_Dout));
  design_1_trigger_mux_0_0 trigger_mux_0
       (.clk(dac_clk_o_0),
        .ext_trigger(trig_i_0),
        .gate(third_gate_Dout),
        .rst(xlconstant_4_dout),
        .sw_trigger(second_trig_Dout),
        .trigger_pulse(trigger_mux_0_trigger_pulse),
        .trigger_select(first_mux_Dout));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(processing_system7_0_ENET0_GMII_TXD[3:0]),
        .dout(ENET0_TXD));
  design_1_xlconcat_1_0 xlconcat_1
       (.In0(ENET0_RXD),
        .In1({1'b0,1'b0,1'b0,1'b0}),
        .dout(xlconcat_1_dout));
  design_1_xlconcat_3_0 xlconcat_3
       (.In0(xlslice_cos2_Dout),
        .In1(xlslice_cos1_Dout),
        .dout(xlconcat_3_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlconstant_3_1 xlconstant_3
       (.dout(xlconstant_3_dout1));
  design_1_xlconstant_4_1 xlconstant_4
       (.dout(xlconstant_4_dout));
  design_1_xlconstant_5_0 xlconstant_5
       (.dout(xlconstant_5_dout));
  design_1_xlconstant_2_1 xlconstant_6
       (.dout(xlconstant_6_dout));
  design_1_xlslice_0_4 xlslice_0
       (.Din(mult_gen_0_P),
        .Dout(xlslice_0_Dout2));
  design_1_xlslice_0_0 xlslice_cos
       (.Din(dds_compiler_0_m_axis_data_tdata),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_0_1 xlslice_sin
       (.Din(dds_compiler_0_m_axis_data_tdata),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_sin1_0 xlslice_sin2
       (.Din(phase_unwrap_0_m_phase),
        .Dout(dac_data_o_0));
endmodule
