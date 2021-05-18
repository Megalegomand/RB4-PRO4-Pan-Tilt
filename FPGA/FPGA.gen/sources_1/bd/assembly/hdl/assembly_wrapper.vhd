--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue May 18 14:46:23 2021
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
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pan_a : in STD_LOGIC;
    pan_b : in STD_LOGIC;
    pan_en : out STD_LOGIC;
    pan_in1 : out STD_LOGIC;
    pan_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pan_zero : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    sdo : out STD_LOGIC;
    ss : in STD_LOGIC;
    tilt_a : in STD_LOGIC;
    tilt_b : in STD_LOGIC;
    tilt_zero : in STD_LOGIC
  );
end assembly_wrapper;

architecture STRUCTURE of assembly_wrapper is
  component assembly is
  port (
    clk : in STD_LOGIC;
    ss : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdo : out STD_LOGIC;
    sdi : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tilt_b : in STD_LOGIC;
    tilt_a : in STD_LOGIC;
    rst : in STD_LOGIC;
    pan_in1 : out STD_LOGIC;
    pan_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pan_en : out STD_LOGIC;
    tilt_zero : in STD_LOGIC;
    pan_b : in STD_LOGIC;
    pan_a : in STD_LOGIC;
    pan_zero : in STD_LOGIC
  );
  end component assembly;
begin
assembly_i: component assembly
     port map (
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      pan_a => pan_a,
      pan_b => pan_b,
      pan_en => pan_en,
      pan_in1 => pan_in1,
      pan_in2(0) => pan_in2(0),
      pan_zero => pan_zero,
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss,
      tilt_a => tilt_a,
      tilt_b => tilt_b,
      tilt_zero => tilt_zero
    );
end STRUCTURE;
