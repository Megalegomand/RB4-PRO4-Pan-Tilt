// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 25 09:52:50 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_pwm_pan_0/assembly_pwm_pan_0_stub.v
// Design      : assembly_pwm_pan_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm,Vivado 2020.2" *)
module assembly_pwm_pan_0(rst, clk, duty_cycle, o)
/* synthesis syn_black_box black_box_pad_pin="rst,clk,duty_cycle[7:0],o" */;
  input rst;
  input clk;
  input [7:0]duty_cycle;
  output o;
endmodule
