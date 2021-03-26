-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Mar 26 20:46:20 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/system/ip/system_spi_0_0/system_spi_0_0_sim_netlist.vhdl
-- Design      : system_spi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_0_0_spi is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    miso : out STD_LOGIC;
    rst : in STD_LOGIC;
    ss : in STD_LOGIC;
    sclk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mosi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_spi_0_0_spi : entity is "spi";
end system_spi_0_0_spi;

architecture STRUCTURE of system_spi_0_0_spi is
  signal \current_state[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state_reg[0]__0_n_0\ : STD_LOGIC;
  signal \current_state_reg[1]__0_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal data_in_t : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \data_in_t[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \^miso\ : STD_LOGIC;
  signal miso_i_1_n_0 : STD_LOGIC;
  signal miso_i_2_n_0 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_n[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_state[0]__0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \current_state[1]__0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of miso_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_n[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_n[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_n[2]_i_3\ : label is "soft_lutpair1";
begin
  miso <= \^miso\;
\current_state[0]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => rst,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[1]\,
      O => \current_state[0]__0_i_1_n_0\
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \current_state_reg[0]__0_n_0\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      O => \current_state[0]_i_1_n_0\
    );
\current_state[1]__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3005"
    )
        port map (
      I0 => ss,
      I1 => rst,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]__0_i_1_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABABABA"
    )
        port map (
      I0 => \current_state_reg[1]__0_n_0\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => ss,
      I4 => \current_state[1]_i_2_n_0\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \reg_n_reg_n_0_[1]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[0]\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \current_state[0]_i_1_n_0\,
      Q => \current_state_reg_n_0_[0]\,
      R => '0'
    );
\current_state_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \current_state[0]__0_i_1_n_0\,
      Q => \current_state_reg[0]__0_n_0\,
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \current_state[1]_i_1_n_0\,
      Q => \current_state_reg_n_0_[1]\,
      R => '0'
    );
\current_state_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \current_state[1]__0_i_1_n_0\,
      Q => \current_state_reg[1]__0_n_0\,
      R => '0'
    );
\data_in_t[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[1]\,
      O => \data_in_t[6]_i_1_n_0\
    );
\data_in_t_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(0),
      Q => data_in_t(0),
      R => '0'
    );
\data_in_t_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(1),
      Q => data_in_t(1),
      R => '0'
    );
\data_in_t_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(2),
      Q => data_in_t(2),
      R => '0'
    );
\data_in_t_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(3),
      Q => data_in_t(3),
      R => '0'
    );
\data_in_t_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(4),
      Q => data_in_t(4),
      R => '0'
    );
\data_in_t_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(5),
      Q => data_in_t(5),
      R => '0'
    );
\data_in_t_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \data_in_t[6]_i_1_n_0\,
      D => data_in(6),
      Q => data_in_t(6),
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => mosi,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => rst,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => rst,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => p_0_in1_in(7),
      O => \data_out[7]_i_3_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[0]_i_1_n_0\,
      Q => data_out(0),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[1]_i_1_n_0\,
      Q => data_out(1),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[2]_i_1_n_0\,
      Q => data_out(2),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[3]_i_1_n_0\,
      Q => data_out(3),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[4]_i_1_n_0\,
      Q => data_out(4),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[5]_i_1_n_0\,
      Q => data_out(5),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[6]_i_1_n_0\,
      Q => data_out(6),
      R => \data_out[7]_i_1_n_0\
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_2_n_0\,
      D => \data_out[7]_i_3_n_0\,
      Q => data_out(7),
      R => \data_out[7]_i_1_n_0\
    );
miso_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35370504"
    )
        port map (
      I0 => miso_i_2_n_0,
      I1 => rst,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \^miso\,
      O => miso_i_1_n_0
    );
miso_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57777777F7777777"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => \reg_n_reg_n_0_[2]\,
      I4 => \reg_n_reg_n_0_[0]\,
      I5 => data_in(7),
      O => miso_i_2_n_0
    );
miso_reg: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => miso_i_1_n_0,
      Q => \^miso\,
      R => '0'
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(0),
      O => \reg[1]_i_1_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(1),
      O => \reg[2]_i_1_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(2),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(3),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(4),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(5),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[0]\,
      I3 => \reg_n_reg_n_0_[2]\,
      I4 => \reg_n_reg_n_0_[1]\,
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => data_in_t(6),
      O => \reg[7]_i_2_n_0\
    );
\reg_n[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E5EEE5EF"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => rst,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => ss,
      O => \reg_n[0]_i_1_n_0\
    );
\reg_n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE5AEEEEEE5AEEFF"
    )
        port map (
      I0 => \reg_n_reg_n_0_[1]\,
      I1 => rst,
      I2 => \reg_n_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => ss,
      O => \reg_n[1]_i_1_n_0\
    );
\reg_n[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF76BABABA"
    )
        port map (
      I0 => \reg_n_reg_n_0_[2]\,
      I1 => \reg_n[2]_i_2_n_0\,
      I2 => rst,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => \reg_n_reg_n_0_[0]\,
      I5 => \reg_n[2]_i_3_n_0\,
      O => \reg_n[2]_i_1_n_0\
    );
\reg_n[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      O => \reg_n[2]_i_2_n_0\
    );
\reg_n[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ss,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      O => \reg_n[2]_i_3_n_0\
    );
\reg_n_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \reg_n[0]_i_1_n_0\,
      Q => \reg_n_reg_n_0_[0]\,
      R => '0'
    );
\reg_n_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \reg_n[1]_i_1_n_0\,
      Q => \reg_n_reg_n_0_[1]\,
      R => '0'
    );
\reg_n_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \reg_n[2]_i_1_n_0\,
      Q => \reg_n_reg_n_0_[2]\,
      R => '0'
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => mosi,
      Q => p_0_in1_in(1),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[1]_i_1_n_0\,
      Q => p_0_in1_in(2),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[2]_i_1_n_0\,
      Q => p_0_in1_in(3),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[3]_i_1_n_0\,
      Q => p_0_in1_in(4),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[4]_i_1_n_0\,
      Q => p_0_in1_in(5),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[5]_i_1_n_0\,
      Q => p_0_in1_in(6),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[6]_i_1_n_0\,
      Q => p_0_in1_in(7),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \reg[7]_i_1_n_0\,
      D => \reg[7]_i_2_n_0\,
      Q => p_1_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_0_0 is
  port (
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_spi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_spi_0_0 : entity is "system_spi_0_0,spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_spi_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_spi_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_spi_0_0 : entity is "spi,Vivado 2020.2";
end system_spi_0_0;

architecture STRUCTURE of system_spi_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.system_spi_0_0_spi
     port map (
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      miso => miso,
      mosi => mosi,
      rst => rst,
      sclk => sclk,
      ss => ss
    );
end STRUCTURE;
