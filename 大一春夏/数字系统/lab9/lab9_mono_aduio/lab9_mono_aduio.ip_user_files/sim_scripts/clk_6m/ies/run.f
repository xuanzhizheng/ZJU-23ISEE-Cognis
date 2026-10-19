-makelib ies_lib/xil_defaultlib -sv \
  "F:/vivado2019.1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/vivado2019.1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab9_mono_aduio.srcs/sources_1/ip/clk_6m/clk_6m_clk_wiz.v" \
  "../../../../lab9_mono_aduio.srcs/sources_1/ip/clk_6m/clk_6m.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

