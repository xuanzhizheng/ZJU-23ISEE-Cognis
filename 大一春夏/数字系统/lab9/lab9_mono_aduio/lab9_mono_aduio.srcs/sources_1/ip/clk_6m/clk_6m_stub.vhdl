-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Apr 11 11:55:29 2024
-- Host        : LAPTOP-42E9R2TH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/EGOPro/project/lab9_mono_aduio/lab9_mono_aduio.srcs/sources_1/ip/clk_6m/clk_6m_stub.vhdl
-- Design      : clk_6m
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_6m is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_6m;

architecture stub of clk_6m is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1";
begin
end;
