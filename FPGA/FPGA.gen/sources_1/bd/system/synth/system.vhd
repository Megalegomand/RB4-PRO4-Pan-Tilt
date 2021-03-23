--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Mar 23 10:19:50 2021
--Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_encoder_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component system_encoder_0_0;
  component system_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlslice_0_0;
  component system_spi_0_0 is
  port (
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC
  );
  end component system_spi_0_0;
  signal a_0_1 : STD_LOGIC;
  signal b_0_1 : STD_LOGIC;
  signal encoder_0_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mosi_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal sclk_0_1 : STD_LOGIC;
  signal spi_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_0_miso : STD_LOGIC;
  signal ss_0_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  a_0_1 <= encoder_a;
  b_0_1 <= encoder_b;
  miso <= spi_0_miso;
  mosi_0_1 <= mosi;
  pwm(0) <= xlslice_0_Dout(0);
  rst_0_1 <= rst;
  sclk_0_1 <= sclk;
  ss_0_1 <= ss;
encoder_0: component system_encoder_0_0
     port map (
      a => a_0_1,
      b => b_0_1,
      cnt(7 downto 0) => encoder_0_cnt(7 downto 0),
      rst => rst_0_1
    );
spi_0: component system_spi_0_0
     port map (
      data_in(7 downto 0) => encoder_0_cnt(7 downto 0),
      data_out(7 downto 0) => spi_0_data_out(7 downto 0),
      miso => spi_0_miso,
      mosi => mosi_0_1,
      rst => rst_0_1,
      sclk => sclk_0_1,
      ss => ss_0_1
    );
xlslice_0: component system_xlslice_0_0
     port map (
      Din(7 downto 0) => spi_0_data_out(7 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
