//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat Jun 12 14:03:43 2021
//Host        : LAPTOP-REEO934D running 64-bit major release  (build 9200)
//Command     : generate_target CLK100M_25M_wrapper.bd
//Design      : CLK100M_25M_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CLK100M_25M_wrapper
   (clk_in1_0,
    clk_out1_0,
    locked_0);
  input clk_in1_0;
  output clk_out1_0;
  output locked_0;

  wire clk_in1_0;
  wire clk_out1_0;
  wire locked_0;

  CLK100M_25M CLK100M_25M_i
       (.clk_in1_0(clk_in1_0),
        .clk_out1_0(clk_out1_0),
        .locked_0(locked_0));
endmodule
