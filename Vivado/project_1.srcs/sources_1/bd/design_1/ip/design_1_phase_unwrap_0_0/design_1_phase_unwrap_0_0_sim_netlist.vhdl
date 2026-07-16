-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jul 16 13:59:16 2026
-- Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_phase_unwrap_0_0/design_1_phase_unwrap_0_0_sim_netlist.vhdl
-- Design      : design_1_phase_unwrap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_phase_unwrap_0_0_phase_unwrap is
  port (
    m_phase : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_valid : out STD_LOGIC;
    s_phase : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rst : in STD_LOGIC;
    s_valid : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_phase_unwrap_0_0_phase_unwrap : entity is "phase_unwrap";
end design_1_phase_unwrap_0_0_phase_unwrap;

architecture STRUCTURE of design_1_phase_unwrap_0_0_phase_unwrap is
  signal dphi : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \dphi_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dphi_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dphi_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dphi_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dphi_carry__0_n_0\ : STD_LOGIC;
  signal \dphi_carry__0_n_1\ : STD_LOGIC;
  signal \dphi_carry__0_n_2\ : STD_LOGIC;
  signal \dphi_carry__0_n_3\ : STD_LOGIC;
  signal \dphi_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dphi_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dphi_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \dphi_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \dphi_carry__1_n_0\ : STD_LOGIC;
  signal \dphi_carry__1_n_1\ : STD_LOGIC;
  signal \dphi_carry__1_n_2\ : STD_LOGIC;
  signal \dphi_carry__1_n_3\ : STD_LOGIC;
  signal \dphi_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \dphi_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \dphi_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \dphi_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \dphi_carry__2_n_0\ : STD_LOGIC;
  signal \dphi_carry__2_n_1\ : STD_LOGIC;
  signal \dphi_carry__2_n_2\ : STD_LOGIC;
  signal \dphi_carry__2_n_3\ : STD_LOGIC;
  signal \dphi_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \dphi_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \dphi_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \dphi_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \dphi_carry__3_n_0\ : STD_LOGIC;
  signal \dphi_carry__3_n_1\ : STD_LOGIC;
  signal \dphi_carry__3_n_2\ : STD_LOGIC;
  signal \dphi_carry__3_n_3\ : STD_LOGIC;
  signal \dphi_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \dphi_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \dphi_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \dphi_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \dphi_carry__4_n_0\ : STD_LOGIC;
  signal \dphi_carry__4_n_1\ : STD_LOGIC;
  signal \dphi_carry__4_n_2\ : STD_LOGIC;
  signal \dphi_carry__4_n_3\ : STD_LOGIC;
  signal dphi_carry_i_1_n_0 : STD_LOGIC;
  signal dphi_carry_i_2_n_0 : STD_LOGIC;
  signal dphi_carry_i_3_n_0 : STD_LOGIC;
  signal dphi_carry_i_4_n_0 : STD_LOGIC;
  signal dphi_carry_n_0 : STD_LOGIC;
  signal dphi_carry_n_1 : STD_LOGIC;
  signal dphi_carry_n_2 : STD_LOGIC;
  signal dphi_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_3\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \^m_phase\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \m_phase0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \m_phase0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \m_phase0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \m_phase0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_1\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_2\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_3\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_4\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_5\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_6\ : STD_LOGIC;
  signal \m_phase0_carry__0_n_7\ : STD_LOGIC;
  signal m_phase0_carry_i_1_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_2_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_3_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_4_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_5_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_6_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_7_n_0 : STD_LOGIC;
  signal m_phase0_carry_i_8_n_0 : STD_LOGIC;
  signal m_phase0_carry_n_0 : STD_LOGIC;
  signal m_phase0_carry_n_1 : STD_LOGIC;
  signal m_phase0_carry_n_2 : STD_LOGIC;
  signal m_phase0_carry_n_3 : STD_LOGIC;
  signal m_phase0_carry_n_4 : STD_LOGIC;
  signal m_phase0_carry_n_5 : STD_LOGIC;
  signal m_phase0_carry_n_6 : STD_LOGIC;
  signal m_phase0_carry_n_7 : STD_LOGIC;
  signal m_valid_i_1_n_0 : STD_LOGIC;
  signal \offset[24]_i_2_n_0\ : STD_LOGIC;
  signal \offset[24]_i_3_n_0\ : STD_LOGIC;
  signal \offset[24]_i_4_n_0\ : STD_LOGIC;
  signal \offset[27]_i_2_n_0\ : STD_LOGIC;
  signal \offset[27]_i_3_n_0\ : STD_LOGIC;
  signal \offset[27]_i_4_n_0\ : STD_LOGIC;
  signal \offset[27]_i_5_n_0\ : STD_LOGIC;
  signal \offset[31]_i_2_n_0\ : STD_LOGIC;
  signal offset_next1 : STD_LOGIC;
  signal \offset_next1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__0_n_1\ : STD_LOGIC;
  signal \offset_next1_carry__0_n_2\ : STD_LOGIC;
  signal \offset_next1_carry__0_n_3\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_n_0\ : STD_LOGIC;
  signal \offset_next1_carry__1_n_1\ : STD_LOGIC;
  signal \offset_next1_carry__1_n_2\ : STD_LOGIC;
  signal \offset_next1_carry__1_n_3\ : STD_LOGIC;
  signal \offset_next1_carry__2_n_3\ : STD_LOGIC;
  signal offset_next1_carry_i_1_n_0 : STD_LOGIC;
  signal offset_next1_carry_i_2_n_0 : STD_LOGIC;
  signal offset_next1_carry_i_3_n_0 : STD_LOGIC;
  signal offset_next1_carry_i_4_n_0 : STD_LOGIC;
  signal offset_next1_carry_i_5_n_0 : STD_LOGIC;
  signal offset_next1_carry_i_6_n_0 : STD_LOGIC;
  signal offset_next1_carry_n_0 : STD_LOGIC;
  signal offset_next1_carry_n_1 : STD_LOGIC;
  signal offset_next1_carry_n_2 : STD_LOGIC;
  signal offset_next1_carry_n_3 : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \offset_next1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal offset_reg : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \offset_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \offset_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \offset_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \offset_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \offset_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \offset_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \offset_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \offset_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \offset_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_i__carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i__carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_phase0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_offset_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_offset_next1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_next1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_offset_next1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_offset_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_offset_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of m_phase0_carry : label is 35;
  attribute ADDER_THRESHOLD of \m_phase0_carry__0\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of offset_next1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \offset_next1_inferred__0/i__carry__2\ : label is 11;
  attribute ADDER_THRESHOLD of \offset_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \offset_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \offset_reg[31]_i_1\ : label is 11;
begin
  m_phase(31 downto 0) <= \^m_phase\(31 downto 0);
dphi_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dphi_carry_n_0,
      CO(2) => dphi_carry_n_1,
      CO(1) => dphi_carry_n_2,
      CO(0) => dphi_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => s_phase(3 downto 0),
      O(3 downto 0) => dphi(3 downto 0),
      S(3) => dphi_carry_i_1_n_0,
      S(2) => dphi_carry_i_2_n_0,
      S(1) => dphi_carry_i_3_n_0,
      S(0) => dphi_carry_i_4_n_0
    );
\dphi_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dphi_carry_n_0,
      CO(3) => \dphi_carry__0_n_0\,
      CO(2) => \dphi_carry__0_n_1\,
      CO(1) => \dphi_carry__0_n_2\,
      CO(0) => \dphi_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_phase(7 downto 4),
      O(3 downto 0) => dphi(7 downto 4),
      S(3) => \dphi_carry__0_i_1_n_0\,
      S(2) => \dphi_carry__0_i_2_n_0\,
      S(1) => \dphi_carry__0_i_3_n_0\,
      S(0) => \dphi_carry__0_i_4_n_0\
    );
\dphi_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(7),
      I1 => \^m_phase\(7),
      O => \dphi_carry__0_i_1_n_0\
    );
\dphi_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(6),
      I1 => \^m_phase\(6),
      O => \dphi_carry__0_i_2_n_0\
    );
\dphi_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(5),
      I1 => \^m_phase\(5),
      O => \dphi_carry__0_i_3_n_0\
    );
\dphi_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(4),
      I1 => \^m_phase\(4),
      O => \dphi_carry__0_i_4_n_0\
    );
\dphi_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dphi_carry__0_n_0\,
      CO(3) => \dphi_carry__1_n_0\,
      CO(2) => \dphi_carry__1_n_1\,
      CO(1) => \dphi_carry__1_n_2\,
      CO(0) => \dphi_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_phase(11 downto 8),
      O(3 downto 0) => dphi(11 downto 8),
      S(3) => \dphi_carry__1_i_1_n_0\,
      S(2) => \dphi_carry__1_i_2_n_0\,
      S(1) => \dphi_carry__1_i_3_n_0\,
      S(0) => \dphi_carry__1_i_4_n_0\
    );
\dphi_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(11),
      I1 => \^m_phase\(11),
      O => \dphi_carry__1_i_1_n_0\
    );
\dphi_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(10),
      I1 => \^m_phase\(10),
      O => \dphi_carry__1_i_2_n_0\
    );
\dphi_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(9),
      I1 => \^m_phase\(9),
      O => \dphi_carry__1_i_3_n_0\
    );
\dphi_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(8),
      I1 => \^m_phase\(8),
      O => \dphi_carry__1_i_4_n_0\
    );
\dphi_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dphi_carry__1_n_0\,
      CO(3) => \dphi_carry__2_n_0\,
      CO(2) => \dphi_carry__2_n_1\,
      CO(1) => \dphi_carry__2_n_2\,
      CO(0) => \dphi_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_phase(15 downto 12),
      O(3 downto 0) => dphi(15 downto 12),
      S(3) => \dphi_carry__2_i_1_n_0\,
      S(2) => \dphi_carry__2_i_2_n_0\,
      S(1) => \dphi_carry__2_i_3_n_0\,
      S(0) => \dphi_carry__2_i_4_n_0\
    );
\dphi_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(15),
      I1 => \^m_phase\(15),
      O => \dphi_carry__2_i_1_n_0\
    );
\dphi_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(14),
      I1 => \^m_phase\(14),
      O => \dphi_carry__2_i_2_n_0\
    );
\dphi_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(13),
      I1 => \^m_phase\(13),
      O => \dphi_carry__2_i_3_n_0\
    );
\dphi_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(12),
      I1 => \^m_phase\(12),
      O => \dphi_carry__2_i_4_n_0\
    );
\dphi_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dphi_carry__2_n_0\,
      CO(3) => \dphi_carry__3_n_0\,
      CO(2) => \dphi_carry__3_n_1\,
      CO(1) => \dphi_carry__3_n_2\,
      CO(0) => \dphi_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_phase(19 downto 16),
      O(3 downto 0) => dphi(19 downto 16),
      S(3) => \dphi_carry__3_i_1_n_0\,
      S(2) => \dphi_carry__3_i_2_n_0\,
      S(1) => \dphi_carry__3_i_3_n_0\,
      S(0) => \dphi_carry__3_i_4_n_0\
    );
\dphi_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(19),
      I1 => \^m_phase\(19),
      O => \dphi_carry__3_i_1_n_0\
    );
\dphi_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(18),
      I1 => \^m_phase\(18),
      O => \dphi_carry__3_i_2_n_0\
    );
\dphi_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(17),
      I1 => \^m_phase\(17),
      O => \dphi_carry__3_i_3_n_0\
    );
\dphi_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(16),
      I1 => \^m_phase\(16),
      O => \dphi_carry__3_i_4_n_0\
    );
\dphi_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dphi_carry__3_n_0\,
      CO(3) => \dphi_carry__4_n_0\,
      CO(2) => \dphi_carry__4_n_1\,
      CO(1) => \dphi_carry__4_n_2\,
      CO(0) => \dphi_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \^m_phase\(23),
      DI(2 downto 0) => s_phase(22 downto 20),
      O(3 downto 0) => dphi(23 downto 20),
      S(3) => \dphi_carry__4_i_1_n_0\,
      S(2) => \dphi_carry__4_i_2_n_0\,
      S(1) => \dphi_carry__4_i_3_n_0\,
      S(0) => \dphi_carry__4_i_4_n_0\
    );
\dphi_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(23),
      I1 => \^m_phase\(23),
      O => \dphi_carry__4_i_1_n_0\
    );
\dphi_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(22),
      I1 => \^m_phase\(22),
      O => \dphi_carry__4_i_2_n_0\
    );
\dphi_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(21),
      I1 => \^m_phase\(21),
      O => \dphi_carry__4_i_3_n_0\
    );
\dphi_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(20),
      I1 => \^m_phase\(20),
      O => \dphi_carry__4_i_4_n_0\
    );
dphi_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(3),
      I1 => \^m_phase\(3),
      O => dphi_carry_i_1_n_0
    );
dphi_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(2),
      I1 => \^m_phase\(2),
      O => dphi_carry_i_2_n_0
    );
dphi_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(1),
      I1 => \^m_phase\(1),
      O => dphi_carry_i_3_n_0
    );
dphi_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_phase(0),
      I1 => \^m_phase\(0),
      O => dphi_carry_i_4_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(14),
      I1 => dphi(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dphi(12),
      I1 => dphi(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(15),
      I1 => dphi(14),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(12),
      I1 => dphi(13),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(10),
      I1 => dphi(11),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(8),
      I1 => dphi(9),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(20),
      I1 => dphi(21),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dphi(16),
      I1 => dphi(17),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(22),
      I1 => dphi(23),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(21),
      I1 => dphi(20),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(18),
      I1 => dphi(19),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(16),
      I1 => dphi(17),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dphi_carry__4_n_0\,
      CO(3 downto 1) => \NLW_i__carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \i__carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i__carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(4),
      I1 => dphi(5),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(6),
      I1 => dphi(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(5),
      I1 => dphi(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(2),
      I1 => dphi(3),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(0),
      I1 => dphi(1),
      O => \i__carry_i_5_n_0\
    );
m_phase0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m_phase0_carry_n_0,
      CO(2) => m_phase0_carry_n_1,
      CO(1) => m_phase0_carry_n_2,
      CO(0) => m_phase0_carry_n_3,
      CYINIT => m_phase0_carry_i_1_n_0,
      DI(3) => offset_reg(26),
      DI(2) => m_phase0_carry_i_2_n_0,
      DI(1) => m_phase0_carry_i_3_n_0,
      DI(0) => m_phase0_carry_i_4_n_0,
      O(3) => m_phase0_carry_n_4,
      O(2) => m_phase0_carry_n_5,
      O(1) => m_phase0_carry_n_6,
      O(0) => m_phase0_carry_n_7,
      S(3) => m_phase0_carry_i_5_n_0,
      S(2) => m_phase0_carry_i_6_n_0,
      S(1) => m_phase0_carry_i_7_n_0,
      S(0) => m_phase0_carry_i_8_n_0
    );
\m_phase0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => m_phase0_carry_n_0,
      CO(3) => \NLW_m_phase0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \m_phase0_carry__0_n_1\,
      CO(1) => \m_phase0_carry__0_n_2\,
      CO(0) => \m_phase0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => offset_reg(29 downto 27),
      O(3) => \m_phase0_carry__0_n_4\,
      O(2) => \m_phase0_carry__0_n_5\,
      O(1) => \m_phase0_carry__0_n_6\,
      O(0) => \m_phase0_carry__0_n_7\,
      S(3) => \m_phase0_carry__0_i_1_n_0\,
      S(2) => \m_phase0_carry__0_i_2_n_0\,
      S(1) => \m_phase0_carry__0_i_3_n_0\,
      S(0) => \m_phase0_carry__0_i_4_n_0\
    );
\m_phase0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_reg(30),
      I1 => offset_reg(31),
      O => \m_phase0_carry__0_i_1_n_0\
    );
\m_phase0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_reg(29),
      I1 => offset_reg(30),
      O => \m_phase0_carry__0_i_2_n_0\
    );
\m_phase0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_reg(28),
      I1 => offset_reg(29),
      O => \m_phase0_carry__0_i_3_n_0\
    );
\m_phase0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_reg(27),
      I1 => offset_reg(28),
      O => \m_phase0_carry__0_i_4_n_0\
    );
m_phase0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_phase(23),
      O => m_phase0_carry_i_1_n_0
    );
m_phase0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => offset_reg(25),
      I1 => offset_next1,
      O => m_phase0_carry_i_2_n_0
    );
m_phase0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => offset_reg(24),
      I1 => offset_next1,
      I2 => \offset_next1_carry__2_n_3\,
      O => m_phase0_carry_i_3_n_0
    );
m_phase0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => offset_reg(24),
      I1 => offset_next1,
      I2 => \offset_next1_carry__2_n_3\,
      O => m_phase0_carry_i_4_n_0
    );
m_phase0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_reg(26),
      I1 => offset_reg(27),
      O => m_phase0_carry_i_5_n_0
    );
m_phase0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(25),
      I2 => offset_reg(26),
      O => m_phase0_carry_i_6_n_0
    );
m_phase0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EF1"
    )
        port map (
      I0 => \offset_next1_carry__2_n_3\,
      I1 => offset_reg(24),
      I2 => offset_next1,
      I3 => offset_reg(25),
      O => m_phase0_carry_i_7_n_0
    );
m_phase0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => offset_reg(24),
      I1 => offset_next1,
      I2 => \offset_next1_carry__2_n_3\,
      O => m_phase0_carry_i_8_n_0
    );
\m_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(0),
      Q => \^m_phase\(0),
      R => rst
    );
\m_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(10),
      Q => \^m_phase\(10),
      R => rst
    );
\m_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(11),
      Q => \^m_phase\(11),
      R => rst
    );
\m_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(12),
      Q => \^m_phase\(12),
      R => rst
    );
\m_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(13),
      Q => \^m_phase\(13),
      R => rst
    );
\m_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(14),
      Q => \^m_phase\(14),
      R => rst
    );
\m_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(15),
      Q => \^m_phase\(15),
      R => rst
    );
\m_phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(16),
      Q => \^m_phase\(16),
      R => rst
    );
\m_phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(17),
      Q => \^m_phase\(17),
      R => rst
    );
\m_phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(18),
      Q => \^m_phase\(18),
      R => rst
    );
\m_phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(19),
      Q => \^m_phase\(19),
      R => rst
    );
\m_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(1),
      Q => \^m_phase\(1),
      R => rst
    );
\m_phase_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(20),
      Q => \^m_phase\(20),
      R => rst
    );
\m_phase_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(21),
      Q => \^m_phase\(21),
      R => rst
    );
\m_phase_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(22),
      Q => \^m_phase\(22),
      R => rst
    );
\m_phase_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(23),
      Q => \^m_phase\(23),
      R => rst
    );
\m_phase_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => m_phase0_carry_n_7,
      Q => \^m_phase\(24),
      R => rst
    );
\m_phase_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => m_phase0_carry_n_6,
      Q => \^m_phase\(25),
      R => rst
    );
\m_phase_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => m_phase0_carry_n_5,
      Q => \^m_phase\(26),
      R => rst
    );
\m_phase_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => m_phase0_carry_n_4,
      Q => \^m_phase\(27),
      R => rst
    );
\m_phase_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \m_phase0_carry__0_n_7\,
      Q => \^m_phase\(28),
      R => rst
    );
\m_phase_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \m_phase0_carry__0_n_6\,
      Q => \^m_phase\(29),
      R => rst
    );
\m_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(2),
      Q => \^m_phase\(2),
      R => rst
    );
\m_phase_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \m_phase0_carry__0_n_5\,
      Q => \^m_phase\(30),
      R => rst
    );
\m_phase_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \m_phase0_carry__0_n_4\,
      Q => \^m_phase\(31),
      R => rst
    );
\m_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(3),
      Q => \^m_phase\(3),
      R => rst
    );
\m_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(4),
      Q => \^m_phase\(4),
      R => rst
    );
\m_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(5),
      Q => \^m_phase\(5),
      R => rst
    );
\m_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(6),
      Q => \^m_phase\(6),
      R => rst
    );
\m_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(7),
      Q => \^m_phase\(7),
      R => rst
    );
\m_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(8),
      Q => \^m_phase\(8),
      R => rst
    );
\m_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => s_phase(9),
      Q => \^m_phase\(9),
      R => rst
    );
m_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_valid,
      I1 => rst,
      O => m_valid_i_1_n_0
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_valid_i_1_n_0,
      Q => m_valid,
      R => '0'
    );
\offset[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(26),
      O => \offset[24]_i_2_n_0\
    );
\offset[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(25),
      O => \offset[24]_i_3_n_0\
    );
\offset[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \offset_next1_carry__2_n_3\,
      I1 => offset_next1,
      I2 => offset_reg(24),
      O => \offset[24]_i_4_n_0\
    );
\offset[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(30),
      O => \offset[27]_i_2_n_0\
    );
\offset[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(29),
      O => \offset[27]_i_3_n_0\
    );
\offset[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(28),
      O => \offset[27]_i_4_n_0\
    );
\offset[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(27),
      O => \offset[27]_i_5_n_0\
    );
\offset[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_next1,
      I1 => offset_reg(31),
      O => \offset[31]_i_2_n_0\
    );
offset_next1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => offset_next1_carry_n_0,
      CO(2) => offset_next1_carry_n_1,
      CO(1) => offset_next1_carry_n_2,
      CO(0) => offset_next1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => offset_next1_carry_i_1_n_0,
      DI(1) => '0',
      DI(0) => offset_next1_carry_i_2_n_0,
      O(3 downto 0) => NLW_offset_next1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => offset_next1_carry_i_3_n_0,
      S(2) => offset_next1_carry_i_4_n_0,
      S(1) => offset_next1_carry_i_5_n_0,
      S(0) => offset_next1_carry_i_6_n_0
    );
\offset_next1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => offset_next1_carry_n_0,
      CO(3) => \offset_next1_carry__0_n_0\,
      CO(2) => \offset_next1_carry__0_n_1\,
      CO(1) => \offset_next1_carry__0_n_2\,
      CO(0) => \offset_next1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \offset_next1_carry__0_i_1_n_0\,
      DI(2) => \offset_next1_carry__0_i_2_n_0\,
      DI(1) => \offset_next1_carry__0_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_offset_next1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \offset_next1_carry__0_i_4_n_0\,
      S(2) => \offset_next1_carry__0_i_5_n_0\,
      S(1) => \offset_next1_carry__0_i_6_n_0\,
      S(0) => \offset_next1_carry__0_i_7_n_0\
    );
\offset_next1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(14),
      I1 => dphi(15),
      O => \offset_next1_carry__0_i_1_n_0\
    );
\offset_next1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dphi(12),
      I1 => dphi(13),
      O => \offset_next1_carry__0_i_2_n_0\
    );
\offset_next1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(11),
      O => \offset_next1_carry__0_i_3_n_0\
    );
\offset_next1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(14),
      I1 => dphi(15),
      O => \offset_next1_carry__0_i_4_n_0\
    );
\offset_next1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(12),
      I1 => dphi(13),
      O => \offset_next1_carry__0_i_5_n_0\
    );
\offset_next1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(11),
      I1 => dphi(10),
      O => \offset_next1_carry__0_i_6_n_0\
    );
\offset_next1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(8),
      I1 => dphi(9),
      O => \offset_next1_carry__0_i_7_n_0\
    );
\offset_next1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_next1_carry__0_n_0\,
      CO(3) => \offset_next1_carry__1_n_0\,
      CO(2) => \offset_next1_carry__1_n_1\,
      CO(1) => \offset_next1_carry__1_n_2\,
      CO(0) => \offset_next1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \offset_next1_carry__1_i_1_n_0\,
      DI(2) => \offset_next1_carry__1_i_2_n_0\,
      DI(1) => \offset_next1_carry__1_i_3_n_0\,
      DI(0) => \offset_next1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_offset_next1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \offset_next1_carry__1_i_5_n_0\,
      S(2) => \offset_next1_carry__1_i_6_n_0\,
      S(1) => \offset_next1_carry__1_i_7_n_0\,
      S(0) => \offset_next1_carry__1_i_8_n_0\
    );
\offset_next1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(23),
      O => \offset_next1_carry__1_i_1_n_0\
    );
\offset_next1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(20),
      I1 => dphi(21),
      O => \offset_next1_carry__1_i_2_n_0\
    );
\offset_next1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(19),
      O => \offset_next1_carry__1_i_3_n_0\
    );
\offset_next1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dphi(16),
      I1 => dphi(17),
      O => \offset_next1_carry__1_i_4_n_0\
    );
\offset_next1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(23),
      I1 => dphi(22),
      O => \offset_next1_carry__1_i_5_n_0\
    );
\offset_next1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(20),
      I1 => dphi(21),
      O => \offset_next1_carry__1_i_6_n_0\
    );
\offset_next1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(19),
      I1 => dphi(18),
      O => \offset_next1_carry__1_i_7_n_0\
    );
\offset_next1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(16),
      I1 => dphi(17),
      O => \offset_next1_carry__1_i_8_n_0\
    );
\offset_next1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_next1_carry__1_n_0\,
      CO(3 downto 1) => \NLW_offset_next1_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \offset_next1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_offset_next1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => dphi(24)
    );
\offset_next1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i__carry__2_i_1_n_3\,
      O => dphi(24)
    );
offset_next1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(4),
      I1 => dphi(5),
      O => offset_next1_carry_i_1_n_0
    );
offset_next1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dphi(0),
      I1 => dphi(1),
      O => offset_next1_carry_i_2_n_0
    );
offset_next1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(6),
      I1 => dphi(7),
      O => offset_next1_carry_i_3_n_0
    );
offset_next1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dphi(4),
      I1 => dphi(5),
      O => offset_next1_carry_i_4_n_0
    );
offset_next1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dphi(2),
      I1 => dphi(3),
      O => offset_next1_carry_i_5_n_0
    );
offset_next1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dphi(0),
      I1 => dphi(1),
      O => offset_next1_carry_i_6_n_0
    );
\offset_next1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \offset_next1_inferred__0/i__carry_n_0\,
      CO(2) => \offset_next1_inferred__0/i__carry_n_1\,
      CO(1) => \offset_next1_inferred__0/i__carry_n_2\,
      CO(0) => \offset_next1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => '0',
      DI(0) => dphi(1),
      O(3 downto 0) => \NLW_offset_next1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\offset_next1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_next1_inferred__0/i__carry_n_0\,
      CO(3) => \offset_next1_inferred__0/i__carry__0_n_0\,
      CO(2) => \offset_next1_inferred__0/i__carry__0_n_1\,
      CO(1) => \offset_next1_inferred__0/i__carry__0_n_2\,
      CO(0) => \offset_next1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => dphi(11),
      DI(0) => '0',
      O(3 downto 0) => \NLW_offset_next1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_3_n_0\,
      S(2) => \i__carry__0_i_4_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\offset_next1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_next1_inferred__0/i__carry__0_n_0\,
      CO(3) => \offset_next1_inferred__0/i__carry__1_n_0\,
      CO(2) => \offset_next1_inferred__0/i__carry__1_n_1\,
      CO(1) => \offset_next1_inferred__0/i__carry__1_n_2\,
      CO(0) => \offset_next1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => dphi(23),
      DI(2) => \i__carry__1_i_1_n_0\,
      DI(1) => dphi(19),
      DI(0) => \i__carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_offset_next1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_3_n_0\,
      S(2) => \i__carry__1_i_4_n_0\,
      S(1) => \i__carry__1_i_5_n_0\,
      S(0) => \i__carry__1_i_6_n_0\
    );
\offset_next1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_next1_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW_offset_next1_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => offset_next1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_offset_next1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1_n_3\
    );
\offset_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[24]_i_1_n_6\,
      Q => offset_reg(24),
      R => rst
    );
\offset_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \offset_reg[24]_i_1_n_0\,
      CO(2) => \offset_reg[24]_i_1_n_1\,
      CO(1) => \offset_reg[24]_i_1_n_2\,
      CO(0) => \offset_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => offset_next1,
      DI(2) => offset_next1,
      DI(1) => offset_reg(24),
      DI(0) => '0',
      O(3) => \offset_reg[24]_i_1_n_4\,
      O(2) => \offset_reg[24]_i_1_n_5\,
      O(1) => \offset_reg[24]_i_1_n_6\,
      O(0) => \NLW_offset_reg[24]_i_1_O_UNCONNECTED\(0),
      S(3) => \offset[24]_i_2_n_0\,
      S(2) => \offset[24]_i_3_n_0\,
      S(1) => \offset[24]_i_4_n_0\,
      S(0) => '0'
    );
\offset_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[24]_i_1_n_5\,
      Q => offset_reg(25),
      R => rst
    );
\offset_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[24]_i_1_n_4\,
      Q => offset_reg(26),
      R => rst
    );
\offset_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[27]_i_1_n_7\,
      Q => offset_reg(27),
      R => rst
    );
\offset_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_reg[24]_i_1_n_0\,
      CO(3) => \offset_reg[27]_i_1_n_0\,
      CO(2) => \offset_reg[27]_i_1_n_1\,
      CO(1) => \offset_reg[27]_i_1_n_2\,
      CO(0) => \offset_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => offset_next1,
      DI(2) => offset_next1,
      DI(1) => offset_next1,
      DI(0) => offset_next1,
      O(3) => \offset_reg[27]_i_1_n_4\,
      O(2) => \offset_reg[27]_i_1_n_5\,
      O(1) => \offset_reg[27]_i_1_n_6\,
      O(0) => \offset_reg[27]_i_1_n_7\,
      S(3) => \offset[27]_i_2_n_0\,
      S(2) => \offset[27]_i_3_n_0\,
      S(1) => \offset[27]_i_4_n_0\,
      S(0) => \offset[27]_i_5_n_0\
    );
\offset_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[27]_i_1_n_6\,
      Q => offset_reg(28),
      R => rst
    );
\offset_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[27]_i_1_n_5\,
      Q => offset_reg(29),
      R => rst
    );
\offset_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[27]_i_1_n_4\,
      Q => offset_reg(30),
      R => rst
    );
\offset_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_valid,
      D => \offset_reg[31]_i_1_n_7\,
      Q => offset_reg(31),
      R => rst
    );
\offset_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \offset_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_offset_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_offset_reg[31]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \offset_reg[31]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \offset[31]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_phase_unwrap_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s_valid : in STD_LOGIC;
    s_phase : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_valid : out STD_LOGIC;
    m_phase : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_phase_unwrap_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_phase_unwrap_0_0 : entity is "design_1_phase_unwrap_0_0,phase_unwrap,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_phase_unwrap_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_phase_unwrap_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_phase_unwrap_0_0 : entity is "phase_unwrap,Vivado 2024.2";
end design_1_phase_unwrap_0_0;

architecture STRUCTURE of design_1_phase_unwrap_0_0 is
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
inst: entity work.design_1_phase_unwrap_0_0_phase_unwrap
     port map (
      clk => clk,
      m_phase(31 downto 0) => m_phase(31 downto 0),
      m_valid => m_valid,
      rst => rst,
      s_phase(23 downto 0) => s_phase(23 downto 0),
      s_valid => s_valid
    );
end STRUCTURE;
