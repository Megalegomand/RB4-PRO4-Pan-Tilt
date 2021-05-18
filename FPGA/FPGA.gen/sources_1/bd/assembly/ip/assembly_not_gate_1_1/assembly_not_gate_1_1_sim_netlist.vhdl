-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 18 15:50:18 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_not_gate_1_1/assembly_not_gate_1_1_sim_netlist.vhdl
-- Design      : assembly_not_gate_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_not_gate_1_1 is
  port (
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of assembly_not_gate_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of assembly_not_gate_1_1 : entity is "assembly_not_gate_1_1,not_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of assembly_not_gate_1_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of assembly_not_gate_1_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of assembly_not_gate_1_1 : entity is "not_gate,Vivado 2020.2";
end assembly_not_gate_1_1;

architecture STRUCTURE of assembly_not_gate_1_1 is
begin
o_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i,
      O => o
    );
end STRUCTURE;
