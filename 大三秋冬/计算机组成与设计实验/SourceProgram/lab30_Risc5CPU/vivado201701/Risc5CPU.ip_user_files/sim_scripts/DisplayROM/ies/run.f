-makelib ies/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "D:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/dist_mem_gen_v8_0_11 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../Risc5CPU.srcs/sources_1/ip/DisplayROM/sim/DisplayROM.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

