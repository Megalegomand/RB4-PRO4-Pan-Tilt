-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 18 21:34:20 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_encoder_tilt_0/assembly_encoder_tilt_0_sim_netlist.vhdl
-- Design      : assembly_encoder_tilt_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_encoder_tilt_0_encoder is
  port (
    cnt : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_encoder_tilt_0_encoder : entity is "encoder";
end assembly_encoder_tilt_0_encoder;

architecture STRUCTURE of assembly_encoder_tilt_0_encoder is
  signal cnt_t : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cnt_t_0 : STD_LOGIC;
  signal cnt_t_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal \plusOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal \plusOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
begin
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(0),
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(1),
      Q => cnt(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(2),
      Q => cnt(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(3),
      Q => cnt(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(4),
      Q => cnt(4),
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(5),
      Q => cnt(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(6),
      Q => cnt(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_t_reg(7),
      Q => cnt(7),
      R => '0'
    );
\cnt_t[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_t_reg(0),
      O => cnt_t(0)
    );
\cnt_t[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst,
      I1 => a,
      O => cnt_t_0
    );
\cnt_t_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(0),
      Q => cnt_t_reg(0),
      R => cnt_t_0
    );
\cnt_t_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(1),
      Q => cnt_t_reg(1),
      R => cnt_t_0
    );
\cnt_t_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(2),
      Q => cnt_t_reg(2),
      R => cnt_t_0
    );
\cnt_t_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(3),
      Q => cnt_t_reg(3),
      R => cnt_t_0
    );
\cnt_t_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(4),
      Q => cnt_t_reg(4),
      R => cnt_t_0
    );
\cnt_t_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(5),
      Q => cnt_t_reg(5),
      R => cnt_t_0
    );
\cnt_t_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(6),
      Q => cnt_t_reg(6),
      R => cnt_t_0
    );
\cnt_t_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => a,
      D => cnt_t(7),
      Q => cnt_t_reg(7),
      R => cnt_t_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => cnt_t_reg(0),
      DI(3 downto 2) => cnt_t_reg(3 downto 2),
      DI(1) => b,
      DI(0) => cnt_t_reg(1),
      O(3 downto 0) => cnt_t(4 downto 1),
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => plusOp_carry_i_4_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3 downto 2) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => cnt_t_reg(5 downto 4),
      O(3) => \NLW_plusOp_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_t(7 downto 5),
      S(3) => '0',
      S(2) => \plusOp_carry_i_1__0_n_0\,
      S(1) => \plusOp_carry_i_2__0_n_0\,
      S(0) => \plusOp_carry_i_3__0_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_reg(3),
      I1 => cnt_t_reg(4),
      O => plusOp_carry_i_1_n_0
    );
\plusOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_reg(6),
      I1 => cnt_t_reg(7),
      O => \plusOp_carry_i_1__0_n_0\
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_reg(2),
      I1 => cnt_t_reg(3),
      O => plusOp_carry_i_2_n_0
    );
\plusOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_reg(5),
      I1 => cnt_t_reg(6),
      O => \plusOp_carry_i_2__0_n_0\
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b,
      I1 => cnt_t_reg(2),
      O => plusOp_carry_i_3_n_0
    );
\plusOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_reg(4),
      I1 => cnt_t_reg(5),
      O => \plusOp_carry_i_3__0_n_0\
    );
plusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b,
      I1 => cnt_t_reg(1),
      O => plusOp_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_encoder_tilt_0 is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of assembly_encoder_tilt_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of assembly_encoder_tilt_0 : entity is "assembly_encoder_tilt_0,encoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of assembly_encoder_tilt_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of assembly_encoder_tilt_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of assembly_encoder_tilt_0 : entity is "encoder,Vivado 2020.2";
end assembly_encoder_tilt_0;

architecture STRUCTURE of assembly_encoder_tilt_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.assembly_encoder_tilt_0_encoder
     port map (
      a => a,
      b => b,
      clk => clk,
      cnt(7 downto 0) => cnt(7 downto 0),
      rst => rst
    );
end STRUCTURE;
