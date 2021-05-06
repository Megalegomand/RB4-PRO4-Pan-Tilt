-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu May  6 09:58:18 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_encoder_0_0/assembly_encoder_0_0_sim_netlist.vhdl
-- Design      : assembly_encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_encoder_0_0_encoder is
  port (
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cnt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_encoder_0_0_encoder : entity is "encoder";
end assembly_encoder_0_0_encoder;

architecture STRUCTURE of assembly_encoder_0_0_encoder is
  signal \^cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \cnt_t[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t[8]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t__0\ : STD_LOGIC;
  signal cnt_t_n_0 : STD_LOGIC;
  signal \cnt_t_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_t_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_t_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_t_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_t_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_t_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_t_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_t_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_cnt_t_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_t_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_t_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_t_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_t_reg[9]_i_1\ : label is 35;
begin
  cnt(9 downto 0) <= \^cnt\(9 downto 0);
  state(1 downto 0) <= \^state\(1 downto 0);
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => rst,
      I3 => \^state\(1),
      I4 => a,
      O => \cnt_t__0\
    );
a_t_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a,
      Q => \^state\(1),
      R => '0'
    );
b_t_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b,
      Q => \^state\(0),
      R => '0'
    );
cnt_t: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      O => cnt_t_n_0
    );
\cnt_t[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt\(0),
      O => p_0_in(0)
    );
\cnt_t[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(4),
      O => \cnt_t[4]_i_2_n_0\
    );
\cnt_t[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(3),
      O => \cnt_t[4]_i_3_n_0\
    );
\cnt_t[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(2),
      O => \cnt_t[4]_i_4_n_0\
    );
\cnt_t[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(1),
      O => \cnt_t[4]_i_5_n_0\
    );
\cnt_t[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(8),
      O => \cnt_t[8]_i_2_n_0\
    );
\cnt_t[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(7),
      O => \cnt_t[8]_i_3_n_0\
    );
\cnt_t[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(6),
      O => \cnt_t[8]_i_4_n_0\
    );
\cnt_t[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(5),
      O => \cnt_t[8]_i_5_n_0\
    );
\cnt_t[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DA5225AD"
    )
        port map (
      I0 => b,
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => a,
      I4 => \^cnt\(9),
      O => \cnt_t[9]_i_2_n_0\
    );
\cnt_t_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(0),
      Q => \^cnt\(0),
      R => \cnt_t__0\
    );
\cnt_t_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(1),
      Q => \^cnt\(1),
      R => \cnt_t__0\
    );
\cnt_t_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(2),
      Q => \^cnt\(2),
      R => \cnt_t__0\
    );
\cnt_t_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(3),
      Q => \^cnt\(3),
      R => \cnt_t__0\
    );
\cnt_t_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(4),
      Q => \^cnt\(4),
      R => \cnt_t__0\
    );
\cnt_t_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_t_reg[4]_i_1_n_0\,
      CO(2) => \cnt_t_reg[4]_i_1_n_1\,
      CO(1) => \cnt_t_reg[4]_i_1_n_2\,
      CO(0) => \cnt_t_reg[4]_i_1_n_3\,
      CYINIT => \^cnt\(0),
      DI(3 downto 0) => \^cnt\(4 downto 1),
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3) => \cnt_t[4]_i_2_n_0\,
      S(2) => \cnt_t[4]_i_3_n_0\,
      S(1) => \cnt_t[4]_i_4_n_0\,
      S(0) => \cnt_t[4]_i_5_n_0\
    );
\cnt_t_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(5),
      Q => \^cnt\(5),
      R => \cnt_t__0\
    );
\cnt_t_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(6),
      Q => \^cnt\(6),
      R => \cnt_t__0\
    );
\cnt_t_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(7),
      Q => \^cnt\(7),
      R => \cnt_t__0\
    );
\cnt_t_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(8),
      Q => \^cnt\(8),
      R => \cnt_t__0\
    );
\cnt_t_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_t_reg[4]_i_1_n_0\,
      CO(3) => \cnt_t_reg[8]_i_1_n_0\,
      CO(2) => \cnt_t_reg[8]_i_1_n_1\,
      CO(1) => \cnt_t_reg[8]_i_1_n_2\,
      CO(0) => \cnt_t_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^cnt\(8 downto 5),
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3) => \cnt_t[8]_i_2_n_0\,
      S(2) => \cnt_t[8]_i_3_n_0\,
      S(1) => \cnt_t[8]_i_4_n_0\,
      S(0) => \cnt_t[8]_i_5_n_0\
    );
\cnt_t_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_t_n_0,
      D => p_0_in(9),
      Q => \^cnt\(9),
      R => \cnt_t__0\
    );
\cnt_t_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_t_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cnt_t_reg[9]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt_t_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in(9),
      S(3 downto 1) => B"000",
      S(0) => \cnt_t[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cnt : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of assembly_encoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of assembly_encoder_0_0 : entity is "assembly_encoder_0_0,encoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of assembly_encoder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of assembly_encoder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of assembly_encoder_0_0 : entity is "encoder,Vivado 2020.2";
end assembly_encoder_0_0;

architecture STRUCTURE of assembly_encoder_0_0 is
  signal \^a\ : STD_LOGIC;
  signal \^b\ : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN assembly_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^a\ <= a;
  \^b\ <= b;
  state(3) <= \^a\;
  state(2) <= \^b\;
  state(1 downto 0) <= \^state\(1 downto 0);
U0: entity work.assembly_encoder_0_0_encoder
     port map (
      a => \^a\,
      b => \^b\,
      clk => clk,
      cnt(9 downto 0) => cnt(9 downto 0),
      rst => rst,
      state(1 downto 0) => \^state\(1 downto 0)
    );
end STRUCTURE;
