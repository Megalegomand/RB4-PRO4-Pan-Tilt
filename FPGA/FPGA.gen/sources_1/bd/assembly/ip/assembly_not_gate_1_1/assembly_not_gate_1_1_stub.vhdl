-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 18 15:50:17 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_not_gate_1_1/assembly_not_gate_1_1_stub.vhdl
-- Design      : assembly_not_gate_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity assembly_not_gate_1_1 is
  Port ( 
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );

end assembly_not_gate_1_1;

architecture stub of assembly_not_gate_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i,o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "not_gate,Vivado 2020.2";
begin
end;
