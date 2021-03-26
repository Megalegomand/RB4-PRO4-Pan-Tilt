// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Mar 26 20:46:20 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/system/ip/system_spi_0_0/system_spi_0_0_stub.v
// Design      : system_spi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi,Vivado 2020.2" *)
module system_spi_0_0(rst, data_in, data_out, sclk, ss, mosi, miso)
/* synthesis syn_black_box black_box_pad_pin="rst,data_in[7:0],data_out[7:0],sclk,ss,mosi,miso" */;
  input rst;
  input [7:0]data_in;
  output [7:0]data_out;
  input sclk;
  input ss;
  input mosi;
  output miso;
endmodule
