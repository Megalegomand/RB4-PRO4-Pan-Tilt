-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon May 10 14:09:22 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_spi_0_0/assembly_spi_0_0_sim_netlist.vhdl
-- Design      : assembly_spi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_spi_0_0_spi is
  port (
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sdo : out STD_LOGIC;
    ss : in STD_LOGIC;
    sclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_spi_0_0_spi : entity is "spi";
end assembly_spi_0_0_spi;

architecture STRUCTURE of assembly_spi_0_0_spi is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_out_t : STD_LOGIC;
  signal \data_out_t[15]_i_2_n_0\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_0 : STD_LOGIC;
  signal \reg_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9]\ : STD_LOGIC;
  signal sdo_t_i_1_n_0 : STD_LOGIC;
  signal sdo_t_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s_rst:00,s_low:11,s_high:10,s_wait:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s_rst:00,s_low:11,s_high:10,s_wait:01";
  attribute SOFT_HLUTNM of \data_out_t[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_cnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sdo_INST_0 : label is "soft_lutpair3";
begin
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004777"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => current_state(0),
      I2 => sclk,
      I3 => current_state(1),
      I4 => ss,
      O => \next_state__0\(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => sclk,
      I1 => \reg_cnt_reg_n_0_[2]\,
      I2 => \reg_cnt_reg_n_0_[3]\,
      I3 => \reg_cnt_reg_n_0_[0]\,
      I4 => \reg_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080E0C"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => ss,
      I3 => sclk,
      I4 => \data_out_t[15]_i_2_n_0\,
      O => \next_state__0\(1)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \next_state__0\(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \next_state__0\(1),
      Q => current_state(1)
    );
\data_out_t[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08040000"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => ss,
      I3 => sclk,
      I4 => \data_out_t[15]_i_2_n_0\,
      O => data_out_t
    );
\data_out_t[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_cnt_reg_n_0_[1]\,
      I1 => \reg_cnt_reg_n_0_[0]\,
      I2 => \reg_cnt_reg_n_0_[3]\,
      I3 => \reg_cnt_reg_n_0_[2]\,
      O => \data_out_t[15]_i_2_n_0\
    );
\data_out_t_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => sdi,
      Q => data_out(0)
    );
\data_out_t_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[9]\,
      Q => data_out(10)
    );
\data_out_t_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[10]\,
      Q => data_out(11)
    );
\data_out_t_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[11]\,
      Q => data_out(12)
    );
\data_out_t_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[12]\,
      Q => data_out(13)
    );
\data_out_t_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[13]\,
      Q => data_out(14)
    );
\data_out_t_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[14]\,
      Q => data_out(15)
    );
\data_out_t_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[0]\,
      Q => data_out(1)
    );
\data_out_t_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[1]\,
      Q => data_out(2)
    );
\data_out_t_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[2]\,
      Q => data_out(3)
    );
\data_out_t_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[3]\,
      Q => data_out(4)
    );
\data_out_t_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[4]\,
      Q => data_out(5)
    );
\data_out_t_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[5]\,
      Q => data_out(6)
    );
\data_out_t_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[6]\,
      Q => data_out(7)
    );
\data_out_t_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[7]\,
      Q => data_out(8)
    );
\data_out_t_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => \reg_reg_n_0_[8]\,
      Q => data_out(9)
    );
\reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdi,
      I1 => data_in(0),
      I2 => current_state(0),
      O => reg(0)
    );
\reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[9]\,
      I1 => data_in(10),
      I2 => current_state(0),
      O => reg(10)
    );
\reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[10]\,
      I1 => data_in(11),
      I2 => current_state(0),
      O => reg(11)
    );
\reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[11]\,
      I1 => data_in(12),
      I2 => current_state(0),
      O => reg(12)
    );
\reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[12]\,
      I1 => data_in(13),
      I2 => current_state(0),
      O => reg(13)
    );
\reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[13]\,
      I1 => data_in(14),
      I2 => current_state(0),
      O => reg(14)
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00201131"
    )
        port map (
      I0 => current_state(0),
      I1 => ss,
      I2 => sclk,
      I3 => \data_out_t[15]_i_2_n_0\,
      I4 => current_state(1),
      O => reg_0
    );
\reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[14]\,
      I1 => data_in(15),
      I2 => current_state(0),
      O => reg(15)
    );
\reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[0]\,
      I1 => data_in(1),
      I2 => current_state(0),
      O => reg(1)
    );
\reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[1]\,
      I1 => data_in(2),
      I2 => current_state(0),
      O => reg(2)
    );
\reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[2]\,
      I1 => data_in(3),
      I2 => current_state(0),
      O => reg(3)
    );
\reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[3]\,
      I1 => data_in(4),
      I2 => current_state(0),
      O => reg(4)
    );
\reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[4]\,
      I1 => data_in(5),
      I2 => current_state(0),
      O => reg(5)
    );
\reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[5]\,
      I1 => data_in(6),
      I2 => current_state(0),
      O => reg(6)
    );
\reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[6]\,
      I1 => data_in(7),
      I2 => current_state(0),
      O => reg(7)
    );
\reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[7]\,
      I1 => data_in(8),
      I2 => current_state(0),
      O => reg(8)
    );
\reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_reg_n_0_[8]\,
      I1 => data_in(9),
      I2 => current_state(0),
      O => reg(9)
    );
\reg_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(1),
      I1 => \reg_cnt_reg_n_0_[0]\,
      O => \reg_cnt[0]_i_1_n_0\
    );
\reg_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => current_state(1),
      I1 => \reg_cnt_reg_n_0_[1]\,
      I2 => \reg_cnt_reg_n_0_[0]\,
      O => \reg_cnt[1]_i_1_n_0\
    );
\reg_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => current_state(1),
      I1 => \reg_cnt_reg_n_0_[2]\,
      I2 => \reg_cnt_reg_n_0_[0]\,
      I3 => \reg_cnt_reg_n_0_[1]\,
      O => \reg_cnt[2]_i_1_n_0\
    );
\reg_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => ss,
      I1 => sclk,
      I2 => \data_out_t[15]_i_2_n_0\,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \reg_cnt[3]_i_1_n_0\
    );
\reg_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => current_state(1),
      I1 => \reg_cnt_reg_n_0_[3]\,
      I2 => \reg_cnt_reg_n_0_[2]\,
      I3 => \reg_cnt_reg_n_0_[1]\,
      I4 => \reg_cnt_reg_n_0_[0]\,
      O => \reg_cnt[3]_i_2_n_0\
    );
\reg_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_cnt[3]_i_1_n_0\,
      CLR => rst,
      D => \reg_cnt[0]_i_1_n_0\,
      Q => \reg_cnt_reg_n_0_[0]\
    );
\reg_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_cnt[3]_i_1_n_0\,
      CLR => rst,
      D => \reg_cnt[1]_i_1_n_0\,
      Q => \reg_cnt_reg_n_0_[1]\
    );
\reg_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_cnt[3]_i_1_n_0\,
      CLR => rst,
      D => \reg_cnt[2]_i_1_n_0\,
      Q => \reg_cnt_reg_n_0_[2]\
    );
\reg_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_cnt[3]_i_1_n_0\,
      CLR => rst,
      D => \reg_cnt[3]_i_2_n_0\,
      Q => \reg_cnt_reg_n_0_[3]\
    );
\reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(0),
      Q => \reg_reg_n_0_[0]\
    );
\reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(10),
      Q => \reg_reg_n_0_[10]\
    );
\reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(11),
      Q => \reg_reg_n_0_[11]\
    );
\reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(12),
      Q => \reg_reg_n_0_[12]\
    );
\reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(13),
      Q => \reg_reg_n_0_[13]\
    );
\reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(14),
      Q => \reg_reg_n_0_[14]\
    );
\reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(15),
      Q => \p_0_in__0\
    );
\reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(1),
      Q => \reg_reg_n_0_[1]\
    );
\reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(2),
      Q => \reg_reg_n_0_[2]\
    );
\reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(3),
      Q => \reg_reg_n_0_[3]\
    );
\reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(4),
      Q => \reg_reg_n_0_[4]\
    );
\reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(5),
      Q => \reg_reg_n_0_[5]\
    );
\reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(6),
      Q => \reg_reg_n_0_[6]\
    );
\reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(7),
      Q => \reg_reg_n_0_[7]\
    );
\reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(8),
      Q => \reg_reg_n_0_[8]\
    );
\reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reg_0,
      CLR => rst,
      D => reg(9),
      Q => \reg_reg_n_0_[9]\
    );
sdo_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => sdo_t_reg_n_0,
      I1 => current_state(1),
      I2 => current_state(0),
      O => sdo
    );
sdo_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => current_state(1),
      I2 => data_in(15),
      I3 => \reg_cnt[3]_i_1_n_0\,
      I4 => rst,
      I5 => sdo_t_reg_n_0,
      O => sdo_t_i_1_n_0
    );
sdo_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sdo_t_i_1_n_0,
      Q => sdo_t_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_spi_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ss : in STD_LOGIC;
    sdo : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of assembly_spi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of assembly_spi_0_0 : entity is "assembly_spi_0_0,spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of assembly_spi_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of assembly_spi_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of assembly_spi_0_0 : entity is "spi,Vivado 2020.2";
end assembly_spi_0_0;

architecture STRUCTURE of assembly_spi_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.assembly_spi_0_0_spi
     port map (
      clk => clk,
      data_in(15 downto 0) => data_in(15 downto 0),
      data_out(15 downto 0) => data_out(15 downto 0),
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss
    );
end STRUCTURE;
