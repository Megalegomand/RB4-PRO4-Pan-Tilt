--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Mar 23 10:19:50 2021
--Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    encoder_b : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    ss : in STD_LOGIC;
    miso : out STD_LOGIC;
    pwm : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system;
begin
system_i: component system
     port map (
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      miso => miso,
      mosi => mosi,
      pwm(0) => pwm(0),
      rst => rst,
      sclk => sclk,
      ss => ss
    );
end STRUCTURE;
