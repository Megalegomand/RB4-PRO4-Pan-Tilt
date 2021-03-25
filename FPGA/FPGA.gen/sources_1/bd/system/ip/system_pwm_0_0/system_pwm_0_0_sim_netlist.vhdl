-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 23 10:48:53 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/system/ip/system_pwm_0_0/system_pwm_0_0_sim_netlist.vhdl
-- Design      : system_pwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pwm_0_0_pwm is
  port (
    o : out STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_pwm_0_0_pwm : entity is "pwm";
end system_pwm_0_0_pwm;

architecture STRUCTURE of system_pwm_0_0_pwm is
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal duty_cycle_t : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal duty_cycle_t1 : STD_LOGIC;
  signal \duty_cycle_t[7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_cycle_t[7]_i_2_n_0\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
  signal o_i_1_n_0 : STD_LOGIC;
  signal o_i_2_n_0 : STD_LOGIC;
  signal o_i_5_n_0 : STD_LOGIC;
  signal o_i_6_n_0 : STD_LOGIC;
  signal o_i_7_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \duty_cycle_t[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_i_3 : label is "soft_lutpair1";
begin
  o <= \^o\;
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => plusOp(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => plusOp(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      I2 => cnt_reg(2),
      O => plusOp(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      O => plusOp(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      I4 => cnt_reg(4),
      O => plusOp(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => cnt_reg(2),
      I4 => cnt_reg(4),
      I5 => cnt_reg(5),
      O => plusOp(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[7]_i_2_n_0\,
      I1 => cnt_reg(6),
      O => plusOp(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[7]_i_2_n_0\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      O => plusOp(7)
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(3),
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => cnt_reg(2),
      I5 => cnt_reg(4),
      O => \cnt[7]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => cnt_reg(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => cnt_reg(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => cnt_reg(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => cnt_reg(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => cnt_reg(4),
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => cnt_reg(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => cnt_reg(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => cnt_reg(7),
      R => '0'
    );
\duty_cycle_t[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \duty_cycle_t[7]_i_2_n_0\,
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => cnt_reg(3),
      I4 => cnt_reg(2),
      O => \duty_cycle_t[7]_i_1_n_0\
    );
\duty_cycle_t[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(4),
      I2 => cnt_reg(7),
      I3 => cnt_reg(6),
      O => \duty_cycle_t[7]_i_2_n_0\
    );
\duty_cycle_t_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(0),
      Q => duty_cycle_t(0),
      R => '0'
    );
\duty_cycle_t_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(1),
      Q => duty_cycle_t(1),
      R => '0'
    );
\duty_cycle_t_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(2),
      Q => duty_cycle_t(2),
      R => '0'
    );
\duty_cycle_t_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(3),
      Q => duty_cycle_t(3),
      R => '0'
    );
\duty_cycle_t_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(4),
      Q => duty_cycle_t(4),
      R => '0'
    );
\duty_cycle_t_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(5),
      Q => duty_cycle_t(5),
      R => '0'
    );
\duty_cycle_t_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(6),
      Q => duty_cycle_t(6),
      R => '0'
    );
\duty_cycle_t_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \duty_cycle_t[7]_i_1_n_0\,
      D => duty_cycle(7),
      Q => duty_cycle_t(7),
      R => '0'
    );
o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \^o\,
      I1 => o_i_2_n_0,
      I2 => duty_cycle_t1,
      I3 => p_0_in,
      O => o_i_1_n_0
    );
o_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => duty_cycle(2),
      I1 => duty_cycle(3),
      I2 => duty_cycle(0),
      I3 => duty_cycle(1),
      I4 => o_i_5_n_0,
      O => o_i_2_n_0
    );
o_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => \duty_cycle_t[7]_i_2_n_0\,
      O => duty_cycle_t1
    );
o_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => duty_cycle_t(7),
      I1 => cnt_reg(7),
      I2 => duty_cycle_t(6),
      I3 => cnt_reg(6),
      I4 => o_i_6_n_0,
      I5 => o_i_7_n_0,
      O => p_0_in
    );
o_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => duty_cycle(5),
      I1 => duty_cycle(4),
      I2 => duty_cycle(7),
      I3 => duty_cycle(6),
      O => o_i_5_n_0
    );
o_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => duty_cycle_t(3),
      I2 => duty_cycle_t(5),
      I3 => cnt_reg(5),
      I4 => duty_cycle_t(4),
      I5 => cnt_reg(4),
      O => o_i_6_n_0
    );
o_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => duty_cycle_t(0),
      I2 => duty_cycle_t(2),
      I3 => cnt_reg(2),
      I4 => duty_cycle_t(1),
      I5 => cnt_reg(1),
      O => o_i_7_n_0
    );
o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i_1_n_0,
      Q => \^o\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pwm_0_0 is
  port (
    clk : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_pwm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_pwm_0_0 : entity is "system_pwm_0_0,pwm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_pwm_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_pwm_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_pwm_0_0 : entity is "pwm,Vivado 2020.2";
end system_pwm_0_0;

architecture STRUCTURE of system_pwm_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.system_pwm_0_0_pwm
     port map (
      clk => clk,
      duty_cycle(7 downto 0) => duty_cycle(7 downto 0),
      o => o
    );
end STRUCTURE;
