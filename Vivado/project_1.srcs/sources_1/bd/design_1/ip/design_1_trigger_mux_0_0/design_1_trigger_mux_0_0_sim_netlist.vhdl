-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Jul 21 12:10:03 2026
-- Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_trigger_mux_0_0/design_1_trigger_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_trigger_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_trigger_mux_0_0_trigger_mux is
  port (
    trigger_pulse : out STD_LOGIC;
    gate : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ext_trigger : in STD_LOGIC;
    sw_trigger : in STD_LOGIC;
    trigger_select : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_trigger_mux_0_0_trigger_mux : entity is "trigger_mux";
end design_1_trigger_mux_0_0_trigger_mux;

architecture STRUCTURE of design_1_trigger_mux_0_0_trigger_mux is
  signal ext_ff1 : STD_LOGIC;
  signal ext_ff2 : STD_LOGIC;
  signal gate_ff1 : STD_LOGIC;
  signal gate_ff2 : STD_LOGIC;
  signal sw_ff1 : STD_LOGIC;
  signal sw_ff2 : STD_LOGIC;
begin
ext_ff1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ext_trigger,
      Q => ext_ff1,
      R => rst
    );
ext_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ext_ff1,
      Q => ext_ff2,
      R => rst
    );
gate_ff1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gate,
      Q => gate_ff1,
      R => '0'
    );
gate_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gate_ff1,
      Q => gate_ff2,
      R => '0'
    );
sw_ff1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw_trigger,
      Q => sw_ff1,
      R => rst
    );
sw_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw_ff1,
      Q => sw_ff2,
      R => rst
    );
trigger_pulse_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04F4040400000000"
    )
        port map (
      I0 => ext_ff2,
      I1 => ext_ff1,
      I2 => trigger_select,
      I3 => sw_ff2,
      I4 => sw_ff1,
      I5 => gate_ff2,
      O => trigger_pulse
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_trigger_mux_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    gate : in STD_LOGIC;
    trigger_select : in STD_LOGIC;
    ext_trigger : in STD_LOGIC;
    sw_trigger : in STD_LOGIC;
    trigger_pulse : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_trigger_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_trigger_mux_0_0 : entity is "design_1_trigger_mux_0_0,trigger_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_trigger_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_trigger_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_trigger_mux_0_0 : entity is "trigger_mux,Vivado 2024.2";
end design_1_trigger_mux_0_0;

architecture STRUCTURE of design_1_trigger_mux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_trigger_mux_0_0_trigger_mux
     port map (
      clk => clk,
      ext_trigger => ext_trigger,
      gate => gate,
      rst => rst,
      sw_trigger => sw_trigger,
      trigger_pulse => trigger_pulse,
      trigger_select => trigger_select
    );
end STRUCTURE;
