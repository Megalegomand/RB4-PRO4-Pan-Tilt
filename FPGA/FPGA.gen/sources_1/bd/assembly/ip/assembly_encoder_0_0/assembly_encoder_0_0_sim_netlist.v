// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 29 13:26:44 2021
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
    state,
    cnt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input a;
  input b;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [3:0]state;
  output [7:0]cnt;

  wire a;
  wire b;
  wire clk;
  wire [7:0]cnt;
  wire rst;
  wire [1:0]\^state ;

  assign state[3] = a;
  assign state[2] = b;
  assign state[1:0] = \^state [1:0];
  assembly_encoder_0_0_encoder U0
       (.a(a),
        .b(b),
        .clk(clk),
        .cnt(cnt),
        .rst(rst),
        .state(\^state ));
endmodule

(* ORIG_REF_NAME = "encoder" *) 
module assembly_encoder_0_0_encoder
   (state,
    cnt,
    b,
    clk,
    a,
    rst);
  output [1:0]state;
  output [7:0]cnt;
  input b;
  input clk;
  input a;
  input rst;

  wire a;
  wire b;
  wire clk;
  wire [7:0]cnt;
  wire \cnt_t[4]_i_2_n_0 ;
  wire \cnt_t[4]_i_3_n_0 ;
  wire \cnt_t[4]_i_4_n_0 ;
  wire \cnt_t[4]_i_5_n_0 ;
  wire \cnt_t[7]_i_2_n_0 ;
  wire \cnt_t[7]_i_3_n_0 ;
  wire \cnt_t[7]_i_4_n_0 ;
  wire cnt_t__0;
  wire cnt_t_n_0;
  wire \cnt_t_reg[4]_i_1_n_0 ;
  wire \cnt_t_reg[4]_i_1_n_1 ;
  wire \cnt_t_reg[4]_i_1_n_2 ;
  wire \cnt_t_reg[4]_i_1_n_3 ;
  wire \cnt_t_reg[7]_i_1_n_2 ;
  wire \cnt_t_reg[7]_i_1_n_3 ;
  wire [7:0]p_0_in;
  wire rst;
  wire [1:0]state;
  wire [3:2]\NLW_cnt_t_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_t_reg[7]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h90000090)) 
    \/i_ 
       (.I0(b),
        .I1(state[0]),
        .I2(rst),
        .I3(state[1]),
        .I4(a),
        .O(cnt_t__0));
  FDRE a_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(a),
        .Q(state[1]),
        .R(1'b0));
  FDRE b_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(b),
        .Q(state[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    cnt_t
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .O(cnt_t_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t[0]_i_1 
       (.I0(cnt[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[4]_i_2 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[4]),
        .O(\cnt_t[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[4]_i_3 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[3]),
        .O(\cnt_t[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[4]_i_4 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[2]),
        .O(\cnt_t[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[4]_i_5 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[1]),
        .O(\cnt_t[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[7]_i_2 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[7]),
        .O(\cnt_t[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[7]_i_3 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[6]),
        .O(\cnt_t[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDA5225AD)) 
    \cnt_t[7]_i_4 
       (.I0(b),
        .I1(state[0]),
        .I2(state[1]),
        .I3(a),
        .I4(cnt[5]),
        .O(\cnt_t[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[0] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[0]),
        .Q(cnt[0]),
        .R(cnt_t__0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[1] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[1]),
        .Q(cnt[1]),
        .R(cnt_t__0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[2] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[2]),
        .Q(cnt[2]),
        .R(cnt_t__0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[3] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[3]),
        .Q(cnt[3]),
        .R(cnt_t__0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[4] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[4]),
        .Q(cnt[4]),
        .R(cnt_t__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_t_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\cnt_t_reg[4]_i_1_n_0 ,\cnt_t_reg[4]_i_1_n_1 ,\cnt_t_reg[4]_i_1_n_2 ,\cnt_t_reg[4]_i_1_n_3 }),
        .CYINIT(cnt[0]),
        .DI(cnt[4:1]),
        .O(p_0_in[4:1]),
        .S({\cnt_t[4]_i_2_n_0 ,\cnt_t[4]_i_3_n_0 ,\cnt_t[4]_i_4_n_0 ,\cnt_t[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[5] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[5]),
        .Q(cnt[5]),
        .R(cnt_t__0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[6] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[6]),
        .Q(cnt[6]),
        .R(cnt_t__0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_reg[7] 
       (.C(clk),
        .CE(cnt_t_n_0),
        .D(p_0_in[7]),
        .Q(cnt[7]),
        .R(cnt_t__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_t_reg[7]_i_1 
       (.CI(\cnt_t_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_t_reg[7]_i_1_CO_UNCONNECTED [3:2],\cnt_t_reg[7]_i_1_n_2 ,\cnt_t_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt[6:5]}),
        .O({\NLW_cnt_t_reg[7]_i_1_O_UNCONNECTED [3],p_0_in[7:5]}),
        .S({1'b0,\cnt_t[7]_i_2_n_0 ,\cnt_t[7]_i_3_n_0 ,\cnt_t[7]_i_4_n_0 }));
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
