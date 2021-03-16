--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Mar 16 11:01:14 2021
--Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target setup.bd
--Design      : setup
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity setup is
  port (
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of setup : entity is "setup,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=setup,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of setup : entity is "setup.hwdef";
end setup;

architecture STRUCTURE of setup is
  component setup_spi_0_0 is
  port (
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC
  );
  end component setup_spi_0_0;
  component setup_encoder_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component setup_encoder_0_0;
  signal a_0_1 : STD_LOGIC;
  signal b_0_1 : STD_LOGIC;
  signal encoder_0_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mosi_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal sclk_0_1 : STD_LOGIC;
  signal spi_0_miso : STD_LOGIC;
  signal ss_0_1 : STD_LOGIC;
  signal NLW_spi_0_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  a_0_1 <= encoder_a;
  b_0_1 <= encoder_b;
  miso <= spi_0_miso;
  mosi_0_1 <= mosi;
  rst_0_1 <= rst;
  sclk_0_1 <= sclk;
  ss_0_1 <= ss;
encoder_0: component setup_encoder_0_0
     port map (
      a => a_0_1,
      b => b_0_1,
      cnt(7 downto 0) => encoder_0_cnt(7 downto 0)
    );
spi_0: component setup_spi_0_0
     port map (
      data_in(7 downto 0) => encoder_0_cnt(7 downto 0),
      data_out(7 downto 0) => NLW_spi_0_data_out_UNCONNECTED(7 downto 0),
      miso => spi_0_miso,
      mosi => mosi_0_1,
      rst => rst_0_1,
      sclk => sclk_0_1,
      ss => ss_0_1
    );
end STRUCTURE;
