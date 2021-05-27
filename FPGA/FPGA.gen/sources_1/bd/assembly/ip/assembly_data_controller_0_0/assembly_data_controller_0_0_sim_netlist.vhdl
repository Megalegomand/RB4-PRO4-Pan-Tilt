-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 25 23:00:45 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_data_controller_0_0/assembly_data_controller_0_0_sim_netlist.vhdl
-- Design      : assembly_data_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_data_controller_0_0_data_controller is
  port (
    pan_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_tx : out STD_LOGIC_VECTOR ( 14 downto 0 );
    spi_rx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    pan_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_data_controller_0_0_data_controller : entity is "data_controller";
end assembly_data_controller_0_0_data_controller;

architecture STRUCTURE of assembly_data_controller_0_0_data_controller is
  signal cnt11_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data_rx : STD_LOGIC;
  signal data_rx_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \data_rx_id[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_rx_id[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_rx_reg_n_0_[7]\ : STD_LOGIC;
  signal data_tx : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data_tx0 : STD_LOGIC;
  signal \data_tx_id_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pan_out_t[5]_i_2_n_0\ : STD_LOGIC;
  signal \pan_out_t[7]_i_2_n_0\ : STD_LOGIC;
  signal \pan_out_t[8]_i_1_n_0\ : STD_LOGIC;
  signal \^spi_tx\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \spi_tx[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_tx[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_tx[1]_i_4_n_0\ : STD_LOGIC;
  signal \spi_tx[1]_i_5_n_0\ : STD_LOGIC;
  signal \spi_tx[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_tx[2]_i_3_n_0\ : STD_LOGIC;
  signal \spi_tx[2]_i_4_n_0\ : STD_LOGIC;
  signal \spi_tx[2]_i_5_n_0\ : STD_LOGIC;
  signal \spi_tx[2]_i_6_n_0\ : STD_LOGIC;
  signal \spi_tx[2]_i_7_n_0\ : STD_LOGIC;
  signal \spi_tx[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_tx[7]_i_1_n_0\ : STD_LOGIC;
  signal \tilt_out_t[8]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_rx_id[1]_i_14\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_rx_id[1]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_rx_id[1]_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_rx_id[1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_rx_id[1]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_rx_id[1]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pan_out_t[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pan_out_t[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pan_out_t[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pan_out_t[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pan_out_t[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pan_out_t[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_tx[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_tx[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_tx[1]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spi_tx[1]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spi_tx[1]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_tx[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_tx[2]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_tx[2]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spi_tx[2]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spi_tx[2]_i_7\ : label is "soft_lutpair0";
begin
  spi_tx(14 downto 0) <= \^spi_tx\(14 downto 0);
\data_rx_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880400840080440"
    )
        port map (
      I0 => \data_rx_id[1]_i_2_n_0\,
      I1 => \data_rx_id[1]_i_3_n_0\,
      I2 => \data_rx_id[1]_i_4_n_0\,
      I3 => \data_rx_id[1]_i_5_n_0\,
      I4 => \data_rx_id[1]_i_6_n_0\,
      I5 => spi_rx(1),
      O => data_rx
    );
\data_rx_id[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => spi_rx(8),
      I1 => spi_rx(9),
      I2 => spi_rx(7),
      O => \data_rx_id[1]_i_10_n_0\
    );
\data_rx_id[1]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => spi_rx(14),
      I1 => spi_rx(15),
      I2 => spi_rx(13),
      O => \data_rx_id[1]_i_11_n_0\
    );
\data_rx_id[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_rx(5),
      I1 => spi_rx(6),
      O => \data_rx_id[1]_i_12_n_0\
    );
\data_rx_id[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => spi_rx(7),
      I1 => spi_rx(9),
      I2 => spi_rx(8),
      I3 => spi_rx(4),
      I4 => spi_rx(6),
      I5 => spi_rx(5),
      O => \data_rx_id[1]_i_13_n_0\
    );
\data_rx_id[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \data_rx_id[1]_i_16_n_0\,
      I1 => spi_rx(3),
      I2 => spi_rx(10),
      I3 => spi_rx(11),
      I4 => spi_rx(12),
      O => \data_rx_id[1]_i_14_n_0\
    );
\data_rx_id[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => spi_rx(13),
      I1 => spi_rx(15),
      I2 => spi_rx(14),
      I3 => \data_rx_id[1]_i_10_n_0\,
      I4 => \data_rx_id[1]_i_9_n_0\,
      O => \data_rx_id[1]_i_15_n_0\
    );
\data_rx_id[1]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => spi_rx(13),
      I1 => spi_rx(15),
      I2 => spi_rx(14),
      O => \data_rx_id[1]_i_16_n_0\
    );
\data_rx_id[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DDBDBB2B224244D"
    )
        port map (
      I0 => \data_rx_id[1]_i_7_n_0\,
      I1 => \data_rx_id[1]_i_8_n_0\,
      I2 => \data_rx_id[1]_i_9_n_0\,
      I3 => \data_rx_id[1]_i_10_n_0\,
      I4 => \data_rx_id[1]_i_11_n_0\,
      I5 => spi_rx(2),
      O => \data_rx_id[1]_i_2_n_0\
    );
\data_rx_id[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009090009000009"
    )
        port map (
      I0 => spi_rx(3),
      I1 => spi_rx(4),
      I2 => \data_rx_id[1]_i_12_n_0\,
      I3 => \data_rx_id[1]_i_13_n_0\,
      I4 => \data_rx_id[1]_i_14_n_0\,
      I5 => spi_rx(0),
      O => \data_rx_id[1]_i_3_n_0\
    );
\data_rx_id[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => spi_rx(5),
      I1 => spi_rx(6),
      I2 => spi_rx(4),
      I3 => \data_rx_id[1]_i_7_n_0\,
      I4 => \data_rx_id[1]_i_15_n_0\,
      O => \data_rx_id[1]_i_4_n_0\
    );
\data_rx_id[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228288228828228"
    )
        port map (
      I0 => \data_rx_id[1]_i_13_n_0\,
      I1 => spi_rx(12),
      I2 => spi_rx(11),
      I3 => spi_rx(10),
      I4 => spi_rx(3),
      I5 => \data_rx_id[1]_i_16_n_0\,
      O => \data_rx_id[1]_i_5_n_0\
    );
\data_rx_id[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17717117"
    )
        port map (
      I0 => spi_rx(3),
      I1 => \data_rx_id[1]_i_16_n_0\,
      I2 => spi_rx(12),
      I3 => spi_rx(11),
      I4 => spi_rx(10),
      O => \data_rx_id[1]_i_6_n_0\
    );
\data_rx_id[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FFFF69FF6969FF"
    )
        port map (
      I0 => spi_rx(5),
      I1 => spi_rx(6),
      I2 => spi_rx(4),
      I3 => spi_rx(8),
      I4 => spi_rx(9),
      I5 => spi_rx(7),
      O => \data_rx_id[1]_i_7_n_0\
    );
\data_rx_id[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => spi_rx(5),
      I1 => spi_rx(6),
      I2 => spi_rx(4),
      O => \data_rx_id[1]_i_8_n_0\
    );
\data_rx_id[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => spi_rx(10),
      I1 => spi_rx(12),
      I2 => spi_rx(11),
      O => \data_rx_id[1]_i_9_n_0\
    );
\data_rx_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(5),
      Q => data_rx_id(0),
      R => '0'
    );
\data_rx_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(6),
      Q => data_rx_id(1),
      R => '0'
    );
\data_rx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(7),
      Q => p_1_in(0),
      R => '0'
    );
\data_rx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(8),
      Q => \data_rx_reg_n_0_[1]\,
      R => '0'
    );
\data_rx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(9),
      Q => \data_rx_reg_n_0_[2]\,
      R => '0'
    );
\data_rx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(10),
      Q => \data_rx_reg_n_0_[3]\,
      R => '0'
    );
\data_rx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(11),
      Q => \data_rx_reg_n_0_[4]\,
      R => '0'
    );
\data_rx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(12),
      Q => \data_rx_reg_n_0_[5]\,
      R => '0'
    );
\data_rx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(13),
      Q => \data_rx_reg_n_0_[6]\,
      R => '0'
    );
\data_rx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(14),
      Q => \data_rx_reg_n_0_[7]\,
      R => '0'
    );
\data_rx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(15),
      Q => p_1_in(8),
      R => '0'
    );
\data_tx_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(3),
      Q => \data_tx_id_reg_n_0_[0]\,
      R => '0'
    );
\data_tx_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_rx,
      D => spi_rx(4),
      Q => p_0_in1_in,
      R => '0'
    );
\pan_out_t[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \data_rx_reg_n_0_[1]\,
      I2 => p_1_in(8),
      O => p_1_in(1)
    );
\pan_out_t[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EF0"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \data_rx_reg_n_0_[1]\,
      I2 => \data_rx_reg_n_0_[2]\,
      I3 => p_1_in(8),
      O => p_1_in(2)
    );
\pan_out_t[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FEFF00"
    )
        port map (
      I0 => \data_rx_reg_n_0_[2]\,
      I1 => \data_rx_reg_n_0_[1]\,
      I2 => p_1_in(0),
      I3 => \data_rx_reg_n_0_[3]\,
      I4 => p_1_in(8),
      O => p_1_in(3)
    );
\pan_out_t[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFEFFFF0000"
    )
        port map (
      I0 => \data_rx_reg_n_0_[3]\,
      I1 => p_1_in(0),
      I2 => \data_rx_reg_n_0_[1]\,
      I3 => \data_rx_reg_n_0_[2]\,
      I4 => \data_rx_reg_n_0_[4]\,
      I5 => p_1_in(8),
      O => p_1_in(4)
    );
\pan_out_t[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \pan_out_t[5]_i_2_n_0\,
      I1 => \data_rx_reg_n_0_[5]\,
      I2 => p_1_in(8),
      O => p_1_in(5)
    );
\pan_out_t[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \data_rx_reg_n_0_[3]\,
      I1 => p_1_in(0),
      I2 => \data_rx_reg_n_0_[1]\,
      I3 => \data_rx_reg_n_0_[2]\,
      I4 => \data_rx_reg_n_0_[4]\,
      O => \pan_out_t[5]_i_2_n_0\
    );
\pan_out_t[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \pan_out_t[7]_i_2_n_0\,
      I1 => \data_rx_reg_n_0_[6]\,
      I2 => p_1_in(8),
      O => p_1_in(6)
    );
\pan_out_t[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BF0"
    )
        port map (
      I0 => \data_rx_reg_n_0_[6]\,
      I1 => \pan_out_t[7]_i_2_n_0\,
      I2 => \data_rx_reg_n_0_[7]\,
      I3 => p_1_in(8),
      O => p_1_in(7)
    );
\pan_out_t[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_rx_reg_n_0_[4]\,
      I1 => \data_rx_reg_n_0_[2]\,
      I2 => \data_rx_reg_n_0_[1]\,
      I3 => p_1_in(0),
      I4 => \data_rx_reg_n_0_[3]\,
      I5 => \data_rx_reg_n_0_[5]\,
      O => \pan_out_t[7]_i_2_n_0\
    );
\pan_out_t[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_rx_id(0),
      I1 => data_rx_id(1),
      O => \pan_out_t[8]_i_1_n_0\
    );
\pan_out_t_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(0),
      Q => pan_out(0),
      R => '0'
    );
\pan_out_t_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(1),
      Q => pan_out(1),
      R => '0'
    );
\pan_out_t_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(2),
      Q => pan_out(2),
      R => '0'
    );
\pan_out_t_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(3),
      Q => pan_out(3),
      R => '0'
    );
\pan_out_t_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(4),
      Q => pan_out(4),
      R => '0'
    );
\pan_out_t_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(5),
      Q => pan_out(5),
      R => '0'
    );
\pan_out_t_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(6),
      Q => pan_out(6),
      R => '0'
    );
\pan_out_t_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(7),
      Q => pan_out(7),
      R => '0'
    );
\pan_out_t_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pan_out_t[8]_i_1_n_0\,
      D => p_1_in(8),
      Q => pan_out(8),
      R => '0'
    );
\spi_tx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \spi_tx[1]_i_4_n_0\,
      I1 => \spi_tx[1]_i_2_n_0\,
      I2 => \spi_tx[1]_i_3_n_0\,
      I3 => \data_tx_id_reg_n_0_[0]\,
      I4 => p_0_in1_in,
      O => cnt11_out(0)
    );
\spi_tx[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(3),
      I1 => data_tx(3),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(3),
      O => p_0_in5_in
    );
\spi_tx[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(4),
      I1 => data_tx(4),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(4),
      O => p_0_in6_in
    );
\spi_tx[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(5),
      I1 => data_tx(5),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(5),
      O => p_0_in7_in
    );
\spi_tx[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(6),
      I1 => data_tx(6),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(6),
      O => p_0_in8_in
    );
\spi_tx[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(7),
      I1 => data_tx(7),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(7),
      O => p_0_in9_in
    );
\spi_tx[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \data_tx_id_reg_n_0_[0]\,
      O => data_tx0
    );
\spi_tx[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(8),
      I1 => data_tx(8),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(8),
      O => p_0_in10_in
    );
\spi_tx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006066F6FF9F990"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \data_tx_id_reg_n_0_[0]\,
      I2 => \spi_tx[1]_i_2_n_0\,
      I3 => \spi_tx[1]_i_3_n_0\,
      I4 => \spi_tx[1]_i_4_n_0\,
      I5 => \spi_tx[1]_i_5_n_0\,
      O => cnt11_out(1)
    );
\spi_tx[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in9_in,
      O => \spi_tx[1]_i_2_n_0\
    );
\spi_tx[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => p_0_in5_in,
      I2 => p_0_in6_in,
      O => \spi_tx[1]_i_3_n_0\
    );
\spi_tx[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => \spi_tx[7]_i_1_n_0\,
      I2 => p_0_in3_in,
      O => \spi_tx[1]_i_4_n_0\
    );
\spi_tx[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696996"
    )
        port map (
      I0 => \spi_tx[2]_i_5_n_0\,
      I1 => \spi_tx[2]_i_4_n_0\,
      I2 => \spi_tx[2]_i_6_n_0\,
      I3 => p_0_in1_in,
      I4 => \data_tx_id_reg_n_0_[0]\,
      O => \spi_tx[1]_i_5_n_0\
    );
\spi_tx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"177E7EE88117177E"
    )
        port map (
      I0 => \spi_tx[2]_i_2_n_0\,
      I1 => \spi_tx[2]_i_3_n_0\,
      I2 => \spi_tx[2]_i_4_n_0\,
      I3 => \spi_tx[2]_i_5_n_0\,
      I4 => \spi_tx[2]_i_6_n_0\,
      I5 => \spi_tx[2]_i_7_n_0\,
      O => cnt11_out(2)
    );
\spi_tx[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090990"
    )
        port map (
      I0 => \data_tx_id_reg_n_0_[0]\,
      I1 => p_0_in1_in,
      I2 => \spi_tx[1]_i_3_n_0\,
      I3 => \spi_tx[1]_i_2_n_0\,
      I4 => \spi_tx[1]_i_4_n_0\,
      O => \spi_tx[2]_i_2_n_0\
    );
\spi_tx[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \spi_tx[1]_i_2_n_0\,
      I1 => \spi_tx[1]_i_3_n_0\,
      I2 => \spi_tx[1]_i_4_n_0\,
      O => \spi_tx[2]_i_3_n_0\
    );
\spi_tx[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_0_in9_in,
      I2 => p_0_in10_in,
      O => \spi_tx[2]_i_4_n_0\
    );
\spi_tx[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in6_in,
      I2 => p_0_in7_in,
      O => \spi_tx[2]_i_5_n_0\
    );
\spi_tx[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \spi_tx[7]_i_1_n_0\,
      I1 => p_0_in3_in,
      I2 => p_0_in4_in,
      O => \spi_tx[2]_i_6_n_0\
    );
\spi_tx[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_tx_id_reg_n_0_[0]\,
      I1 => p_0_in1_in,
      O => \spi_tx[2]_i_7_n_0\
    );
\spi_tx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \^spi_tx\(3),
      I1 => \data_tx_id_reg_n_0_[0]\,
      I2 => p_0_in1_in,
      O => \spi_tx[4]_i_1_n_0\
    );
\spi_tx[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(0),
      I1 => data_tx(0),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(0),
      O => \spi_tx[7]_i_1_n_0\
    );
\spi_tx[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(1),
      I1 => data_tx(1),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(1),
      O => p_0_in3_in
    );
\spi_tx[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => pan_in(2),
      I1 => data_tx(2),
      I2 => \data_tx_id_reg_n_0_[0]\,
      I3 => p_0_in1_in,
      I4 => tilt_in(2),
      O => p_0_in4_in
    );
\spi_tx_process.data_tx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => \spi_tx[7]_i_1_n_0\,
      Q => data_tx(0),
      R => '0'
    );
\spi_tx_process.data_tx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in3_in,
      Q => data_tx(1),
      R => '0'
    );
\spi_tx_process.data_tx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in4_in,
      Q => data_tx(2),
      R => '0'
    );
\spi_tx_process.data_tx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in5_in,
      Q => data_tx(3),
      R => '0'
    );
\spi_tx_process.data_tx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in6_in,
      Q => data_tx(4),
      R => '0'
    );
\spi_tx_process.data_tx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in7_in,
      Q => data_tx(5),
      R => '0'
    );
\spi_tx_process.data_tx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in8_in,
      Q => data_tx(6),
      R => '0'
    );
\spi_tx_process.data_tx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in9_in,
      Q => data_tx(7),
      R => '0'
    );
\spi_tx_process.data_tx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in10_in,
      Q => data_tx(8),
      R => '0'
    );
\spi_tx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => cnt11_out(0),
      Q => \^spi_tx\(0),
      R => '0'
    );
\spi_tx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in5_in,
      Q => \^spi_tx\(9),
      R => '0'
    );
\spi_tx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in6_in,
      Q => \^spi_tx\(10),
      R => '0'
    );
\spi_tx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in7_in,
      Q => \^spi_tx\(11),
      R => '0'
    );
\spi_tx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in8_in,
      Q => \^spi_tx\(12),
      R => '0'
    );
\spi_tx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in9_in,
      Q => \^spi_tx\(13),
      R => '0'
    );
\spi_tx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in10_in,
      Q => \^spi_tx\(14),
      R => '0'
    );
\spi_tx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => cnt11_out(1),
      Q => \^spi_tx\(1),
      R => '0'
    );
\spi_tx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => cnt11_out(2),
      Q => \^spi_tx\(2),
      R => '0'
    );
\spi_tx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \spi_tx[4]_i_1_n_0\,
      Q => \^spi_tx\(3),
      R => '0'
    );
\spi_tx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => \data_tx_id_reg_n_0_[0]\,
      Q => \^spi_tx\(4),
      R => '0'
    );
\spi_tx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in1_in,
      Q => \^spi_tx\(5),
      R => '0'
    );
\spi_tx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => \spi_tx[7]_i_1_n_0\,
      Q => \^spi_tx\(6),
      R => '0'
    );
\spi_tx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in3_in,
      Q => \^spi_tx\(7),
      R => '0'
    );
\spi_tx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => data_tx0,
      D => p_0_in4_in,
      Q => \^spi_tx\(8),
      R => '0'
    );
\tilt_out_t[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_rx_id(0),
      I1 => data_rx_id(1),
      O => \tilt_out_t[8]_i_1_n_0\
    );
\tilt_out_t_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(0),
      Q => tilt_out(0),
      R => '0'
    );
\tilt_out_t_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(1),
      Q => tilt_out(1),
      R => '0'
    );
\tilt_out_t_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(2),
      Q => tilt_out(2),
      R => '0'
    );
\tilt_out_t_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(3),
      Q => tilt_out(3),
      R => '0'
    );
\tilt_out_t_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(4),
      Q => tilt_out(4),
      R => '0'
    );
\tilt_out_t_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(5),
      Q => tilt_out(5),
      R => '0'
    );
\tilt_out_t_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(6),
      Q => tilt_out(6),
      R => '0'
    );
\tilt_out_t_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(7),
      Q => tilt_out(7),
      R => '0'
    );
\tilt_out_t_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tilt_out_t[8]_i_1_n_0\,
      D => p_1_in(8),
      Q => tilt_out(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_data_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pan_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_rx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pan_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_tx : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of assembly_data_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of assembly_data_controller_0_0 : entity is "assembly_data_controller_0_0,data_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of assembly_data_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of assembly_data_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of assembly_data_controller_0_0 : entity is "data_controller,Vivado 2020.2";
end assembly_data_controller_0_0;

architecture STRUCTURE of assembly_data_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spi_tx\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  spi_tx(15 downto 4) <= \^spi_tx\(15 downto 4);
  spi_tx(3) <= \<const0>\;
  spi_tx(2 downto 0) <= \^spi_tx\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.assembly_data_controller_0_0_data_controller
     port map (
      clk => clk,
      pan_in(8 downto 0) => pan_in(8 downto 0),
      pan_out(8 downto 0) => pan_out(8 downto 0),
      spi_rx(15 downto 0) => spi_rx(15 downto 0),
      spi_tx(14 downto 3) => \^spi_tx\(15 downto 4),
      spi_tx(2 downto 0) => \^spi_tx\(2 downto 0),
      tilt_in(8 downto 0) => tilt_in(8 downto 0),
      tilt_out(8 downto 0) => tilt_out(8 downto 0)
    );
end STRUCTURE;
