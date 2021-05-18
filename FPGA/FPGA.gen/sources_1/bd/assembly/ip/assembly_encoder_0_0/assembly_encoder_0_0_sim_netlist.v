// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 18 15:29:13 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_encoder_0_0/assembly_encoder_0_0_sim_netlist.v
// Design      : assembly_encoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "assembly_encoder_0_0,encoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "encoder,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module assembly_encoder_0_0
   (clk,
    a,
    b,
    rst,
    cnt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input a;
  input b;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [7:0]cnt;

  wire a;
  wire b;
  wire clk;
  wire [7:0]cnt;

  assembly_encoder_0_0_encoder U0
       (.a(a),
        .b(b),
        .clk(clk),
        .cnt(cnt));
endmodule

(* ORIG_REF_NAME = "encoder" *) 
module assembly_encoder_0_0_encoder
   (cnt,
    b,
    a,
    clk);
  output [7:0]cnt;
  input b;
  input a;
  input clk;

  wire a;
  wire b;
  wire clk;
  wire [7:0]cnt;
  wire [7:0]cnt_t;
  wire cnt_t0__0_n_2;
  wire cnt_t0__0_n_3;
  wire cnt_t0_i_1__0_n_0;
  wire cnt_t0_i_1_n_0;
  wire cnt_t0_i_2__0_n_0;
  wire cnt_t0_i_2_n_0;
  wire cnt_t0_i_3__0_n_0;
  wire cnt_t0_i_3_n_0;
  wire cnt_t0_i_4_n_0;
  wire cnt_t0_i_5_n_0;
  wire cnt_t0_n_0;
  wire cnt_t0_n_1;
  wire cnt_t0_n_2;
  wire cnt_t0_n_3;
  wire [7:0]cnt_t_reg;
  wire [3:2]NLW_cnt_t0__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_t0__0_O_UNCONNECTED;

  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[0]),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[1]),
        .Q(cnt[1]),
        .R(1'b0));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[2]),
        .Q(cnt[2]),
        .R(1'b0));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[3]),
        .Q(cnt[3]),
        .R(1'b0));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[4]),
        .Q(cnt[4]),
        .R(1'b0));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[5]),
        .Q(cnt[5]),
        .R(1'b0));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[6]),
        .Q(cnt[6]),
        .R(1'b0));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[7]),
        .Q(cnt[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_t0
       (.CI(1'b0),
        .CO({cnt_t0_n_0,cnt_t0_n_1,cnt_t0_n_2,cnt_t0_n_3}),
        .CYINIT(cnt_t_reg[0]),
        .DI({cnt_t_reg[3:2],cnt_t0_i_1__0_n_0,b}),
        .O(cnt_t[4:1]),
        .S({cnt_t0_i_2_n_0,cnt_t0_i_3_n_0,cnt_t0_i_4_n_0,cnt_t0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_t0__0
       (.CI(cnt_t0_n_0),
        .CO({NLW_cnt_t0__0_CO_UNCONNECTED[3:2],cnt_t0__0_n_2,cnt_t0__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt_t_reg[5:4]}),
        .O({NLW_cnt_t0__0_O_UNCONNECTED[3],cnt_t[7:5]}),
        .S({1'b0,cnt_t0_i_1_n_0,cnt_t0_i_2__0_n_0,cnt_t0_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cnt_t0_i_1
       (.I0(cnt_t_reg[6]),
        .I1(cnt_t_reg[7]),
        .O(cnt_t0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_t0_i_1__0
       (.I0(b),
        .O(cnt_t0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt_t0_i_2
       (.I0(cnt_t_reg[3]),
        .I1(cnt_t_reg[4]),
        .O(cnt_t0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt_t0_i_2__0
       (.I0(cnt_t_reg[5]),
        .I1(cnt_t_reg[6]),
        .O(cnt_t0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt_t0_i_3
       (.I0(cnt_t_reg[2]),
        .I1(cnt_t_reg[3]),
        .O(cnt_t0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt_t0_i_3__0
       (.I0(cnt_t_reg[4]),
        .I1(cnt_t_reg[5]),
        .O(cnt_t0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_t0_i_4
       (.I0(b),
        .I1(cnt_t_reg[2]),
        .O(cnt_t0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_t0_i_5
       (.I0(b),
        .I1(cnt_t_reg[1]),
        .O(cnt_t0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t[0]_i_1 
       (.I0(cnt_t_reg[0]),
        .O(cnt_t[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[0] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[0]),
        .Q(cnt_t_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[1] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[1]),
        .Q(cnt_t_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[2] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[2]),
        .Q(cnt_t_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[3] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[3]),
        .Q(cnt_t_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[4] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[4]),
        .Q(cnt_t_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[5] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[5]),
        .Q(cnt_t_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[6] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[6]),
        .Q(cnt_t_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[7] 
       (.C(a),
        .CE(1'b1),
        .D(cnt_t[7]),
        .Q(cnt_t_reg[7]),
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
