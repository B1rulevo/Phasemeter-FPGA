-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jul 16 13:59:16 2026
-- Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA/Phasemeter/Vivado/project_1.srcs/sources_1/bd/design_1/ip/design_1_axis_capture_control_0_0/design_1_axis_capture_control_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_capture_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_capture_control_0_0_axis_capture_controller is
  port (
    capture_done : out STD_LOGIC;
    capture_enable : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    trigger_async : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_capture_control_0_0_axis_capture_controller : entity is "axis_capture_controller";
end design_1_axis_capture_control_0_0_axis_capture_controller;

architecture STRUCTURE of design_1_axis_capture_control_0_0_axis_capture_controller is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal capture_done_i_1_n_0 : STD_LOGIC;
  signal capture_done_i_2_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal m_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m_last_reg : STD_LOGIC;
  signal m_last_reg_i_1_n_0 : STD_LOGIC;
  signal m_last_reg_i_2_n_0 : STD_LOGIC;
  signal m_valid_reg : STD_LOGIC;
  signal m_valid_reg_i_1_n_0 : STD_LOGIC;
  signal m_valid_reg_reg_n_0 : STD_LOGIC;
  signal remaining : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \remaining0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__0_n_0\ : STD_LOGIC;
  signal \remaining0_carry__0_n_1\ : STD_LOGIC;
  signal \remaining0_carry__0_n_2\ : STD_LOGIC;
  signal \remaining0_carry__0_n_3\ : STD_LOGIC;
  signal \remaining0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__1_n_1\ : STD_LOGIC;
  signal \remaining0_carry__1_n_2\ : STD_LOGIC;
  signal \remaining0_carry__1_n_3\ : STD_LOGIC;
  signal \remaining0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__2_n_1\ : STD_LOGIC;
  signal \remaining0_carry__2_n_2\ : STD_LOGIC;
  signal \remaining0_carry__2_n_3\ : STD_LOGIC;
  signal \remaining0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__3_n_1\ : STD_LOGIC;
  signal \remaining0_carry__3_n_2\ : STD_LOGIC;
  signal \remaining0_carry__3_n_3\ : STD_LOGIC;
  signal \remaining0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__4_n_1\ : STD_LOGIC;
  signal \remaining0_carry__4_n_2\ : STD_LOGIC;
  signal \remaining0_carry__4_n_3\ : STD_LOGIC;
  signal \remaining0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \remaining0_carry__5_n_0\ : STD_LOGIC;
  signal \remaining0_carry__5_n_1\ : STD_LOGIC;
  signal \remaining0_carry__5_n_2\ : STD_LOGIC;
  signal \remaining0_carry__5_n_3\ : STD_LOGIC;
  signal \remaining0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \remaining0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \remaining0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \remaining0_carry__6_n_2\ : STD_LOGIC;
  signal \remaining0_carry__6_n_3\ : STD_LOGIC;
  signal remaining0_carry_i_1_n_0 : STD_LOGIC;
  signal remaining0_carry_i_2_n_0 : STD_LOGIC;
  signal remaining0_carry_i_3_n_0 : STD_LOGIC;
  signal remaining0_carry_i_4_n_0 : STD_LOGIC;
  signal remaining0_carry_n_0 : STD_LOGIC;
  signal remaining0_carry_n_1 : STD_LOGIC;
  signal remaining0_carry_n_2 : STD_LOGIC;
  signal remaining0_carry_n_3 : STD_LOGIC;
  signal \remaining[10]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[11]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[12]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[14]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[19]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[20]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[21]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[22]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[23]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[24]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[25]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[26]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[27]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[28]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[29]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[30]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_10_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_2_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_3_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_4_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_5_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_6_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_7_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_8_n_0\ : STD_LOGIC;
  signal \remaining[31]_i_9_n_0\ : STD_LOGIC;
  signal \remaining[5]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[6]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[7]_i_1_n_0\ : STD_LOGIC;
  signal \remaining[9]_i_1_n_0\ : STD_LOGIC;
  signal \remaining_reg_n_0_[0]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[10]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[11]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[12]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[13]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[14]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[15]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[16]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[17]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[18]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[19]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[1]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[20]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[21]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[22]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[23]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[24]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[25]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[26]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[27]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[28]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[29]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[2]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[30]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[31]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[3]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[4]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[5]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[6]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[7]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[8]\ : STD_LOGIC;
  signal \remaining_reg_n_0_[9]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__0\ : STD_LOGIC;
  signal trig_sync0 : STD_LOGIC;
  signal trig_sync1 : STD_LOGIC;
  signal \NLW_remaining0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_remaining0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_IDLE:00,ST_ARMED:01,ST_CAPTURE:10,ST_DONE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_IDLE:00,ST_ARMED:01,ST_CAPTURE:10,ST_DONE:11";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of capture_done_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_last_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_last_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_valid_reg_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of remaining0_carry : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \remaining0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair2";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000055FFFF0030"
    )
        port map (
      I0 => \state1__0\,
      I1 => trig_sync1,
      I2 => trig_sync0,
      I3 => state(1),
      I4 => \FSM_sequential_state[1]_i_2_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C2C"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => \state1__0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => \state1__0\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_valid_reg_reg_n_0,
      I2 => state(0),
      I3 => state(1),
      O => \state1__0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[29]\,
      I1 => \remaining_reg_n_0_[28]\,
      I2 => \remaining_reg_n_0_[30]\,
      I3 => \remaining_reg_n_0_[31]\,
      I4 => \remaining[31]_i_8_n_0\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \remaining[31]_i_9_n_0\,
      I1 => \remaining_reg_n_0_[1]\,
      I2 => \remaining_reg_n_0_[0]\,
      I3 => \remaining_reg_n_0_[3]\,
      I4 => \remaining_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => capture_done_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => capture_done_i_1_n_0
    );
busy_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => capture_enable,
      R => capture_done_i_1_n_0
    );
capture_done_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => capture_done_i_1_n_0
    );
capture_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => capture_done_i_2_n_0
    );
capture_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => capture_done_i_2_n_0,
      Q => capture_done,
      R => capture_done_i_1_n_0
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => m_data_reg(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_last_reg,
      Q => m_axis_tlast,
      R => capture_done_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_reg_reg_n_0,
      Q => m_axis_tvalid,
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(0),
      Q => m_data_reg(0),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(10),
      Q => m_data_reg(10),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(11),
      Q => m_data_reg(11),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(12),
      Q => m_data_reg(12),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(13),
      Q => m_data_reg(13),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(14),
      Q => m_data_reg(14),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(15),
      Q => m_data_reg(15),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(16),
      Q => m_data_reg(16),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(17),
      Q => m_data_reg(17),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(18),
      Q => m_data_reg(18),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(19),
      Q => m_data_reg(19),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(1),
      Q => m_data_reg(1),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(20),
      Q => m_data_reg(20),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(21),
      Q => m_data_reg(21),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(22),
      Q => m_data_reg(22),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(23),
      Q => m_data_reg(23),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(24),
      Q => m_data_reg(24),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(25),
      Q => m_data_reg(25),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(26),
      Q => m_data_reg(26),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(27),
      Q => m_data_reg(27),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(28),
      Q => m_data_reg(28),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(29),
      Q => m_data_reg(29),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(2),
      Q => m_data_reg(2),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(30),
      Q => m_data_reg(30),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(31),
      Q => m_data_reg(31),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(3),
      Q => m_data_reg(3),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(4),
      Q => m_data_reg(4),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(5),
      Q => m_data_reg(5),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(6),
      Q => m_data_reg(6),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(7),
      Q => m_data_reg(7),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(8),
      Q => m_data_reg(8),
      R => capture_done_i_1_n_0
    );
\m_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => s_axis_tdata(9),
      Q => m_data_reg(9),
      R => capture_done_i_1_n_0
    );
m_last_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(0),
      I2 => m_last_reg_i_2_n_0,
      I3 => m_last_reg,
      O => m_last_reg_i_1_n_0
    );
m_last_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => m_axis_tready,
      I1 => m_valid_reg_reg_n_0,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axis_tvalid,
      O => m_last_reg_i_2_n_0
    );
m_last_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_last_reg_i_1_n_0,
      Q => m_last_reg,
      R => capture_done_i_1_n_0
    );
m_valid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47744444"
    )
        port map (
      I0 => m_axis_tready,
      I1 => m_valid_reg_reg_n_0,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axis_tvalid,
      O => m_valid_reg_i_1_n_0
    );
m_valid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_reg_i_1_n_0,
      Q => m_valid_reg_reg_n_0,
      R => capture_done_i_1_n_0
    );
remaining0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => remaining0_carry_n_0,
      CO(2) => remaining0_carry_n_1,
      CO(1) => remaining0_carry_n_2,
      CO(0) => remaining0_carry_n_3,
      CYINIT => \remaining_reg_n_0_[0]\,
      DI(3) => \remaining_reg_n_0_[4]\,
      DI(2) => \remaining_reg_n_0_[3]\,
      DI(1) => \remaining_reg_n_0_[2]\,
      DI(0) => \remaining_reg_n_0_[1]\,
      O(3 downto 0) => data0(4 downto 1),
      S(3) => remaining0_carry_i_1_n_0,
      S(2) => remaining0_carry_i_2_n_0,
      S(1) => remaining0_carry_i_3_n_0,
      S(0) => remaining0_carry_i_4_n_0
    );
\remaining0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => remaining0_carry_n_0,
      CO(3) => \remaining0_carry__0_n_0\,
      CO(2) => \remaining0_carry__0_n_1\,
      CO(1) => \remaining0_carry__0_n_2\,
      CO(0) => \remaining0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \remaining_reg_n_0_[8]\,
      DI(2) => \remaining_reg_n_0_[7]\,
      DI(1) => \remaining_reg_n_0_[6]\,
      DI(0) => \remaining_reg_n_0_[5]\,
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \remaining0_carry__0_i_1_n_0\,
      S(2) => \remaining0_carry__0_i_2_n_0\,
      S(1) => \remaining0_carry__0_i_3_n_0\,
      S(0) => \remaining0_carry__0_i_4_n_0\
    );
\remaining0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[8]\,
      O => \remaining0_carry__0_i_1_n_0\
    );
\remaining0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[7]\,
      O => \remaining0_carry__0_i_2_n_0\
    );
\remaining0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[6]\,
      O => \remaining0_carry__0_i_3_n_0\
    );
\remaining0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[5]\,
      O => \remaining0_carry__0_i_4_n_0\
    );
\remaining0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \remaining0_carry__0_n_0\,
      CO(3) => \remaining0_carry__1_n_0\,
      CO(2) => \remaining0_carry__1_n_1\,
      CO(1) => \remaining0_carry__1_n_2\,
      CO(0) => \remaining0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \remaining_reg_n_0_[12]\,
      DI(2) => \remaining_reg_n_0_[11]\,
      DI(1) => \remaining_reg_n_0_[10]\,
      DI(0) => \remaining_reg_n_0_[9]\,
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \remaining0_carry__1_i_1_n_0\,
      S(2) => \remaining0_carry__1_i_2_n_0\,
      S(1) => \remaining0_carry__1_i_3_n_0\,
      S(0) => \remaining0_carry__1_i_4_n_0\
    );
\remaining0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[12]\,
      O => \remaining0_carry__1_i_1_n_0\
    );
\remaining0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[11]\,
      O => \remaining0_carry__1_i_2_n_0\
    );
\remaining0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[10]\,
      O => \remaining0_carry__1_i_3_n_0\
    );
\remaining0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[9]\,
      O => \remaining0_carry__1_i_4_n_0\
    );
\remaining0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \remaining0_carry__1_n_0\,
      CO(3) => \remaining0_carry__2_n_0\,
      CO(2) => \remaining0_carry__2_n_1\,
      CO(1) => \remaining0_carry__2_n_2\,
      CO(0) => \remaining0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \remaining_reg_n_0_[16]\,
      DI(2) => \remaining_reg_n_0_[15]\,
      DI(1) => \remaining_reg_n_0_[14]\,
      DI(0) => \remaining_reg_n_0_[13]\,
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \remaining0_carry__2_i_1_n_0\,
      S(2) => \remaining0_carry__2_i_2_n_0\,
      S(1) => \remaining0_carry__2_i_3_n_0\,
      S(0) => \remaining0_carry__2_i_4_n_0\
    );
\remaining0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[16]\,
      O => \remaining0_carry__2_i_1_n_0\
    );
\remaining0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[15]\,
      O => \remaining0_carry__2_i_2_n_0\
    );
\remaining0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[14]\,
      O => \remaining0_carry__2_i_3_n_0\
    );
\remaining0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[13]\,
      O => \remaining0_carry__2_i_4_n_0\
    );
\remaining0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \remaining0_carry__2_n_0\,
      CO(3) => \remaining0_carry__3_n_0\,
      CO(2) => \remaining0_carry__3_n_1\,
      CO(1) => \remaining0_carry__3_n_2\,
      CO(0) => \remaining0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \remaining_reg_n_0_[20]\,
      DI(2) => \remaining_reg_n_0_[19]\,
      DI(1) => \remaining_reg_n_0_[18]\,
      DI(0) => \remaining_reg_n_0_[17]\,
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \remaining0_carry__3_i_1_n_0\,
      S(2) => \remaining0_carry__3_i_2_n_0\,
      S(1) => \remaining0_carry__3_i_3_n_0\,
      S(0) => \remaining0_carry__3_i_4_n_0\
    );
\remaining0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[20]\,
      O => \remaining0_carry__3_i_1_n_0\
    );
\remaining0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[19]\,
      O => \remaining0_carry__3_i_2_n_0\
    );
\remaining0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[18]\,
      O => \remaining0_carry__3_i_3_n_0\
    );
\remaining0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[17]\,
      O => \remaining0_carry__3_i_4_n_0\
    );
\remaining0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \remaining0_carry__3_n_0\,
      CO(3) => \remaining0_carry__4_n_0\,
      CO(2) => \remaining0_carry__4_n_1\,
      CO(1) => \remaining0_carry__4_n_2\,
      CO(0) => \remaining0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \remaining_reg_n_0_[24]\,
      DI(2) => \remaining_reg_n_0_[23]\,
      DI(1) => \remaining_reg_n_0_[22]\,
      DI(0) => \remaining_reg_n_0_[21]\,
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \remaining0_carry__4_i_1_n_0\,
      S(2) => \remaining0_carry__4_i_2_n_0\,
      S(1) => \remaining0_carry__4_i_3_n_0\,
      S(0) => \remaining0_carry__4_i_4_n_0\
    );
\remaining0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[24]\,
      O => \remaining0_carry__4_i_1_n_0\
    );
\remaining0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[23]\,
      O => \remaining0_carry__4_i_2_n_0\
    );
\remaining0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[22]\,
      O => \remaining0_carry__4_i_3_n_0\
    );
\remaining0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[21]\,
      O => \remaining0_carry__4_i_4_n_0\
    );
\remaining0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \remaining0_carry__4_n_0\,
      CO(3) => \remaining0_carry__5_n_0\,
      CO(2) => \remaining0_carry__5_n_1\,
      CO(1) => \remaining0_carry__5_n_2\,
      CO(0) => \remaining0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \remaining_reg_n_0_[28]\,
      DI(2) => \remaining_reg_n_0_[27]\,
      DI(1) => \remaining_reg_n_0_[26]\,
      DI(0) => \remaining_reg_n_0_[25]\,
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \remaining0_carry__5_i_1_n_0\,
      S(2) => \remaining0_carry__5_i_2_n_0\,
      S(1) => \remaining0_carry__5_i_3_n_0\,
      S(0) => \remaining0_carry__5_i_4_n_0\
    );
\remaining0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[28]\,
      O => \remaining0_carry__5_i_1_n_0\
    );
\remaining0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[27]\,
      O => \remaining0_carry__5_i_2_n_0\
    );
\remaining0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[26]\,
      O => \remaining0_carry__5_i_3_n_0\
    );
\remaining0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[25]\,
      O => \remaining0_carry__5_i_4_n_0\
    );
\remaining0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \remaining0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_remaining0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \remaining0_carry__6_n_2\,
      CO(0) => \remaining0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \remaining_reg_n_0_[30]\,
      DI(0) => \remaining_reg_n_0_[29]\,
      O(3) => \NLW_remaining0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \remaining0_carry__6_i_1_n_0\,
      S(1) => \remaining0_carry__6_i_2_n_0\,
      S(0) => \remaining0_carry__6_i_3_n_0\
    );
\remaining0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[31]\,
      O => \remaining0_carry__6_i_1_n_0\
    );
\remaining0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[30]\,
      O => \remaining0_carry__6_i_2_n_0\
    );
\remaining0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[29]\,
      O => \remaining0_carry__6_i_3_n_0\
    );
remaining0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[4]\,
      O => remaining0_carry_i_1_n_0
    );
remaining0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[3]\,
      O => remaining0_carry_i_2_n_0
    );
remaining0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[2]\,
      O => remaining0_carry_i_3_n_0
    );
remaining0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \remaining_reg_n_0_[1]\,
      O => remaining0_carry_i_4_n_0
    );
\remaining[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554FFFFFFFF"
    )
        port map (
      I0 => \remaining_reg_n_0_[0]\,
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => state(1),
      O => remaining(0)
    );
\remaining[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(10),
      O => \remaining[10]_i_1_n_0\
    );
\remaining[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(11),
      O => \remaining[11]_i_1_n_0\
    );
\remaining[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(12),
      O => \remaining[12]_i_1_n_0\
    );
\remaining[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(13),
      I5 => state(1),
      O => remaining(13)
    );
\remaining[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(14),
      O => \remaining[14]_i_1_n_0\
    );
\remaining[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(15),
      I5 => state(1),
      O => remaining(15)
    );
\remaining[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(16),
      I5 => state(1),
      O => remaining(16)
    );
\remaining[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(17),
      I5 => state(1),
      O => remaining(17)
    );
\remaining[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(18),
      I5 => state(1),
      O => remaining(18)
    );
\remaining[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(19),
      O => \remaining[19]_i_1_n_0\
    );
\remaining[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(1),
      I5 => state(1),
      O => remaining(1)
    );
\remaining[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(20),
      O => \remaining[20]_i_1_n_0\
    );
\remaining[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(21),
      O => \remaining[21]_i_1_n_0\
    );
\remaining[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(22),
      O => \remaining[22]_i_1_n_0\
    );
\remaining[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(23),
      O => \remaining[23]_i_1_n_0\
    );
\remaining[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(24),
      O => \remaining[24]_i_1_n_0\
    );
\remaining[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(25),
      O => \remaining[25]_i_1_n_0\
    );
\remaining[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(26),
      O => \remaining[26]_i_1_n_0\
    );
\remaining[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(27),
      O => \remaining[27]_i_1_n_0\
    );
\remaining[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(28),
      O => \remaining[28]_i_1_n_0\
    );
\remaining[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(29),
      O => \remaining[29]_i_1_n_0\
    );
\remaining[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(2),
      I5 => state(1),
      O => remaining(2)
    );
\remaining[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(30),
      O => \remaining[30]_i_1_n_0\
    );
\remaining[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => m_valid_reg_reg_n_0,
      I1 => s_axis_tvalid,
      I2 => state(1),
      I3 => state(0),
      O => m_valid_reg
    );
\remaining[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[10]\,
      I1 => \remaining_reg_n_0_[11]\,
      I2 => \remaining_reg_n_0_[8]\,
      I3 => \remaining_reg_n_0_[9]\,
      O => \remaining[31]_i_10_n_0\
    );
\remaining[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(31),
      O => \remaining[31]_i_2_n_0\
    );
\remaining[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[21]\,
      I1 => \remaining_reg_n_0_[20]\,
      I2 => \remaining_reg_n_0_[23]\,
      I3 => \remaining_reg_n_0_[22]\,
      I4 => \remaining[31]_i_7_n_0\,
      O => \remaining[31]_i_3_n_0\
    );
\remaining[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \remaining_reg_n_0_[29]\,
      I1 => \remaining_reg_n_0_[28]\,
      I2 => \remaining_reg_n_0_[30]\,
      I3 => \remaining_reg_n_0_[0]\,
      I4 => \remaining[31]_i_8_n_0\,
      O => \remaining[31]_i_4_n_0\
    );
\remaining[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \remaining[31]_i_9_n_0\,
      I1 => \remaining_reg_n_0_[1]\,
      I2 => \remaining_reg_n_0_[31]\,
      I3 => \remaining_reg_n_0_[3]\,
      I4 => \remaining_reg_n_0_[2]\,
      O => \remaining[31]_i_5_n_0\
    );
\remaining[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[13]\,
      I1 => \remaining_reg_n_0_[12]\,
      I2 => \remaining_reg_n_0_[15]\,
      I3 => \remaining_reg_n_0_[14]\,
      I4 => \remaining[31]_i_10_n_0\,
      O => \remaining[31]_i_6_n_0\
    );
\remaining[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[18]\,
      I1 => \remaining_reg_n_0_[19]\,
      I2 => \remaining_reg_n_0_[16]\,
      I3 => \remaining_reg_n_0_[17]\,
      O => \remaining[31]_i_7_n_0\
    );
\remaining[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[26]\,
      I1 => \remaining_reg_n_0_[27]\,
      I2 => \remaining_reg_n_0_[24]\,
      I3 => \remaining_reg_n_0_[25]\,
      O => \remaining[31]_i_8_n_0\
    );
\remaining[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \remaining_reg_n_0_[6]\,
      I1 => \remaining_reg_n_0_[7]\,
      I2 => \remaining_reg_n_0_[4]\,
      I3 => \remaining_reg_n_0_[5]\,
      O => \remaining[31]_i_9_n_0\
    );
\remaining[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(3),
      I5 => state(1),
      O => remaining(3)
    );
\remaining[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(4),
      I5 => state(1),
      O => remaining(4)
    );
\remaining[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(5),
      O => \remaining[5]_i_1_n_0\
    );
\remaining[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(6),
      O => \remaining[6]_i_1_n_0\
    );
\remaining[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(7),
      O => \remaining[7]_i_1_n_0\
    );
\remaining[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => \remaining[31]_i_3_n_0\,
      I1 => \remaining[31]_i_4_n_0\,
      I2 => \remaining[31]_i_5_n_0\,
      I3 => \remaining[31]_i_6_n_0\,
      I4 => data0(8),
      I5 => state(1),
      O => remaining(8)
    );
\remaining[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => state(1),
      I1 => \remaining[31]_i_3_n_0\,
      I2 => \remaining[31]_i_4_n_0\,
      I3 => \remaining[31]_i_5_n_0\,
      I4 => \remaining[31]_i_6_n_0\,
      I5 => data0(9),
      O => \remaining[9]_i_1_n_0\
    );
\remaining_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(0),
      Q => \remaining_reg_n_0_[0]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[10]_i_1_n_0\,
      Q => \remaining_reg_n_0_[10]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[11]_i_1_n_0\,
      Q => \remaining_reg_n_0_[11]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[12]_i_1_n_0\,
      Q => \remaining_reg_n_0_[12]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(13),
      Q => \remaining_reg_n_0_[13]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[14]_i_1_n_0\,
      Q => \remaining_reg_n_0_[14]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(15),
      Q => \remaining_reg_n_0_[15]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(16),
      Q => \remaining_reg_n_0_[16]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(17),
      Q => \remaining_reg_n_0_[17]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(18),
      Q => \remaining_reg_n_0_[18]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[19]_i_1_n_0\,
      Q => \remaining_reg_n_0_[19]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(1),
      Q => \remaining_reg_n_0_[1]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[20]_i_1_n_0\,
      Q => \remaining_reg_n_0_[20]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[21]_i_1_n_0\,
      Q => \remaining_reg_n_0_[21]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[22]_i_1_n_0\,
      Q => \remaining_reg_n_0_[22]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[23]_i_1_n_0\,
      Q => \remaining_reg_n_0_[23]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[24]_i_1_n_0\,
      Q => \remaining_reg_n_0_[24]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[25]_i_1_n_0\,
      Q => \remaining_reg_n_0_[25]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[26]_i_1_n_0\,
      Q => \remaining_reg_n_0_[26]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[27]_i_1_n_0\,
      Q => \remaining_reg_n_0_[27]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[28]_i_1_n_0\,
      Q => \remaining_reg_n_0_[28]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[29]_i_1_n_0\,
      Q => \remaining_reg_n_0_[29]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(2),
      Q => \remaining_reg_n_0_[2]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[30]_i_1_n_0\,
      Q => \remaining_reg_n_0_[30]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[31]_i_2_n_0\,
      Q => \remaining_reg_n_0_[31]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(3),
      Q => \remaining_reg_n_0_[3]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(4),
      Q => \remaining_reg_n_0_[4]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[5]_i_1_n_0\,
      Q => \remaining_reg_n_0_[5]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[6]_i_1_n_0\,
      Q => \remaining_reg_n_0_[6]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[7]_i_1_n_0\,
      Q => \remaining_reg_n_0_[7]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => remaining(8),
      Q => \remaining_reg_n_0_[8]\,
      R => capture_done_i_1_n_0
    );
\remaining_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_reg,
      D => \remaining[9]_i_1_n_0\,
      Q => \remaining_reg_n_0_[9]\,
      R => capture_done_i_1_n_0
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => m_valid_reg_reg_n_0,
      O => s_axis_tready
    );
trig_sync0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => trigger_async,
      Q => trig_sync0,
      R => capture_done_i_1_n_0
    );
trig_sync1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => trig_sync0,
      Q => trig_sync1,
      R => capture_done_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_capture_control_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    trigger_async : in STD_LOGIC;
    capture_done : out STD_LOGIC;
    busy : out STD_LOGIC;
    capture_enable : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_capture_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_capture_control_0_0 : entity is "design_1_axis_capture_control_0_0,axis_capture_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_capture_control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axis_capture_control_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_capture_control_0_0 : entity is "axis_capture_controller,Vivado 2024.2";
end design_1_axis_capture_control_0_0;

architecture STRUCTURE of design_1_axis_capture_control_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^capture_enable\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency data_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chan_out {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan_out} enabled {attribs {resolve_type generated dependency enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chan_out_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_chan_sync {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan_sync} enabled {attribs {resolve_type generated dependency enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chan_sync_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chan_sync_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
begin
  busy <= \^capture_enable\;
  capture_enable <= \^capture_enable\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_axis_capture_control_0_0_axis_capture_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      capture_done => capture_done,
      capture_enable => \^capture_enable\,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      trigger_async => trigger_async
    );
end STRUCTURE;
