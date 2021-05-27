-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 25 23:00:45 2021
-- Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_data_controller_0_0/assembly_data_controller_0_0_stub.vhdl
-- Design      : assembly_data_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity assembly_data_controller_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pan_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_rx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pan_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_tx : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end assembly_data_controller_0_0;

architecture stub of assembly_data_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,pan_in[8:0],tilt_in[8:0],spi_rx[15:0],pan_out[8:0],tilt_out[8:0],spi_tx[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "data_controller,Vivado 2020.2";
begin
end;
