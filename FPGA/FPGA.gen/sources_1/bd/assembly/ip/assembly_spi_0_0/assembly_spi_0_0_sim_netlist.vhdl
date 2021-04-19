-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Apr 15 18:27:29 2021
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
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ss : in STD_LOGIC;
    sclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_spi_0_0_spi : entity is "spi";
end assembly_spi_0_0_spi;

architecture STRUCTURE of assembly_spi_0_0_spi is
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_out_t : STD_LOGIC;
  signal \data_out_t[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_t_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_out_t_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_out_t_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_out_t_reg_n_0_[7]\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[2]\ : STD_LOGIC;
  signal sdo_reg_i_1_n_0 : STD_LOGIC;
  signal sdo_t_i_1_n_0 : STD_LOGIC;
  signal sdo_t_i_2_n_0 : STD_LOGIC;
  signal sdo_t_reg_n_0 : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s_high:10,s_low:01,s_rst:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s_high:10,s_low:01,s_rst:00";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_out_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_n[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_n[2]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of sdo_reg : label is "LD";
  attribute SOFT_HLUTNM of sdo_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sdo_t_i_2 : label is "soft_lutpair2";
begin
  state(3 downto 0) <= \^state\(3 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => sclk,
      I1 => ss,
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => \data_out_t[3]_i_2_n_0\,
      O => \next_state__0\(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0600"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => ss,
      I3 => sclk,
      O => \FSM_sequential_current_state[1]_i_1_n_0\
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
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1)
    );
\data_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^state\(0),
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(0)
    );
\data_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^state\(1),
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(1)
    );
\data_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^state\(2),
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(2)
    );
\data_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^state\(3),
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_out_t_reg_n_0_[4]\,
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_out_t_reg_n_0_[5]\,
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_out_t_reg_n_0_[6]\,
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_out_t_reg_n_0_[7]\,
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => data_out(7)
    );
\data_out_t[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10100010"
    )
        port map (
      I0 => \data_out_t[3]_i_2_n_0\,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => sclk,
      I4 => ss,
      O => data_out_t
    );
\data_out_t[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001555FFFF"
    )
        port map (
      I0 => sclk,
      I1 => \reg_n_reg_n_0_[2]\,
      I2 => \reg_n_reg_n_0_[0]\,
      I3 => \reg_n_reg_n_0_[1]\,
      I4 => current_state(1),
      I5 => ss,
      O => \data_out_t[3]_i_2_n_0\
    );
\data_out_t_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => sdi,
      Q => \^state\(0)
    );
\data_out_t_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(1),
      Q => \^state\(1)
    );
\data_out_t_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(2),
      Q => \^state\(2)
    );
\data_out_t_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(3),
      Q => \^state\(3)
    );
\data_out_t_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(4),
      Q => \data_out_t_reg_n_0_[4]\
    );
\data_out_t_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(5),
      Q => \data_out_t_reg_n_0_[5]\
    );
\data_out_t_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(6),
      Q => \data_out_t_reg_n_0_[6]\
    );
\data_out_t_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(7),
      Q => \data_out_t_reg_n_0_[7]\
    );
\reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(0),
      I2 => sdi,
      O => reg(0)
    );
\reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(1),
      I2 => p_0_in(1),
      O => reg(1)
    );
\reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(2),
      I2 => p_0_in(2),
      O => reg(2)
    );
\reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(3),
      I2 => p_0_in(3),
      O => reg(3)
    );
\reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(4),
      I2 => p_0_in(4),
      O => reg(4)
    );
\reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(5),
      I2 => p_0_in(5),
      O => reg(5)
    );
\reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(6),
      I2 => p_0_in(6),
      O => reg(6)
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF00"
    )
        port map (
      I0 => current_state(1),
      I1 => ss,
      I2 => sclk,
      I3 => \data_out_t[3]_i_2_n_0\,
      I4 => current_state(0),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => current_state(1),
      I1 => data_in(7),
      I2 => p_0_in(7),
      O => reg(7)
    );
\reg_n[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFF000044F0"
    )
        port map (
      I0 => ss,
      I1 => sclk,
      I2 => \data_out_t[3]_i_2_n_0\,
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => \reg_n_reg_n_0_[0]\,
      O => \reg_n[0]_i_1_n_0\
    );
\reg_n[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF4500"
    )
        port map (
      I0 => current_state(1),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => current_state(0),
      I3 => \reg_n[2]_i_2_n_0\,
      I4 => \reg_n_reg_n_0_[1]\,
      O => \reg_n[1]_i_1_n_0\
    );
\reg_n[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555FFFF40550000"
    )
        port map (
      I0 => current_state(1),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => current_state(0),
      I4 => \reg_n[2]_i_2_n_0\,
      I5 => \reg_n_reg_n_0_[2]\,
      O => \reg_n[2]_i_1_n_0\
    );
\reg_n[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F0"
    )
        port map (
      I0 => ss,
      I1 => sclk,
      I2 => \data_out_t[3]_i_2_n_0\,
      I3 => current_state(0),
      I4 => current_state(1),
      O => \reg_n[2]_i_2_n_0\
    );
\reg_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \reg_n[0]_i_1_n_0\,
      PRE => rst,
      Q => \reg_n_reg_n_0_[0]\
    );
\reg_n_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \reg_n[1]_i_1_n_0\,
      PRE => rst,
      Q => \reg_n_reg_n_0_[1]\
    );
\reg_n_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \reg_n[2]_i_1_n_0\,
      PRE => rst,
      Q => \reg_n_reg_n_0_[2]\
    );
\reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(0),
      Q => p_0_in(1)
    );
\reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(1),
      Q => p_0_in(2)
    );
\reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(2),
      Q => p_0_in(3)
    );
\reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(3),
      Q => p_0_in(4)
    );
\reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(4),
      Q => p_0_in(5)
    );
\reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(5),
      Q => p_0_in(6)
    );
\reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(6),
      Q => p_0_in(7)
    );
\reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg[7]_i_1_n_0\,
      CLR => rst,
      D => reg(7),
      Q => \p_0_in__0\
    );
sdo_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sdo_t_reg_n_0,
      G => sdo_reg_i_1_n_0,
      GE => '1',
      Q => sdo
    );
sdo_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => sdo_reg_i_1_n_0
    );
sdo_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFC00002000"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => sdo_t_i_2_n_0,
      I2 => \FSM_sequential_current_state[1]_i_1_n_0\,
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => sdo_t_reg_n_0,
      O => sdo_t_i_1_n_0
    );
sdo_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => ss,
      I1 => sclk,
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => \data_out_t[3]_i_2_n_0\,
      O => sdo_t_i_2_n_0
    );
sdo_t_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => sdo_t_i_1_n_0,
      Q => sdo_t_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_spi_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
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
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss,
      state(3 downto 0) => state(3 downto 0)
    );
end STRUCTURE;
