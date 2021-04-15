-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Apr 15 16:25:01 2021
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
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sdo : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sdi : in STD_LOGIC;
    ss : in STD_LOGIC;
    sclk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_spi_0_0_spi : entity is "spi";
end assembly_spi_0_0_spi;

architecture STRUCTURE of assembly_spi_0_0_spi is
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_out_t : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal reg : STD_LOGIC;
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal reg_n : STD_LOGIC;
  signal \reg_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_n_reg_n_0_[2]\ : STD_LOGIC;
  signal sdo_t_i_1_n_0 : STD_LOGIC;
  signal sdo_t_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s_high:100,s_low:010,s_rst:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s_high:100,s_low:010,s_rst:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s_high:100,s_low:010,s_rst:001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_n[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_n[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sdo_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[3]_INST_0\ : label is "soft_lutpair3";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      PRE => rst,
      Q => \^q\(0)
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \^q\(1)
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[0]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0F0E0F0E0FFE0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => ss,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => sclk,
      I5 => \FSM_onehot_next_state_reg[1]_i_2_n_0\,
      O => \FSM_onehot_next_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[1]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C0C0F0E0E0E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => ss,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_next_state_reg[1]_i_2_n_0\,
      I5 => sclk,
      O => \FSM_onehot_next_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \reg_n_reg_n_0_[1]\,
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[2]\,
      O => \FSM_onehot_next_state_reg[1]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[2]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C08"
    )
        port map (
      I0 => \^q\(1),
      I1 => sclk,
      I2 => ss,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => next_state
    );
\data_out_t[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_next_state_reg_n_0_[0]\,
      O => data_out_t
    );
\data_out_t_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => sdi,
      Q => data_out(0)
    );
\data_out_t_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(1),
      Q => data_out(1)
    );
\data_out_t_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(2),
      Q => data_out(2)
    );
\data_out_t_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(3),
      Q => data_out(3)
    );
\data_out_t_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(4),
      Q => data_out(4)
    );
\data_out_t_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(5),
      Q => data_out(5)
    );
\data_out_t_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(6),
      Q => data_out(6)
    );
\data_out_t_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_t,
      CLR => rst,
      D => p_0_in(7),
      Q => data_out(7)
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => sdi,
      I3 => \^q\(0),
      I4 => data_in(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(1),
      I3 => \^q\(0),
      I4 => data_in(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(2),
      I3 => \^q\(0),
      I4 => data_in(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(3),
      I3 => \^q\(0),
      I4 => data_in(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(4),
      I3 => \^q\(0),
      I4 => data_in(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(5),
      I3 => \^q\(0),
      I4 => data_in(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(6),
      I3 => \^q\(0),
      I4 => data_in(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => reg
    );
\reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => p_0_in(7),
      I3 => \^q\(0),
      I4 => data_in(7),
      O => \reg[7]_i_2_n_0\
    );
\reg_n[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFF888"
    )
        port map (
      I0 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_next_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \reg_n_reg_n_0_[0]\,
      O => \reg_n[0]_i_1_n_0\
    );
\reg_n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFFFFFFAC0C0C0"
    )
        port map (
      I0 => \reg_n_reg_n_0_[0]\,
      I1 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_next_state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => \reg_n_reg_n_0_[1]\,
      O => \reg_n[1]_i_1_n_0\
    );
\reg_n[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAAFFFFEAAA0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \reg_n_reg_n_0_[0]\,
      I2 => \reg_n_reg_n_0_[1]\,
      I3 => \^q\(1),
      I4 => reg_n,
      I5 => \reg_n_reg_n_0_[2]\,
      O => \reg_n[2]_i_1_n_0\
    );
\reg_n[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_next_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      O => reg_n
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
      CE => reg,
      CLR => rst,
      D => \reg[0]_i_1_n_0\,
      Q => p_0_in(1)
    );
\reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[1]_i_1_n_0\,
      Q => p_0_in(2)
    );
\reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[2]_i_1_n_0\,
      Q => p_0_in(3)
    );
\reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[3]_i_1_n_0\,
      Q => p_0_in(4)
    );
\reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[4]_i_1_n_0\,
      Q => p_0_in(5)
    );
\reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[5]_i_1_n_0\,
      Q => p_0_in(6)
    );
\reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[6]_i_1_n_0\,
      Q => p_0_in(7)
    );
\reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg,
      CLR => rst,
      D => \reg[7]_i_2_n_0\,
      Q => \p_0_in__0\
    );
sdo_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => sdo_t_reg_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \^q\(1),
      O => sdo
    );
sdo_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF3F3FAA800000"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \FSM_onehot_next_state_reg_n_0_[0]\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_next_state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => sdo_t_reg_n_0,
      O => sdo_t_i_1_n_0
    );
sdo_t_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => sdo_t_i_1_n_0,
      Q => sdo_t_reg_n_0
    );
\state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => state(0)
    );
\state[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => state(1)
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
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN assembly_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.assembly_spi_0_0_spi
     port map (
      Q(1) => state(2),
      Q(0) => state(0),
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss,
      state(1) => state(3),
      state(0) => state(1)
    );
end STRUCTURE;
