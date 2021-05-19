// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 18 23:13:51 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_encoder_tilt_0/assembly_encoder_tilt_0_stub.v
// Design      : assembly_encoder_tilt_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "encoder,Vivado 2020.2" *)
module assembly_encoder_tilt_0(clk, a, b, rst, col_p, cnt)
/* synthesis syn_black_box black_box_pad_pin="clk,a,b,rst,col_p[3:0],cnt[7:0]" */;
  input clk;
  input a;
  input b;
  input rst;
  output [3:0]col_p;
  output [7:0]cnt;
endmodule
