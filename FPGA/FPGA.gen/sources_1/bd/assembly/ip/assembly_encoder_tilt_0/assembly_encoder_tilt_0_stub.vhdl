-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri May 21 14:03:58 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_encoder_tilt_0/assembly_encoder_tilt_0_stub.vhdl
-- Design      : assembly_encoder_tilt_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity assembly_encoder_tilt_0 is
  Port ( 
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    col_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cnt : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end assembly_encoder_tilt_0;

architecture stub of assembly_encoder_tilt_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,a,b,rst,col_p[3:0],cnt[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "encoder,Vivado 2020.2";
begin
end;
