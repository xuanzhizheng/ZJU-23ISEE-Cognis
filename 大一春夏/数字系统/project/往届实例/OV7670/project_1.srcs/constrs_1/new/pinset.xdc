
set_property PACKAGE_PIN  R15  [get_ports {BTN_UP}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTN_UP}]

set_property PACKAGE_PIN P17 [get_ports {CLK100M}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK100M}]

set_property PACKAGE_PIN  C4  [get_ports {VSYNC}]
set_property IOSTANDARD LVCMOS33 [get_ports {VSYNC}]

set_property PACKAGE_PIN  D7  [get_ports {HSYNC}]
set_property IOSTANDARD LVCMOS33 [get_ports {HSYNC}]

set_property PACKAGE_PIN  F5   [get_ports {R[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[0]}]
set_property PACKAGE_PIN    C6 [get_ports {R[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[1]}]
set_property PACKAGE_PIN   C5  [get_ports {R[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[2]}]
set_property PACKAGE_PIN   B7  [get_ports {R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[3]}]

set_property PACKAGE_PIN  B6   [get_ports {G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[0]}]
set_property PACKAGE_PIN   A6  [get_ports {G[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[1]}]
set_property PACKAGE_PIN   A5  [get_ports {G[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[2]}]
set_property PACKAGE_PIN   D8  [get_ports {G[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[3]}]

set_property PACKAGE_PIN   C7  [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property PACKAGE_PIN   E6  [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property PACKAGE_PIN   E5  [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property PACKAGE_PIN   E7  [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
 


 
 
  set_property  -dict {PACKAGE_PIN  H17   IOSTANDARD LVCMOS33}           [get_ports OV7670_PWDN ]
  set_property  -dict {PACKAGE_PIN  K13  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[0] ]
  set_property  -dict {PACKAGE_PIN  E17  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[2] ]  
  set_property  -dict {PACKAGE_PIN  H14  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[4] ] 
  
  set_property  -dict {PACKAGE_PIN  G17  IOSTANDARD LVCMOS33}           [get_ports OV7670_RESET ]
  set_property  -dict {PACKAGE_PIN  J13  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[1] ] 
  set_property  -dict {PACKAGE_PIN  D17  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[3] ] 
  set_property  -dict {PACKAGE_PIN  G14  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[5] ]  
  
  set_property  -dict {PACKAGE_PIN  F15  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[6] ]  
  set_property  -dict {PACKAGE_PIN  H16  IOSTANDARD LVCMOS33}           [get_ports OV7670_XCLK ]  
  set_property  -dict {PACKAGE_PIN  D15  IOSTANDARD LVCMOS33}           [get_ports OV7670_HREF ]  
  set_property  -dict {PACKAGE_PIN  E15   IOSTANDARD LVCMOS33}           [get_ports OV7670_SIOD ]  

 
  set_property  -dict {PACKAGE_PIN  F16  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[7] ]  
  set_property  -dict {PACKAGE_PIN  G16  IOSTANDARD LVCMOS33}           [get_ports OV7670_PCLK ]  
  set_property  -dict {PACKAGE_PIN  C15  IOSTANDARD LVCMOS33}           [get_ports OV7670_VSYNC ] 
  set_property  -dict {PACKAGE_PIN  E16  IOSTANDARD LVCMOS33}           [get_ports OV7670_SIOC ] 
  
   set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK_IBUF]
   set_property PULLUP TRUE [get_ports OV7670_SIOD]
   set_property  -dict {PACKAGE_PIN  G4  IOSTANDARD LVCMOS33}           [get_ports ERROR_LED ]  
  
  
  
  
  