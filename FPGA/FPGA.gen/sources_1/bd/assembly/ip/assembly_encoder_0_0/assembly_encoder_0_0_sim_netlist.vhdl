-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed May 19 08:27:32 2021
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
    u : out STD_LOGIC;
    d : out STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of assembly_encoder_0_0_encoder : entity is "encoder";
end assembly_encoder_0_0_encoder;

architecture STRUCTURE of assembly_encoder_0_0_encoder is
  signal q0 : STD_LOGIC;
  signal q0_i_1_n_0 : STD_LOGIC;
  signal q1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \u__0\ : label is "soft_lutpair0";
begin
\d__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C432"
    )
        port map (
      I0 => b,
      I1 => q1,
      I2 => q0,
      I3 => a,
      O => d
    );
q0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b,
      I1 => a,
      O => q0_i_1_n_0
    );
q0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q0_i_1_n_0,
      Q => q0,
      R => '0'
    );
q1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b,
      Q => q1,
      R => '0'
    );
\u__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"183C"
    )
        port map (
      I0 => b,
      I1 => a,
      I2 => q1,
      I3 => q0,
      O => u
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
    u : out STD_LOGIC;
    d : out STD_LOGIC
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
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.assembly_encoder_0_0_encoder
     port map (
      a => a,
      b => b,
      clk => clk,
      d => d,
      u => u
    );
end STRUCTURE;
