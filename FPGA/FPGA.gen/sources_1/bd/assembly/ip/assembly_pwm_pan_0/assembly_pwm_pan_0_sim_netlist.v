// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri May 21 22:39:51 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_pwm_pan_0/assembly_pwm_pan_0_sim_netlist.v
// Design      : assembly_pwm_pan_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "assembly_pwm_pan_0,pwm,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module assembly_pwm_pan_0
   (clk,
    duty_cycle,
    o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [7:0]duty_cycle;
  output o;

  wire clk;
  wire [7:0]duty_cycle;
  wire o;

  assembly_pwm_pan_0_pwm U0
       (.clk(clk),
        .duty_cycle(duty_cycle),
        .o(o));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module assembly_pwm_pan_0_pwm
   (o,
    duty_cycle,
    clk);
  output o;
  input [7:0]duty_cycle;
  input clk;

  wire clk;
  wire \cnt[7]_i_2_n_0 ;
  wire [7:0]cnt_reg;
  wire [7:0]duty_cycle;
  wire [7:0]duty_cycle_t;
  wire duty_cycle_t1;
  wire \duty_cycle_t[7]_i_2_n_0 ;
  wire o;
  wire o_i_1_n_0;
  wire o_i_3_n_0;
  wire o_i_4_n_0;
  wire o_i_5_n_0;
  wire o_i_6_n_0;
  wire o_i_7_n_0;
  wire p_0_in;
  wire [7:0]plusOp;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_2_n_0 ),
        .I1(cnt_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_1 
       (.I0(\cnt[7]_i_2_n_0 ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_2 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[2]),
        .I5(cnt_reg[4]),
        .O(\cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(cnt_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(cnt_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(cnt_reg[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \duty_cycle_t[7]_i_1 
       (.I0(\duty_cycle_t[7]_i_2_n_0 ),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \duty_cycle_t[7]_i_2 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[6]),
        .O(\duty_cycle_t[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[0]),
        .Q(duty_cycle_t[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[1]),
        .Q(duty_cycle_t[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[2]),
        .Q(duty_cycle_t[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[3]),
        .Q(duty_cycle_t[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[4]),
        .Q(duty_cycle_t[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[5]),
        .Q(duty_cycle_t[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[6]),
        .Q(duty_cycle_t[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_cycle_t_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(duty_cycle[7]),
        .Q(duty_cycle_t[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    o_i_1
       (.I0(o),
        .I1(duty_cycle_t1),
        .I2(o_i_3_n_0),
        .I3(o_i_4_n_0),
        .O(o_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_i_2
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(\duty_cycle_t[7]_i_2_n_0 ),
        .O(duty_cycle_t1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_i_3
       (.I0(duty_cycle[2]),
        .I1(duty_cycle[3]),
        .I2(duty_cycle[0]),
        .I3(duty_cycle[1]),
        .I4(o_i_5_n_0),
        .O(o_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    o_i_4
       (.I0(duty_cycle_t[7]),
        .I1(cnt_reg[7]),
        .I2(duty_cycle_t[6]),
        .I3(cnt_reg[6]),
        .I4(o_i_6_n_0),
        .I5(o_i_7_n_0),
        .O(o_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_i_5
       (.I0(duty_cycle[5]),
        .I1(duty_cycle[4]),
        .I2(duty_cycle[7]),
        .I3(duty_cycle[6]),
        .O(o_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_i_6
       (.I0(cnt_reg[3]),
        .I1(duty_cycle_t[3]),
        .I2(duty_cycle_t[5]),
        .I3(cnt_reg[5]),
        .I4(duty_cycle_t[4]),
        .I5(cnt_reg[4]),
        .O(o_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_i_7
       (.I0(cnt_reg[0]),
        .I1(duty_cycle_t[0]),
        .I2(duty_cycle_t[2]),
        .I3(cnt_reg[2]),
        .I4(duty_cycle_t[1]),
        .I5(cnt_reg[1]),
        .O(o_i_7_n_0));
  FDRE o_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i_1_n_0),
        .Q(o),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
