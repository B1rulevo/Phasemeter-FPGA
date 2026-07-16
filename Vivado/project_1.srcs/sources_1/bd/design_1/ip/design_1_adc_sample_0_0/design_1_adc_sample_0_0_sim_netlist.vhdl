-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jul 16 13:59:15 2026
-- Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_adc_sample_0_0/design_1_adc_sample_0_0_sim_netlist.vhdl
-- Design      : design_1_adc_sample_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_sample_0_0_adc_sample is
  port (
    adc_data_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_count_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_data_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_adc_sample_0_0_adc_sample : entity is "adc_sample";
end design_1_adc_sample_0_0_adc_sample;

architecture STRUCTURE of design_1_adc_sample_0_0_adc_sample is
  signal \^sample_count_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sample_count_o[3]_i_2_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_o_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_sample_count_o_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sample_count_o_reg[7]_i_1\ : label is 11;
begin
  sample_count_o(31 downto 0) <= \^sample_count_o\(31 downto 0);
\adc_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(0),
      Q => adc_data_o(0),
      R => '0'
    );
\adc_data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(10),
      Q => adc_data_o(10),
      R => '0'
    );
\adc_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(11),
      Q => adc_data_o(11),
      R => '0'
    );
\adc_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(1),
      Q => adc_data_o(1),
      R => '0'
    );
\adc_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(2),
      Q => adc_data_o(2),
      R => '0'
    );
\adc_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(3),
      Q => adc_data_o(3),
      R => '0'
    );
\adc_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(4),
      Q => adc_data_o(4),
      R => '0'
    );
\adc_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(5),
      Q => adc_data_o(5),
      R => '0'
    );
\adc_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(6),
      Q => adc_data_o(6),
      R => '0'
    );
\adc_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(7),
      Q => adc_data_o(7),
      R => '0'
    );
\adc_data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(8),
      Q => adc_data_o(8),
      R => '0'
    );
\adc_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_data_i(9),
      Q => adc_data_o(9),
      R => '0'
    );
\sample_count_o[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sample_count_o\(0),
      O => \sample_count_o[3]_i_2_n_0\
    );
\sample_count_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[3]_i_1_n_7\,
      Q => \^sample_count_o\(0),
      R => '0'
    );
\sample_count_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[11]_i_1_n_5\,
      Q => \^sample_count_o\(10),
      R => '0'
    );
\sample_count_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[11]_i_1_n_4\,
      Q => \^sample_count_o\(11),
      R => '0'
    );
\sample_count_o_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[7]_i_1_n_0\,
      CO(3) => \sample_count_o_reg[11]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[11]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[11]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[11]_i_1_n_4\,
      O(2) => \sample_count_o_reg[11]_i_1_n_5\,
      O(1) => \sample_count_o_reg[11]_i_1_n_6\,
      O(0) => \sample_count_o_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(11 downto 8)
    );
\sample_count_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[15]_i_1_n_7\,
      Q => \^sample_count_o\(12),
      R => '0'
    );
\sample_count_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[15]_i_1_n_6\,
      Q => \^sample_count_o\(13),
      R => '0'
    );
\sample_count_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[15]_i_1_n_5\,
      Q => \^sample_count_o\(14),
      R => '0'
    );
\sample_count_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[15]_i_1_n_4\,
      Q => \^sample_count_o\(15),
      R => '0'
    );
\sample_count_o_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[11]_i_1_n_0\,
      CO(3) => \sample_count_o_reg[15]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[15]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[15]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[15]_i_1_n_4\,
      O(2) => \sample_count_o_reg[15]_i_1_n_5\,
      O(1) => \sample_count_o_reg[15]_i_1_n_6\,
      O(0) => \sample_count_o_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(15 downto 12)
    );
\sample_count_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[19]_i_1_n_7\,
      Q => \^sample_count_o\(16),
      R => '0'
    );
\sample_count_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[19]_i_1_n_6\,
      Q => \^sample_count_o\(17),
      R => '0'
    );
\sample_count_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[19]_i_1_n_5\,
      Q => \^sample_count_o\(18),
      R => '0'
    );
\sample_count_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[19]_i_1_n_4\,
      Q => \^sample_count_o\(19),
      R => '0'
    );
\sample_count_o_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[15]_i_1_n_0\,
      CO(3) => \sample_count_o_reg[19]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[19]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[19]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[19]_i_1_n_4\,
      O(2) => \sample_count_o_reg[19]_i_1_n_5\,
      O(1) => \sample_count_o_reg[19]_i_1_n_6\,
      O(0) => \sample_count_o_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(19 downto 16)
    );
\sample_count_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[3]_i_1_n_6\,
      Q => \^sample_count_o\(1),
      R => '0'
    );
\sample_count_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[23]_i_1_n_7\,
      Q => \^sample_count_o\(20),
      R => '0'
    );
\sample_count_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[23]_i_1_n_6\,
      Q => \^sample_count_o\(21),
      R => '0'
    );
\sample_count_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[23]_i_1_n_5\,
      Q => \^sample_count_o\(22),
      R => '0'
    );
\sample_count_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[23]_i_1_n_4\,
      Q => \^sample_count_o\(23),
      R => '0'
    );
\sample_count_o_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[19]_i_1_n_0\,
      CO(3) => \sample_count_o_reg[23]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[23]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[23]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[23]_i_1_n_4\,
      O(2) => \sample_count_o_reg[23]_i_1_n_5\,
      O(1) => \sample_count_o_reg[23]_i_1_n_6\,
      O(0) => \sample_count_o_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(23 downto 20)
    );
\sample_count_o_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[27]_i_1_n_7\,
      Q => \^sample_count_o\(24),
      R => '0'
    );
\sample_count_o_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[27]_i_1_n_6\,
      Q => \^sample_count_o\(25),
      R => '0'
    );
\sample_count_o_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[27]_i_1_n_5\,
      Q => \^sample_count_o\(26),
      R => '0'
    );
\sample_count_o_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[27]_i_1_n_4\,
      Q => \^sample_count_o\(27),
      R => '0'
    );
\sample_count_o_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[23]_i_1_n_0\,
      CO(3) => \sample_count_o_reg[27]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[27]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[27]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[27]_i_1_n_4\,
      O(2) => \sample_count_o_reg[27]_i_1_n_5\,
      O(1) => \sample_count_o_reg[27]_i_1_n_6\,
      O(0) => \sample_count_o_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(27 downto 24)
    );
\sample_count_o_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[31]_i_1_n_7\,
      Q => \^sample_count_o\(28),
      R => '0'
    );
\sample_count_o_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[31]_i_1_n_6\,
      Q => \^sample_count_o\(29),
      R => '0'
    );
\sample_count_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[3]_i_1_n_5\,
      Q => \^sample_count_o\(2),
      R => '0'
    );
\sample_count_o_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[31]_i_1_n_5\,
      Q => \^sample_count_o\(30),
      R => '0'
    );
\sample_count_o_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[31]_i_1_n_4\,
      Q => \^sample_count_o\(31),
      R => '0'
    );
\sample_count_o_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[27]_i_1_n_0\,
      CO(3) => \NLW_sample_count_o_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sample_count_o_reg[31]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[31]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[31]_i_1_n_4\,
      O(2) => \sample_count_o_reg[31]_i_1_n_5\,
      O(1) => \sample_count_o_reg[31]_i_1_n_6\,
      O(0) => \sample_count_o_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(31 downto 28)
    );
\sample_count_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[3]_i_1_n_4\,
      Q => \^sample_count_o\(3),
      R => '0'
    );
\sample_count_o_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sample_count_o_reg[3]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[3]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[3]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sample_count_o_reg[3]_i_1_n_4\,
      O(2) => \sample_count_o_reg[3]_i_1_n_5\,
      O(1) => \sample_count_o_reg[3]_i_1_n_6\,
      O(0) => \sample_count_o_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^sample_count_o\(3 downto 1),
      S(0) => \sample_count_o[3]_i_2_n_0\
    );
\sample_count_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[7]_i_1_n_7\,
      Q => \^sample_count_o\(4),
      R => '0'
    );
\sample_count_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[7]_i_1_n_6\,
      Q => \^sample_count_o\(5),
      R => '0'
    );
\sample_count_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[7]_i_1_n_5\,
      Q => \^sample_count_o\(6),
      R => '0'
    );
\sample_count_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[7]_i_1_n_4\,
      Q => \^sample_count_o\(7),
      R => '0'
    );
\sample_count_o_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_count_o_reg[3]_i_1_n_0\,
      CO(3) => \sample_count_o_reg[7]_i_1_n_0\,
      CO(2) => \sample_count_o_reg[7]_i_1_n_1\,
      CO(1) => \sample_count_o_reg[7]_i_1_n_2\,
      CO(0) => \sample_count_o_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_count_o_reg[7]_i_1_n_4\,
      O(2) => \sample_count_o_reg[7]_i_1_n_5\,
      O(1) => \sample_count_o_reg[7]_i_1_n_6\,
      O(0) => \sample_count_o_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^sample_count_o\(7 downto 4)
    );
\sample_count_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[11]_i_1_n_7\,
      Q => \^sample_count_o\(8),
      R => '0'
    );
\sample_count_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \sample_count_o_reg[11]_i_1_n_6\,
      Q => \^sample_count_o\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_sample_0_0 is
  port (
    adc_clk_i : in STD_LOGIC;
    adc_data_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_count_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adc_sample_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adc_sample_0_0 : entity is "design_1_adc_sample_0_0,adc_sample,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adc_sample_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_adc_sample_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_adc_sample_0_0 : entity is "adc_sample,Vivado 2024.2";
end design_1_adc_sample_0_0;

architecture STRUCTURE of design_1_adc_sample_0_0 is
begin
inst: entity work.design_1_adc_sample_0_0_adc_sample
     port map (
      adc_clk_i => adc_clk_i,
      adc_data_i(11 downto 0) => adc_data_i(11 downto 0),
      adc_data_o(11 downto 0) => adc_data_o(11 downto 0),
      sample_count_o(31 downto 0) => sample_count_o(31 downto 0)
    );
end STRUCTURE;
