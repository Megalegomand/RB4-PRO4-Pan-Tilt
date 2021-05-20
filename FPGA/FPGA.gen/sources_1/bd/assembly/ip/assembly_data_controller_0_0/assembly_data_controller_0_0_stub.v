// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu May 20 21:56:25 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_data_controller_0_0/assembly_data_controller_0_0_stub.v
// Design      : assembly_data_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "data_controller,Vivado 2020.2" *)
module assembly_data_controller_0_0(clk, rst, pan_in, tilt_in, spi_rx, pan_out, tilt_out, 
  spi_tx)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,pan_in[8:0],tilt_in[8:0],spi_rx[15:0],pan_out[8:0],tilt_out[8:0],spi_tx[15:0]" */;
  input clk;
  input rst;
  input [8:0]pan_in;
  input [8:0]tilt_in;
  input [15:0]spi_rx;
  output [8:0]pan_out;
  output [8:0]tilt_out;
  output [15:0]spi_tx;
endmodule
