-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 12 14:06:24 2021
-- Host        : LAPTOP-REEO934D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/LenovoSoftstore/vivado/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK100M_25M/ip/CLK100M_25M_clk_wiz_0_0/CLK100M_25M_clk_wiz_0_0_stub.vhdl
-- Design      : CLK100M_25M_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLK100M_25M_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end CLK100M_25M_clk_wiz_0_0;

architecture stub of CLK100M_25M_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
