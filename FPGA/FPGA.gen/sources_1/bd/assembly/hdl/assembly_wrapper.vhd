--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Sat May 22 00:16:30 2021
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
    ar : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    pan_a : in STD_LOGIC;
    pan_b : in STD_LOGIC;
    pan_en : out STD_LOGIC;
    pan_in1 : out STD_LOGIC;
    pan_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    sdo : out STD_LOGIC;
    ss : in STD_LOGIC;
    tilt_a : in STD_LOGIC;
    tilt_b : in STD_LOGIC;
    tilt_en : out STD_LOGIC;
    tilt_in1 : out STD_LOGIC;
    tilt_in2 : out STD_LOGIC_VECTOR ( 0 to 0 )
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
    tilt_b : in STD_LOGIC;
    tilt_a : in STD_LOGIC;
    pan_in1 : out STD_LOGIC;
    pan_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pan_en : out STD_LOGIC;
    pan_b : in STD_LOGIC;
    pan_a : in STD_LOGIC;
    tilt_en : out STD_LOGIC;
    tilt_in1 : out STD_LOGIC;
    tilt_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ar : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  end component assembly;
begin
assembly_i: component assembly
     port map (
      ar(7 downto 0) => ar(7 downto 0),
      clk => clk,
      pan_a => pan_a,
      pan_b => pan_b,
      pan_en => pan_en,
      pan_in1 => pan_in1,
      pan_in2(0) => pan_in2(0),
      rst => rst,
      sclk => sclk,
      sdi => sdi,
      sdo => sdo,
      ss => ss,
      tilt_a => tilt_a,
      tilt_b => tilt_b,
      tilt_en => tilt_en,
      tilt_in1 => tilt_in1,
      tilt_in2(0) => tilt_in2(0)
    );
end STRUCTURE;
