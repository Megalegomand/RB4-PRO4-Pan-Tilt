--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Fri Mar 26 20:45:34 2021
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
    clk : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm : out STD_LOGIC_VECTOR ( 0 to 0 );
    sck : in STD_LOGIC;
    ss : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
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
  component system_pwm_0_0 is
  port (
    clk : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o : out STD_LOGIC
  );
  end component system_pwm_0_0;
  component system_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component system_xlconstant_0_0;
  component system_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component system_clock_divider_0_0;
  component system_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_1_0;
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
  signal clock_divider_0_clk_div : STD_LOGIC;
  signal mosi_0_1 : STD_LOGIC;
  signal pwm_0_o : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sclk_0_1 : STD_LOGIC;
  signal spi_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_0_miso : STD_LOGIC;
  signal ss_0_1 : STD_LOGIC;
  signal sysclk_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_encoder_0_cnt_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN system_sysclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  a_0_1 <= encoder_a;
  b_0_1 <= encoder_b;
  miso <= spi_0_miso;
  mosi_0_1 <= mosi;
  pwm(0) <= pwm_0_o;
  sclk_0_1 <= sck;
  ss_0_1 <= ss;
  sysclk_1 <= clk;
clock_divider_0: component system_clock_divider_0_0
     port map (
      clk => sysclk_1,
      clk_div => clock_divider_0_clk_div,
      rst => rst_0_1(0)
    );
encoder_0: component system_encoder_0_0
     port map (
      a => a_0_1,
      b => b_0_1,
      cnt(7 downto 0) => NLW_encoder_0_cnt_UNCONNECTED(7 downto 0),
      rst => rst_0_1(0)
    );
pwm_0: component system_pwm_0_0
     port map (
      clk => clock_divider_0_clk_div,
      duty_cycle(7 downto 0) => spi_0_data_out(7 downto 0),
      o => pwm_0_o
    );
spi_0: component system_spi_0_0
     port map (
      data_in(7 downto 0) => xlconstant_0_dout(7 downto 0),
      data_out(7 downto 0) => spi_0_data_out(7 downto 0),
      miso => spi_0_miso,
      mosi => mosi_0_1,
      rst => rst_0_1(0),
      sclk => sclk_0_1,
      ss => ss_0_1
    );
xlconstant_0: component system_xlconstant_0_0
     port map (
      dout(7 downto 0) => xlconstant_0_dout(7 downto 0)
    );
xlconstant_1: component system_xlconstant_1_0
     port map (
      dout(0) => rst_0_1(0)
    );
end STRUCTURE;
