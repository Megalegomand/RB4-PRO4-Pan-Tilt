--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Thu May  6 09:56:31 2021
--Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target assembly_wrapper.bd
--Design      : assembly_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly_wrapper is
  port (
    clk : in STD_LOGIC;
    encoderA : in STD_LOGIC;
    encoderB : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    sdo : out STD_LOGIC;
    ss : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end assembly_wrapper;

architecture STRUCTURE of assembly_wrapper is
  component assembly is
  port (
    clk : in STD_LOGIC;
    ss : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sclk : in STD_LOGIC;
    sdo : out STD_LOGIC;
    sdi : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    encoderB : in STD_LOGIC;
    encoderA : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component assembly;
begin
assembly_i: component assembly
     port map (
      clk => clk,
      encoderA => encoderA,
      encoderB => encoderB,
      led(3 downto 0) => led(3 downto 0),
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss,
      state(3 downto 0) => state(3 downto 0)
    );
end STRUCTURE;
