--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Thu May  6 09:56:30 2021
--Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target assembly.bd
--Design      : assembly
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity assembly is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of assembly : entity is "assembly,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=assembly,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of assembly : entity is "assembly.hwdef";
end assembly;

architecture STRUCTURE of assembly is
  component assembly_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component assembly_clock_divider_0_0;
  component assembly_spi_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ss : in STD_LOGIC;
    sdo : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component assembly_spi_0_0;
  component assembly_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cnt : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component assembly_encoder_0_0;
  component assembly_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component assembly_xlslice_0_0;
  component assembly_pwm_0_0 is
  port (
    clk : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o : out STD_LOGIC
  );
  end component assembly_pwm_0_0;
  component assembly_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component assembly_xlconcat_0_1;
  component assembly_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component assembly_xlconstant_0_1;
  component assembly_clock_divider_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component assembly_clock_divider_1_0;
  signal a_0_1 : STD_LOGIC;
  signal b_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clock_divider_0_clk_div : STD_LOGIC;
  signal clock_divider_1_clk_div : STD_LOGIC;
  signal encoder_0_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pwm_0_o : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal sclk_0_1 : STD_LOGIC;
  signal sdi_0_1 : STD_LOGIC;
  signal spi_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_0_sdo : STD_LOGIC;
  signal ss_0_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_encoder_0_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN assembly_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  a_0_1 <= encoderA;
  b_0_1 <= encoderB;
  clk_1 <= clk;
  rst_0_1 <= rst;
  sclk_0_1 <= sclk;
  sdi_0_1 <= sdi;
  sdo <= spi_0_sdo;
  ss_0_1 <= ss;
  state(3 downto 0) <= xlconcat_0_dout(3 downto 0);
  led(0) <= 'Z';
  led(1) <= 'Z';
  led(2) <= 'Z';
  led(3) <= 'Z';
clock_divider_0: component assembly_clock_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clock_divider_0_clk_div,
      rst => rst_0_1
    );
clock_divider_1: component assembly_clock_divider_1_0
     port map (
      clk => clk_1,
      clk_div => clock_divider_1_clk_div,
      rst => rst_0_1
    );
encoder_0: component assembly_encoder_0_0
     port map (
      a => a_0_1,
      b => b_0_1,
      clk => clock_divider_1_clk_div,
      cnt(9 downto 0) => encoder_0_cnt(9 downto 0),
      rst => rst_0_1,
      state(3 downto 0) => NLW_encoder_0_state_UNCONNECTED(3 downto 0)
    );
pwm_0: component assembly_pwm_0_0
     port map (
      clk => clock_divider_0_clk_div,
      duty_cycle(7 downto 0) => spi_0_data_out(7 downto 0),
      o => pwm_0_o
    );
spi_0: component assembly_spi_0_0
     port map (
      clk => clock_divider_0_clk_div,
      data_in(7 downto 0) => xlslice_0_Dout(7 downto 0),
      data_out(7 downto 0) => spi_0_data_out(7 downto 0),
      rst => rst_0_1,
      sclk => sclk_0_1,
      sdi => sdi_0_1,
      sdo => spi_0_sdo,
      ss => ss_0_1
    );
xlconcat_0: component assembly_xlconcat_0_1
     port map (
      In0(0) => pwm_0_o,
      In1(2 downto 0) => xlconstant_0_dout(2 downto 0),
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
xlconstant_0: component assembly_xlconstant_0_1
     port map (
      dout(2 downto 0) => xlconstant_0_dout(2 downto 0)
    );
xlslice_0: component assembly_xlslice_0_0
     port map (
      Din(9 downto 0) => encoder_0_cnt(9 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
end STRUCTURE;
