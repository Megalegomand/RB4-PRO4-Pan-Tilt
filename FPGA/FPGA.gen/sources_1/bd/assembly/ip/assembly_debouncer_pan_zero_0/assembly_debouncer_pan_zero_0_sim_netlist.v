// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon May 24 13:28:35 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_debouncer_pan_zero_0/assembly_debouncer_pan_zero_0_sim_netlist.v
// Design      : assembly_debouncer_pan_zero_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "assembly_debouncer_pan_zero_0,debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "debouncer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module assembly_debouncer_pan_zero_0
   (clk,
    rst,
    inp,
    outp);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input inp;
  output outp;

  wire clk;
  wire inp;
  wire outp;
  wire rst;

  assembly_debouncer_pan_zero_0_debouncer U0
       (.clk(clk),
        .inp(inp),
        .outp(outp),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module assembly_debouncer_pan_zero_0_debouncer
   (outp,
    rst,
    inp,
    clk);
  output outp;
  input rst;
  input inp;
  input clk;

  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire \FSM_sequential_current_state[1]_i_5_n_0 ;
  wire \FSM_sequential_current_state[1]_i_6_n_0 ;
  wire \FSM_sequential_current_state[1]_i_7_n_0 ;
  wire clk;
  wire [19:0]cnt;
  wire cnt0;
  wire \cnt[19]_i_1_n_0 ;
  wire [1:0]current_state;
  wire [19:1]in9;
  wire [0:0]in9__0;
  wire inp;
  wire [1:0]next_state__0;
  wire outp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire rst;
  wire [3:2]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7003)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(inp),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(next_state__0[1]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_current_state[1]_i_5_n_0 ),
        .I3(\FSM_sequential_current_state[1]_i_6_n_0 ),
        .I4(\FSM_sequential_current_state[1]_i_7_n_0 ),
        .I5(inp),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(cnt[9]),
        .I1(cnt[8]),
        .I2(cnt[11]),
        .I3(cnt[10]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[7]),
        .I3(cnt[6]),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[1]_i_5 
       (.I0(cnt[17]),
        .I1(cnt[16]),
        .I2(cnt[19]),
        .I3(cnt[18]),
        .O(\FSM_sequential_current_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[1]_i_6 
       (.I0(cnt[13]),
        .I1(cnt[12]),
        .I2(cnt[15]),
        .I3(cnt[14]),
        .O(\FSM_sequential_current_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[1]_i_7 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\FSM_sequential_current_state[1]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "s_out:01,s_idle:00,s_release_wait:11,s_idle_release:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "s_out:01,s_idle:00,s_release_wait:11,s_idle_release:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[1]),
        .Q(current_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(in9__0));
  LUT4 #(
    .INIT(16'h0040)) 
    \cnt[19]_i_1 
       (.I0(rst),
        .I1(current_state[1]),
        .I2(inp),
        .I3(current_state[0]),
        .O(\cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000020A0)) 
    \cnt[19]_i_2 
       (.I0(inp),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I4(rst),
        .O(cnt0));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(cnt0),
        .D(in9__0),
        .Q(cnt[0]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[10]),
        .Q(cnt[10]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[11] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[11]),
        .Q(cnt[11]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[12] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[12]),
        .Q(cnt[12]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[13] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[13]),
        .Q(cnt[13]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[14] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[14]),
        .Q(cnt[14]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[15] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[15]),
        .Q(cnt[15]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[16] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[16]),
        .Q(cnt[16]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[17] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[17]),
        .Q(cnt[17]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[18] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[18]),
        .Q(cnt[18]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[19] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[19]),
        .Q(cnt[19]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[1]),
        .Q(cnt[1]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[2]),
        .Q(cnt[2]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[3]),
        .Q(cnt[3]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[4]),
        .Q(cnt[4]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[5]),
        .Q(cnt[5]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[6]),
        .Q(cnt[6]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[7]),
        .Q(cnt[7]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[8]),
        .Q(cnt[8]),
        .R(\cnt[19]_i_1_n_0 ));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(cnt0),
        .D(in9[9]),
        .Q(cnt[9]),
        .R(\cnt[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    outp_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(outp));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:2],plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3],in9[19:17]}),
        .S({1'b0,cnt[19:17]}));
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
