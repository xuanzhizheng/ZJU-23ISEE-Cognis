//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat Jun 12 14:05:48 2021
//Host        : LAPTOP-REEO934D running 64-bit major release  (build 9200)
//Command     : generate_target CLK100M_25M.bd
//Design      : CLK100M_25M
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CLK100M_25M,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CLK100M_25M,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "CLK100M_25M.hwdef" *) 
module CLK100M_25M
   (clk_in1_0,
    clk_out1_0,
    locked_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN CLK100M_25M_clk_in1_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk_in1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, PHASE 0.0" *) output clk_out1_0;
  output locked_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;

  assign clk_in1_0_1 = clk_in1_0;
  assign clk_out1_0 = clk_wiz_0_clk_out1;
  assign locked_0 = clk_wiz_0_locked;
  CLK100M_25M_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked));
endmodule
