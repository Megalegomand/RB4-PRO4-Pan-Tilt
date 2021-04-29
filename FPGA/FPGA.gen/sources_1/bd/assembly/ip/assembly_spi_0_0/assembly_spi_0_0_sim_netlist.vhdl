-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Apr 19 10:36:53 2021
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
    sdo : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ss : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_spi_0_0_spi : entity is "spi";
end assembly_spi_0_0_spi;

architecture STRUCTURE of assembly_spi_0_0_spi is
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_1_in__0_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reg1_n_0 : STD_LOGIC;
  signal \reg_cnt_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[0]_P_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[1]_P_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg[2]_P_n_0\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal reg_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sdo_i_1_n_0 : STD_LOGIC;
  signal sdo_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg[0]__0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[1]__0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[2]__0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[3]__0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[4]__0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[5]__0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[6]__0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[7]__0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_cnt_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_cnt_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_cnt_reg[2]_LDC\ : label is "LDC";
begin
\data_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ss,
      I1 => reg1_n_0,
      O => \data_out[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => sdi,
      Q => data_out(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(1),
      Q => data_out(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(2),
      Q => data_out(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(3),
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(4),
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(5),
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(6),
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_1_in__0\(7),
      Q => data_out(7)
    );
reg1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_cnt_reg[0]_P_n_0\,
      I1 => \reg_cnt_reg[0]_LDC_n_0\,
      I2 => \reg_cnt_reg[2]_LDC_n_0\,
      I3 => \reg_cnt_reg[2]_P_n_0\,
      I4 => \reg_cnt_reg[1]_LDC_n_0\,
      I5 => \reg_cnt_reg[1]_P_n_0\,
      O => reg1_n_0
    );
\reg[0]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdi,
      I1 => reg_reg(0),
      I2 => reg1_n_0,
      O => p_1_in(0)
    );
\reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(1),
      I1 => data_in(0),
      I2 => reg1_n_0,
      O => p_0_in(0)
    );
\reg[1]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(1),
      I1 => reg_reg(1),
      I2 => reg1_n_0,
      O => p_1_in(1)
    );
\reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(2),
      I1 => data_in(1),
      I2 => reg1_n_0,
      O => p_0_in(1)
    );
\reg[2]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(2),
      I1 => reg_reg(2),
      I2 => reg1_n_0,
      O => p_1_in(2)
    );
\reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(3),
      I1 => data_in(2),
      I2 => reg1_n_0,
      O => p_0_in(2)
    );
\reg[3]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(3),
      I1 => reg_reg(3),
      I2 => reg1_n_0,
      O => p_1_in(3)
    );
\reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(4),
      I1 => data_in(3),
      I2 => reg1_n_0,
      O => p_0_in(3)
    );
\reg[4]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(4),
      I1 => reg_reg(4),
      I2 => reg1_n_0,
      O => p_1_in(4)
    );
\reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(5),
      I1 => data_in(4),
      I2 => reg1_n_0,
      O => p_0_in(4)
    );
\reg[5]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(5),
      I1 => reg_reg(5),
      I2 => reg1_n_0,
      O => p_1_in(5)
    );
\reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(6),
      I1 => data_in(5),
      I2 => reg1_n_0,
      O => p_0_in(5)
    );
\reg[6]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(6),
      I1 => reg_reg(6),
      I2 => reg1_n_0,
      O => p_1_in(6)
    );
\reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(7),
      I1 => data_in(6),
      I2 => reg1_n_0,
      O => p_0_in(6)
    );
\reg[7]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0\(7),
      I1 => reg_reg(7),
      I2 => reg1_n_0,
      O => p_1_in(7)
    );
\reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \p_1_in__0_0\,
      I1 => data_in(7),
      I2 => reg1_n_0,
      O => p_0_in(7)
    );
\reg_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \reg_cnt_reg[0]_P_n_0\,
      I1 => \reg_cnt_reg[0]_LDC_n_0\,
      O => plusOp(0)
    );
\reg_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \reg_cnt_reg[0]_P_n_0\,
      I1 => \reg_cnt_reg[0]_LDC_n_0\,
      I2 => \reg_cnt_reg[1]_P_n_0\,
      I3 => \reg_cnt_reg[1]_LDC_n_0\,
      O => plusOp(1)
    );
\reg_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080008000"
    )
        port map (
      I0 => \reg_cnt_reg[0]_LDC_n_0\,
      I1 => \reg_cnt_reg[0]_P_n_0\,
      I2 => \reg_cnt_reg[1]_LDC_n_0\,
      I3 => \reg_cnt_reg[1]_P_n_0\,
      I4 => \reg_cnt_reg[2]_P_n_0\,
      I5 => \reg_cnt_reg[2]_LDC_n_0\,
      O => plusOp(2)
    );
\reg_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => plusOp(0),
      Q => \reg_cnt_reg_n_0_[0]\,
      R => '0'
    );
\reg_cnt_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_cnt_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_cnt_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_cnt_reg[0]_LDC_n_0\
    );
\reg_cnt_reg[0]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \reg_cnt_reg_n_0_[0]\,
      I2 => ss,
      O => \reg_cnt_reg[0]_LDC_i_1_n_0\
    );
\reg_cnt_reg[0]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => rst,
      I1 => \reg_cnt_reg_n_0_[0]\,
      I2 => ss,
      O => \reg_cnt_reg[0]_LDC_i_2_n_0\
    );
\reg_cnt_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => ss,
      CE => '1',
      D => '0',
      PRE => \reg_cnt_reg[0]_LDC_i_1_n_0\,
      Q => \reg_cnt_reg[0]_P_n_0\
    );
\reg_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => plusOp(1),
      Q => \reg_cnt_reg_n_0_[1]\,
      R => '0'
    );
\reg_cnt_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_cnt_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_cnt_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_cnt_reg[1]_LDC_n_0\
    );
\reg_cnt_reg[1]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \reg_cnt_reg_n_0_[1]\,
      I2 => ss,
      O => \reg_cnt_reg[1]_LDC_i_1_n_0\
    );
\reg_cnt_reg[1]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => rst,
      I1 => \reg_cnt_reg_n_0_[1]\,
      I2 => ss,
      O => \reg_cnt_reg[1]_LDC_i_2_n_0\
    );
\reg_cnt_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => ss,
      CE => '1',
      D => '0',
      PRE => \reg_cnt_reg[1]_LDC_i_1_n_0\,
      Q => \reg_cnt_reg[1]_P_n_0\
    );
\reg_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => plusOp(2),
      Q => \reg_cnt_reg_n_0_[2]\,
      R => '0'
    );
\reg_cnt_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_cnt_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_cnt_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_cnt_reg[2]_LDC_n_0\
    );
\reg_cnt_reg[2]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \reg_cnt_reg_n_0_[2]\,
      I2 => ss,
      O => \reg_cnt_reg[2]_LDC_i_1_n_0\
    );
\reg_cnt_reg[2]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => rst,
      I1 => \reg_cnt_reg_n_0_[2]\,
      I2 => ss,
      O => \reg_cnt_reg[2]_LDC_i_2_n_0\
    );
\reg_cnt_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => ss,
      CE => '1',
      D => '0',
      PRE => \reg_cnt_reg[2]_LDC_i_1_n_0\,
      Q => \reg_cnt_reg[2]_P_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(0),
      Q => reg_reg(0),
      R => '0'
    );
\reg_reg[0]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(0),
      Q => \p_1_in__0\(1)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(1),
      Q => reg_reg(1),
      R => '0'
    );
\reg_reg[1]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(1),
      Q => \p_1_in__0\(2)
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(2),
      Q => reg_reg(2),
      R => '0'
    );
\reg_reg[2]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(2),
      Q => \p_1_in__0\(3)
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(3),
      Q => reg_reg(3),
      R => '0'
    );
\reg_reg[3]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(3),
      Q => \p_1_in__0\(4)
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(4),
      Q => reg_reg(4),
      R => '0'
    );
\reg_reg[4]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(4),
      Q => \p_1_in__0\(5)
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(5),
      Q => reg_reg(5),
      R => '0'
    );
\reg_reg[5]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(5),
      Q => \p_1_in__0\(6)
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(6),
      Q => reg_reg(6),
      R => '0'
    );
\reg_reg[6]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(6),
      Q => \p_1_in__0\(7)
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => p_0_in(7),
      Q => reg_reg(7),
      R => '0'
    );
\reg_reg[7]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => p_1_in(7),
      Q => \p_1_in__0_0\
    );
sdo_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ss,
      O => sdo_i_1_n_0
    );
sdo_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p_1_in__0_0\,
      I1 => reg1_n_0,
      I2 => data_in(7),
      O => sdo_i_2_n_0
    );
sdo_reg: unisim.vcomponents.FDCE
     port map (
      C => sclk,
      CE => sdo_i_1_n_0,
      CLR => rst,
      D => sdo_i_2_n_0,
      Q => sdo
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_spi_0_0 is
  port (
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sdo : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
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
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  state(3) <= \<const0>\;
  state(2) <= \<const0>\;
  state(1) <= \<const0>\;
  state(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.assembly_spi_0_0_spi
     port map (
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss
    );
end STRUCTURE;
