vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" \
"F:/vivado2019.1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"F:/vivado2019.1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../lab9_mono_aduio.srcs/sources_1/ip/clk_6m/clk_6m_clk_wiz.v" \
"../../../../lab9_mono_aduio.srcs/sources_1/ip/clk_6m/clk_6m.v" \

vlog -work xil_defaultlib \
"glbl.v"

