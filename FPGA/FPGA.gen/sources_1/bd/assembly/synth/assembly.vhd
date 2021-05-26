--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Wed May 26 09:55:37 2021
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
    ar : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    pan_a : in STD_LOGIC;
    pan_b : in STD_LOGIC;
    pan_en : out STD_LOGIC;
    pan_in1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pan_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pan_zero : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    sdo : out STD_LOGIC;
    ss : in STD_LOGIC;
    tilt_a : in STD_LOGIC;
    tilt_b : in STD_LOGIC;
    tilt_en : out STD_LOGIC;
    tilt_in1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    tilt_in2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    tilt_zero : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of assembly : entity is "assembly,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=assembly,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=12,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
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
  component assembly_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component assembly_xlslice_3_0;
  component assembly_not_gate_1_0 is
  port (
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component assembly_not_gate_1_0;
  component assembly_xlslice_3_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component assembly_xlslice_3_1;
  component assembly_xlslice_4_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component assembly_xlslice_4_0;
  component assembly_xlslice_3_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component assembly_xlslice_3_2;
  component assembly_not_gate_1_1 is
  port (
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component assembly_not_gate_1_1;
  component assembly_xlconcat_0_3 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component assembly_xlconcat_0_3;
  component assembly_spi_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sdi : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ss : in STD_LOGIC;
    sdo : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component assembly_spi_0_0;
  component assembly_clock_divider_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component assembly_clock_divider_0_1;
  component assembly_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    zero : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    col_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cnt : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component assembly_encoder_0_0;
  component assembly_encoder_tilt_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    zero : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    col_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cnt : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component assembly_encoder_tilt_0;
  component assembly_debouncer_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC
  );
  end component assembly_debouncer_0_0;
  component assembly_debouncer_pan_zero_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC
  );
  end component assembly_debouncer_pan_zero_0;
  component assembly_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component assembly_xlslice_0_0;
  component assembly_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component assembly_xlslice_0_1;
  component assembly_pwm_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o : out STD_LOGIC
  );
  end component assembly_pwm_0_0;
  component assembly_pwm_pan_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o : out STD_LOGIC
  );
  end component assembly_pwm_pan_0;
  component assembly_data_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pan_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_rx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pan_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tilt_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_tx : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component assembly_data_controller_0_0;
  signal Net : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clock_divider_1_clk_div : STD_LOGIC;
  signal data_controller_0_spi_tx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_controller_0_tilt_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal debouncer_pan_zero_outp : STD_LOGIC;
  signal debouncer_tilt_zero_outp : STD_LOGIC;
  signal encoder_pan_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal encoder_tilt_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_0_1 : STD_LOGIC;
  signal not_gate_1_o : STD_LOGIC;
  signal not_gate_2_o : STD_LOGIC;
  signal pan_a_1 : STD_LOGIC;
  signal pan_b_1 : STD_LOGIC;
  signal pan_zero_1 : STD_LOGIC;
  signal pwm_0_o : STD_LOGIC;
  signal pwm_tilt_o : STD_LOGIC;
  signal sclk_1 : STD_LOGIC;
  signal sdi_0_1 : STD_LOGIC;
  signal spi_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal spi_0_sdo : STD_LOGIC;
  signal ss_0_1 : STD_LOGIC;
  signal tilt_a_1 : STD_LOGIC;
  signal tilt_b_1 : STD_LOGIC;
  signal tilt_zero_1 : STD_LOGIC;
  signal xlconcat_spi_test_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_tilt_Dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_encoder_pan_col_p_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_encoder_tilt_col_p_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_spi_0_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN assembly_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  ar(7 downto 0) <= xlconcat_spi_test_dout(7 downto 0);
  clk_1 <= clk;
  i_0_1 <= rst;
  pan_a_1 <= pan_a;
  pan_b_1 <= pan_b;
  pan_en <= pwm_0_o;
  pan_in1(0) <= xlslice_3_Dout(0);
  pan_in2(0) <= not_gate_1_o;
  pan_zero_1 <= pan_zero;
  sclk_1 <= sclk;
  sdi_0_1 <= sdi;
  sdo <= spi_0_sdo;
  ss_0_1 <= ss;
  tilt_a_1 <= tilt_a;
  tilt_b_1 <= tilt_b;
  tilt_en <= pwm_tilt_o;
  tilt_in1(0) <= xlslice_6_Dout(0);
  tilt_in2(0) <= not_gate_2_o;
  tilt_zero_1 <= tilt_zero;
clock_divider_0: component assembly_clock_divider_0_0
     port map (
      clk => clk_1,
      clk_div => Net,
      rst => i_0_1
    );
clock_divider_1: component assembly_clock_divider_0_1
     port map (
      clk => clk_1,
      clk_div => clock_divider_1_clk_div,
      rst => i_0_1
    );
data_controller_0: component assembly_data_controller_0_0
     port map (
      clk => Net,
      pan_in(8 downto 0) => xlslice_1_Dout(8 downto 0),
      pan_out(8 downto 0) => xlslice_0_Dout(8 downto 0),
      rst => i_0_1,
      spi_rx(15 downto 0) => spi_0_data_out(15 downto 0),
      spi_tx(15 downto 0) => data_controller_0_spi_tx(15 downto 0),
      tilt_in(8 downto 0) => xlslice_tilt_Dout(8 downto 0),
      tilt_out(8 downto 0) => data_controller_0_tilt_out(8 downto 0)
    );
debouncer_pan_zero: component assembly_debouncer_0_0
     port map (
      clk => Net,
      inp => pan_zero_1,
      outp => debouncer_pan_zero_outp,
      rst => i_0_1
    );
debouncer_tilt_zero: component assembly_debouncer_pan_zero_0
     port map (
      clk => Net,
      inp => tilt_zero_1,
      outp => debouncer_tilt_zero_outp,
      rst => i_0_1
    );
encoder_pan: component assembly_encoder_tilt_0
     port map (
      a => pan_a_1,
      b => pan_b_1,
      clk => Net,
      cnt(9 downto 0) => encoder_pan_cnt(9 downto 0),
      col_p(3 downto 0) => NLW_encoder_pan_col_p_UNCONNECTED(3 downto 0),
      rst => i_0_1,
      zero => debouncer_pan_zero_outp
    );
encoder_tilt: component assembly_encoder_0_0
     port map (
      a => tilt_a_1,
      b => tilt_b_1,
      clk => Net,
      cnt(9 downto 0) => encoder_tilt_cnt(9 downto 0),
      col_p(3 downto 0) => NLW_encoder_tilt_col_p_UNCONNECTED(3 downto 0),
      rst => i_0_1,
      zero => debouncer_tilt_zero_outp
    );
not_gate_1: component assembly_not_gate_1_0
     port map (
      i => xlslice_3_Dout(0),
      o => not_gate_1_o
    );
not_gate_2: component assembly_not_gate_1_1
     port map (
      i => xlslice_6_Dout(0),
      o => not_gate_2_o
    );
pwm_pan: component assembly_pwm_0_0
     port map (
      clk => clock_divider_1_clk_div,
      duty_cycle(7 downto 0) => xlslice_4_Dout(7 downto 0),
      o => pwm_0_o,
      rst => i_0_1
    );
pwm_tilt: component assembly_pwm_pan_0
     port map (
      clk => clock_divider_1_clk_div,
      duty_cycle(7 downto 0) => xlslice_5_Dout(7 downto 0),
      o => pwm_tilt_o,
      rst => i_0_1
    );
spi_0: component assembly_spi_0_0
     port map (
      clk => Net,
      data_in(15 downto 0) => data_controller_0_spi_tx(15 downto 0),
      data_out(15 downto 0) => spi_0_data_out(15 downto 0),
      rst => i_0_1,
      sclk => sclk_1,
      sdi => sdi_0_1,
      sdo => spi_0_sdo,
      ss => ss_0_1,
      state(3 downto 0) => NLW_spi_0_state_UNCONNECTED(3 downto 0)
    );
xlconcat_spi_test: component assembly_xlconcat_0_3
     port map (
      In0(0) => sclk_1,
      In1(0) => ss_0_1,
      In2(0) => sdi_0_1,
      In3(0) => spi_0_sdo,
      In4(0) => '0',
      In5(0) => '0',
      In6(0) => '0',
      In7(0) => '0',
      dout(7 downto 0) => xlconcat_spi_test_dout(7 downto 0)
    );
xlslice_3: component assembly_xlslice_3_0
     port map (
      Din(8 downto 0) => xlslice_0_Dout(8 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
xlslice_4: component assembly_xlslice_3_1
     port map (
      Din(8 downto 0) => xlslice_0_Dout(8 downto 0),
      Dout(7 downto 0) => xlslice_4_Dout(7 downto 0)
    );
xlslice_5: component assembly_xlslice_4_0
     port map (
      Din(8 downto 0) => data_controller_0_tilt_out(8 downto 0),
      Dout(7 downto 0) => xlslice_5_Dout(7 downto 0)
    );
xlslice_6: component assembly_xlslice_3_2
     port map (
      Din(8 downto 0) => data_controller_0_tilt_out(8 downto 0),
      Dout(0) => xlslice_6_Dout(0)
    );
xlslice_pan: component assembly_xlslice_0_1
     port map (
      Din(9 downto 0) => encoder_pan_cnt(9 downto 0),
      Dout(8 downto 0) => xlslice_1_Dout(8 downto 0)
    );
xlslice_tilt: component assembly_xlslice_0_0
     port map (
      Din(9 downto 0) => encoder_tilt_cnt(9 downto 0),
      Dout(8 downto 0) => xlslice_tilt_Dout(8 downto 0)
    );
end STRUCTURE;
