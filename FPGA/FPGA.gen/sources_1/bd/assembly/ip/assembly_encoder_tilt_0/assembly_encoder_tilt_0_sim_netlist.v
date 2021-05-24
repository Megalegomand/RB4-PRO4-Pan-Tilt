// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon May 24 13:47:33 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_encoder_tilt_0/assembly_encoder_tilt_0_sim_netlist.v
// Design      : assembly_encoder_tilt_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "assembly_encoder_tilt_0,encoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "encoder,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module assembly_encoder_tilt_0
   (clk,
    rst,
    zero,
    a,
    b,
    col_p,
    cnt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input zero;
  input a;
  input b;
  output [3:0]col_p;
  output [9:0]cnt;

  wire a;
  wire b;
  wire clk;
  wire [9:0]cnt;
  wire [3:0]\^col_p ;
  wire rst;
  wire zero;

  assign col_p[3:2] = \^col_p [3:2];
  assign col_p[1] = zero;
  assign col_p[0] = \^col_p [0];
  assembly_encoder_tilt_0_encoder U0
       (.a(a),
        .b(b),
        .clk(clk),
        .cnt(cnt),
        .col_p(\^col_p [3:2]),
        .rst(rst),
        .zero(zero),
        .zero_t_reg_0(\^col_p [0]));
endmodule

(* ORIG_REF_NAME = "encoder" *) 
module assembly_encoder_tilt_0_encoder
   (col_p,
    cnt,
    zero_t_reg_0,
    a,
    b,
    clk,
    zero,
    rst);
  output [1:0]col_p;
  output [9:0]cnt;
  output [0:0]zero_t_reg_0;
  input a;
  input b;
  input clk;
  input zero;
  input rst;

  wire a;
  wire b;
  wire clk;
  wire [9:0]cnt;
  wire [9:0]cnt_t;
  wire \cnt_t[9]_i_1_n_0 ;
  wire \cnt_t[9]_i_2_n_0 ;
  wire [9:0]cnt_t_reg;
  wire [1:0]col_p;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry_i_1__0_n_0;
  wire plusOp_carry_i_1__1_n_0;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2__0_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3__0_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4__0_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire rst;
  wire zero;
  wire zero_t1__0;
  wire zero_t_i_1_n_0;
  wire [0:0]zero_t_reg_0;
  wire [3:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__1_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    a_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(a),
        .Q(col_p[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    b_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(b),
        .Q(col_p[0]),
        .R(1'b0));
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
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[8]),
        .Q(cnt[8]),
        .R(1'b0));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_t_reg[9]),
        .Q(cnt[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t[0]_i_1 
       (.I0(cnt_t_reg[0]),
        .O(cnt_t[0]));
  LUT6 #(
    .INIT(64'hE33EBCCB20028008)) 
    \cnt_t[9]_i_1 
       (.I0(zero_t_reg_0),
        .I1(col_p[0]),
        .I2(col_p[1]),
        .I3(b),
        .I4(a),
        .I5(rst),
        .O(\cnt_t[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cnt_t[9]_i_2 
       (.I0(a),
        .I1(b),
        .I2(col_p[0]),
        .I3(col_p[1]),
        .O(\cnt_t[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[0] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[0]),
        .Q(cnt_t_reg[0]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[1] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[1]),
        .Q(cnt_t_reg[1]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[2] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[2]),
        .Q(cnt_t_reg[2]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[3] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[3]),
        .Q(cnt_t_reg[3]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[4] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[4]),
        .Q(cnt_t_reg[4]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[5] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[5]),
        .Q(cnt_t_reg[5]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[6] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[6]),
        .Q(cnt_t_reg[6]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[7] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[7]),
        .Q(cnt_t_reg[7]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[8] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[8]),
        .Q(cnt_t_reg[8]),
        .R(\cnt_t[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[9] 
       (.C(clk),
        .CE(\cnt_t[9]_i_2_n_0 ),
        .D(cnt_t[9]),
        .Q(cnt_t_reg[9]),
        .R(\cnt_t[9]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(cnt_t_reg[0]),
        .DI({cnt_t_reg[3:2],zero_t1__0,cnt_t_reg[1]}),
        .O(cnt_t[4:1]),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_t_reg[7:4]),
        .O(cnt_t[8:5]),
        .S({plusOp_carry_i_1__0_n_0,plusOp_carry_i_2__0_n_0,plusOp_carry_i_3__0_n_0,plusOp_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO(NLW_plusOp_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3:1],cnt_t[9]}),
        .S({1'b0,1'b0,1'b0,plusOp_carry_i_1__1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_1
       (.I0(cnt_t_reg[3]),
        .I1(cnt_t_reg[4]),
        .O(plusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_1__0
       (.I0(cnt_t_reg[7]),
        .I1(cnt_t_reg[8]),
        .O(plusOp_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_1__1
       (.I0(cnt_t_reg[8]),
        .I1(cnt_t_reg[9]),
        .O(plusOp_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2
       (.I0(cnt_t_reg[2]),
        .I1(cnt_t_reg[3]),
        .O(plusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2__0
       (.I0(cnt_t_reg[6]),
        .I1(cnt_t_reg[7]),
        .O(plusOp_carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h4182BE7D)) 
    plusOp_carry_i_3
       (.I0(a),
        .I1(b),
        .I2(col_p[1]),
        .I3(col_p[0]),
        .I4(cnt_t_reg[2]),
        .O(plusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3__0
       (.I0(cnt_t_reg[5]),
        .I1(cnt_t_reg[6]),
        .O(plusOp_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h4182BE7D)) 
    plusOp_carry_i_4
       (.I0(a),
        .I1(b),
        .I2(col_p[1]),
        .I3(col_p[0]),
        .I4(cnt_t_reg[1]),
        .O(plusOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_4__0
       (.I0(cnt_t_reg[4]),
        .I1(cnt_t_reg[5]),
        .O(plusOp_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h4182)) 
    zero_t1
       (.I0(col_p[0]),
        .I1(col_p[1]),
        .I2(b),
        .I3(a),
        .O(zero_t1__0));
  LUT6 #(
    .INIT(64'hE20E0EE22EE0E02E)) 
    zero_t_i_1
       (.I0(zero),
        .I1(zero_t_reg_0),
        .I2(col_p[0]),
        .I3(col_p[1]),
        .I4(b),
        .I5(a),
        .O(zero_t_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    zero_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(zero_t_i_1_n_0),
        .Q(zero_t_reg_0),
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
