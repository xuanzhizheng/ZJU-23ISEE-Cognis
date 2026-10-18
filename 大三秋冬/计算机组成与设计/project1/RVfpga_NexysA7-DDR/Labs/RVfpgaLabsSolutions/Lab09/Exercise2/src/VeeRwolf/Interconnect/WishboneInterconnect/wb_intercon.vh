wire [31:0] wb_m2s_io_adr;
wire [31:0] wb_m2s_io_dat;
wire  [3:0] wb_m2s_io_sel;
wire        wb_m2s_io_we;
wire        wb_m2s_io_cyc;
wire        wb_m2s_io_stb;
wire  [2:0] wb_m2s_io_cti;
wire  [1:0] wb_m2s_io_bte;
wire [31:0] wb_s2m_io_dat;
wire        wb_s2m_io_ack;
wire        wb_s2m_io_err;
wire        wb_s2m_io_rty;
wire [31:0] wb_m2s_rom_adr;
wire [31:0] wb_m2s_rom_dat;
wire  [3:0] wb_m2s_rom_sel;
wire        wb_m2s_rom_we;
wire        wb_m2s_rom_cyc;
wire        wb_m2s_rom_stb;
wire  [2:0] wb_m2s_rom_cti;
wire  [1:0] wb_m2s_rom_bte;
wire [31:0] wb_s2m_rom_dat;
wire        wb_s2m_rom_ack;
wire        wb_s2m_rom_err;
wire        wb_s2m_rom_rty;
wire [31:0] wb_m2s_spi_flash_adr;
wire [31:0] wb_m2s_spi_flash_dat;
wire  [3:0] wb_m2s_spi_flash_sel;
wire        wb_m2s_spi_flash_we;
wire        wb_m2s_spi_flash_cyc;
wire        wb_m2s_spi_flash_stb;
wire  [2:0] wb_m2s_spi_flash_cti;
wire  [1:0] wb_m2s_spi_flash_bte;
wire [31:0] wb_s2m_spi_flash_dat;
wire        wb_s2m_spi_flash_ack;
wire        wb_s2m_spi_flash_err;
wire        wb_s2m_spi_flash_rty;
wire [31:0] wb_m2s_sys_adr;
wire [31:0] wb_m2s_sys_dat;
wire  [3:0] wb_m2s_sys_sel;
wire        wb_m2s_sys_we;
wire        wb_m2s_sys_cyc;
wire        wb_m2s_sys_stb;
wire  [2:0] wb_m2s_sys_cti;
wire  [1:0] wb_m2s_sys_bte;
wire [31:0] wb_s2m_sys_dat;
wire        wb_s2m_sys_ack;
wire        wb_s2m_sys_err;
wire        wb_s2m_sys_rty;
wire [31:0] wb_m2s_uart_adr;
wire [31:0] wb_m2s_uart_dat;
wire  [3:0] wb_m2s_uart_sel;
wire        wb_m2s_uart_we;
wire        wb_m2s_uart_cyc;
wire        wb_m2s_uart_stb;
wire  [2:0] wb_m2s_uart_cti;
wire  [1:0] wb_m2s_uart_bte;
wire [31:0] wb_s2m_uart_dat;
wire        wb_s2m_uart_ack;
wire        wb_s2m_uart_err;
wire        wb_s2m_uart_rty;

// GPIO
wire [31:0] wb_m2s_gpio_adr;
wire [31:0] wb_m2s_gpio_dat;
wire  [3:0] wb_m2s_gpio_sel;
wire        wb_m2s_gpio_we;
wire        wb_m2s_gpio_cyc;
wire        wb_m2s_gpio_stb;
wire  [2:0] wb_m2s_gpio_cti;
wire  [1:0] wb_m2s_gpio_bte;
wire [31:0] wb_s2m_gpio_dat;
wire        wb_s2m_gpio_ack;
wire        wb_s2m_gpio_err;
wire        wb_s2m_gpio_rty;

// GPIO2
wire [31:0] wb_m2s_gpio2_adr;
wire [31:0] wb_m2s_gpio2_dat;
wire  [3:0] wb_m2s_gpio2_sel;
wire        wb_m2s_gpio2_we;
wire        wb_m2s_gpio2_cyc;
wire        wb_m2s_gpio2_stb;
wire  [2:0] wb_m2s_gpio2_cti;
wire  [1:0] wb_m2s_gpio2_bte;
wire [31:0] wb_s2m_gpio2_dat;
wire        wb_s2m_gpio2_ack;
wire        wb_s2m_gpio2_err;
wire        wb_s2m_gpio2_rty;

// PTC
wire [31:0] wb_m2s_ptc_adr;
wire [31:0] wb_m2s_ptc_dat;
wire  [3:0] wb_m2s_ptc_sel;
wire        wb_m2s_ptc_we;
wire        wb_m2s_ptc_cyc;
wire        wb_m2s_ptc_stb;
wire  [2:0] wb_m2s_ptc_cti;
wire  [1:0] wb_m2s_ptc_bte;
wire [31:0] wb_s2m_ptc_dat;
wire        wb_s2m_ptc_ack;
wire        wb_s2m_ptc_err;
wire        wb_s2m_ptc_rty;

// SPI
wire [31:0] wb_m2s_spi_accel_adr;
wire [31:0] wb_m2s_spi_accel_dat;
wire  [3:0] wb_m2s_spi_accel_sel;
wire        wb_m2s_spi_accel_we;
wire        wb_m2s_spi_accel_cyc;
wire        wb_m2s_spi_accel_stb;
wire  [2:0] wb_m2s_spi_accel_cti;
wire  [1:0] wb_m2s_spi_accel_bte;
wire [31:0] wb_s2m_spi_accel_dat;
wire        wb_s2m_spi_accel_ack;
wire        wb_s2m_spi_accel_err;
wire        wb_s2m_spi_accel_rty;

// PTC2
wire [31:0] wb_m2s_ptc2_adr;
wire [31:0] wb_m2s_ptc2_dat;
wire  [3:0] wb_m2s_ptc2_sel;
wire        wb_m2s_ptc2_we;
wire        wb_m2s_ptc2_cyc;
wire        wb_m2s_ptc2_stb;
wire  [2:0] wb_m2s_ptc2_cti;
wire  [1:0] wb_m2s_ptc2_bte;
wire [31:0] wb_s2m_ptc2_dat;
wire        wb_s2m_ptc2_ack;
wire        wb_s2m_ptc2_err;
wire        wb_s2m_ptc2_rty;

// PTC3
wire [31:0] wb_m2s_ptc3_adr;
wire [31:0] wb_m2s_ptc3_dat;
wire  [3:0] wb_m2s_ptc3_sel;
wire        wb_m2s_ptc3_we;
wire        wb_m2s_ptc3_cyc;
wire        wb_m2s_ptc3_stb;
wire  [2:0] wb_m2s_ptc3_cti;
wire  [1:0] wb_m2s_ptc3_bte;
wire [31:0] wb_s2m_ptc3_dat;
wire        wb_s2m_ptc3_ack;
wire        wb_s2m_ptc3_err;
wire        wb_s2m_ptc3_rty;

// PTC4
wire [31:0] wb_m2s_ptc4_adr;
wire [31:0] wb_m2s_ptc4_dat;
wire  [3:0] wb_m2s_ptc4_sel;
wire        wb_m2s_ptc4_we;
wire        wb_m2s_ptc4_cyc;
wire        wb_m2s_ptc4_stb;
wire  [2:0] wb_m2s_ptc4_cti;
wire  [1:0] wb_m2s_ptc4_bte;
wire [31:0] wb_s2m_ptc4_dat;
wire        wb_s2m_ptc4_ack;
wire        wb_s2m_ptc4_err;
wire        wb_s2m_ptc4_rty;

wb_intercon wb_intercon0
   (.wb_clk_i           (wb_clk),
    .wb_rst_i           (wb_rst),
    .wb_io_adr_i        (wb_m2s_io_adr),
    .wb_io_dat_i        (wb_m2s_io_dat),
    .wb_io_sel_i        (wb_m2s_io_sel),
    .wb_io_we_i         (wb_m2s_io_we),
    .wb_io_cyc_i        (wb_m2s_io_cyc),
    .wb_io_stb_i        (wb_m2s_io_stb),
    .wb_io_cti_i        (wb_m2s_io_cti),
    .wb_io_bte_i        (wb_m2s_io_bte),
    .wb_io_dat_o        (wb_s2m_io_dat),
    .wb_io_ack_o        (wb_s2m_io_ack),
    .wb_io_err_o        (wb_s2m_io_err),
    .wb_io_rty_o        (wb_s2m_io_rty),
    .wb_rom_adr_o       (wb_m2s_rom_adr),
    .wb_rom_dat_o       (wb_m2s_rom_dat),
    .wb_rom_sel_o       (wb_m2s_rom_sel),
    .wb_rom_we_o        (wb_m2s_rom_we),
    .wb_rom_cyc_o       (wb_m2s_rom_cyc),
    .wb_rom_stb_o       (wb_m2s_rom_stb),
    .wb_rom_cti_o       (wb_m2s_rom_cti),
    .wb_rom_bte_o       (wb_m2s_rom_bte),
    .wb_rom_dat_i       (wb_s2m_rom_dat),
    .wb_rom_ack_i       (wb_s2m_rom_ack),
    .wb_rom_err_i       (wb_s2m_rom_err),
    .wb_rom_rty_i       (wb_s2m_rom_rty),
    .wb_spi_flash_adr_o (wb_m2s_spi_flash_adr),
    .wb_spi_flash_dat_o (wb_m2s_spi_flash_dat),
    .wb_spi_flash_sel_o (wb_m2s_spi_flash_sel),
    .wb_spi_flash_we_o  (wb_m2s_spi_flash_we),
    .wb_spi_flash_cyc_o (wb_m2s_spi_flash_cyc),
    .wb_spi_flash_stb_o (wb_m2s_spi_flash_stb),
    .wb_spi_flash_cti_o (wb_m2s_spi_flash_cti),
    .wb_spi_flash_bte_o (wb_m2s_spi_flash_bte),
    .wb_spi_flash_dat_i (wb_s2m_spi_flash_dat),
    .wb_spi_flash_ack_i (wb_s2m_spi_flash_ack),
    .wb_spi_flash_err_i (wb_s2m_spi_flash_err),
    .wb_spi_flash_rty_i (wb_s2m_spi_flash_rty),
    .wb_sys_adr_o       (wb_m2s_sys_adr),
    .wb_sys_dat_o       (wb_m2s_sys_dat),
    .wb_sys_sel_o       (wb_m2s_sys_sel),
    .wb_sys_we_o        (wb_m2s_sys_we),
    .wb_sys_cyc_o       (wb_m2s_sys_cyc),
    .wb_sys_stb_o       (wb_m2s_sys_stb),
    .wb_sys_cti_o       (wb_m2s_sys_cti),
    .wb_sys_bte_o       (wb_m2s_sys_bte),
    .wb_sys_dat_i       (wb_s2m_sys_dat),
    .wb_sys_ack_i       (wb_s2m_sys_ack),
    .wb_sys_err_i       (wb_s2m_sys_err),
    .wb_sys_rty_i       (wb_s2m_sys_rty),
    .wb_uart_adr_o      (wb_m2s_uart_adr),
    .wb_uart_dat_o      (wb_m2s_uart_dat),
    .wb_uart_sel_o      (wb_m2s_uart_sel),
    .wb_uart_we_o       (wb_m2s_uart_we),
    .wb_uart_cyc_o      (wb_m2s_uart_cyc),
    .wb_uart_stb_o      (wb_m2s_uart_stb),
    .wb_uart_cti_o      (wb_m2s_uart_cti),
    .wb_uart_bte_o      (wb_m2s_uart_bte),
    .wb_uart_dat_i      (wb_s2m_uart_dat),
    .wb_uart_ack_i      (wb_s2m_uart_ack),
    .wb_uart_err_i      (wb_s2m_uart_err),
    .wb_uart_rty_i      (wb_s2m_uart_rty),
// GPIO
    .wb_gpio_adr_o      (wb_m2s_gpio_adr),
    .wb_gpio_dat_o      (wb_m2s_gpio_dat),
    .wb_gpio_sel_o      (wb_m2s_gpio_sel),
    .wb_gpio_we_o       (wb_m2s_gpio_we),
    .wb_gpio_cyc_o      (wb_m2s_gpio_cyc),
    .wb_gpio_stb_o      (wb_m2s_gpio_stb),
    .wb_gpio_cti_o      (wb_m2s_gpio_cti),
    .wb_gpio_bte_o      (wb_m2s_gpio_bte),
    .wb_gpio_dat_i      (wb_s2m_gpio_dat),
    .wb_gpio_ack_i      (wb_s2m_gpio_ack),
    .wb_gpio_err_i      (wb_s2m_gpio_err),
    .wb_gpio_rty_i      (wb_s2m_gpio_rty),
// GPIO2
    .wb_gpio2_adr_o      (wb_m2s_gpio2_adr),
    .wb_gpio2_dat_o      (wb_m2s_gpio2_dat),
    .wb_gpio2_sel_o      (wb_m2s_gpio2_sel),
    .wb_gpio2_we_o       (wb_m2s_gpio2_we),
    .wb_gpio2_cyc_o      (wb_m2s_gpio2_cyc),
    .wb_gpio2_stb_o      (wb_m2s_gpio2_stb),
    .wb_gpio2_cti_o      (wb_m2s_gpio2_cti),
    .wb_gpio2_bte_o      (wb_m2s_gpio2_bte),
    .wb_gpio2_dat_i      (wb_s2m_gpio2_dat),
    .wb_gpio2_ack_i      (wb_s2m_gpio2_ack),
    .wb_gpio2_err_i      (wb_s2m_gpio2_err),
    .wb_gpio2_rty_i      (wb_s2m_gpio2_rty),

// PTC
    .wb_ptc_adr_o      (wb_m2s_ptc_adr),
    .wb_ptc_dat_o      (wb_m2s_ptc_dat),
    .wb_ptc_sel_o      (wb_m2s_ptc_sel),
    .wb_ptc_we_o       (wb_m2s_ptc_we),
    .wb_ptc_cyc_o      (wb_m2s_ptc_cyc),
    .wb_ptc_stb_o      (wb_m2s_ptc_stb),
    .wb_ptc_cti_o      (wb_m2s_ptc_cti),
    .wb_ptc_bte_o      (wb_m2s_ptc_bte),
    .wb_ptc_dat_i      (wb_s2m_ptc_dat),
    .wb_ptc_ack_i      (wb_s2m_ptc_ack),
    .wb_ptc_err_i      (wb_s2m_ptc_err),
    .wb_ptc_rty_i      (wb_s2m_ptc_rty),
// PTC2
    .wb_ptc2_adr_o      (wb_m2s_ptc2_adr),
    .wb_ptc2_dat_o      (wb_m2s_ptc2_dat),
    .wb_ptc2_sel_o      (wb_m2s_ptc2_sel),
    .wb_ptc2_we_o       (wb_m2s_ptc2_we),
    .wb_ptc2_cyc_o      (wb_m2s_ptc2_cyc),
    .wb_ptc2_stb_o      (wb_m2s_ptc2_stb),
    .wb_ptc2_cti_o      (wb_m2s_ptc2_cti),
    .wb_ptc2_bte_o      (wb_m2s_ptc2_bte),
    .wb_ptc2_dat_i      (wb_s2m_ptc2_dat),
    .wb_ptc2_ack_i      (wb_s2m_ptc2_ack),
    .wb_ptc2_err_i      (wb_s2m_ptc2_err),
    .wb_ptc2_rty_i      (wb_s2m_ptc2_rty),
// PTC3
    .wb_ptc3_adr_o      (wb_m2s_ptc3_adr),
    .wb_ptc3_dat_o      (wb_m2s_ptc3_dat),
    .wb_ptc3_sel_o      (wb_m2s_ptc3_sel),
    .wb_ptc3_we_o       (wb_m2s_ptc3_we),
    .wb_ptc3_cyc_o      (wb_m2s_ptc3_cyc),
    .wb_ptc3_stb_o      (wb_m2s_ptc3_stb),
    .wb_ptc3_cti_o      (wb_m2s_ptc3_cti),
    .wb_ptc3_bte_o      (wb_m2s_ptc3_bte),
    .wb_ptc3_dat_i      (wb_s2m_ptc3_dat),
    .wb_ptc3_ack_i      (wb_s2m_ptc3_ack),
    .wb_ptc3_err_i      (wb_s2m_ptc3_err),
    .wb_ptc3_rty_i      (wb_s2m_ptc3_rty),
// PTC4
    .wb_ptc4_adr_o      (wb_m2s_ptc4_adr),
    .wb_ptc4_dat_o      (wb_m2s_ptc4_dat),
    .wb_ptc4_sel_o      (wb_m2s_ptc4_sel),
    .wb_ptc4_we_o       (wb_m2s_ptc4_we),
    .wb_ptc4_cyc_o      (wb_m2s_ptc4_cyc),
    .wb_ptc4_stb_o      (wb_m2s_ptc4_stb),
    .wb_ptc4_cti_o      (wb_m2s_ptc4_cti),
    .wb_ptc4_bte_o      (wb_m2s_ptc4_bte),
    .wb_ptc4_dat_i      (wb_s2m_ptc4_dat),
    .wb_ptc4_ack_i      (wb_s2m_ptc4_ack),
    .wb_ptc4_err_i      (wb_s2m_ptc4_err),
    .wb_ptc4_rty_i      (wb_s2m_ptc4_rty),

// SPI
    .wb_spi_accel_adr_o (wb_m2s_spi_accel_adr),
    .wb_spi_accel_dat_o (wb_m2s_spi_accel_dat),
    .wb_spi_accel_sel_o (wb_m2s_spi_accel_sel),
    .wb_spi_accel_we_o  (wb_m2s_spi_accel_we),
    .wb_spi_accel_cyc_o (wb_m2s_spi_accel_cyc),
    .wb_spi_accel_stb_o (wb_m2s_spi_accel_stb),
    .wb_spi_accel_cti_o (wb_m2s_spi_accel_cti),
    .wb_spi_accel_bte_o (wb_m2s_spi_accel_bte),
    .wb_spi_accel_dat_i (wb_s2m_spi_accel_dat),
    .wb_spi_accel_ack_i (wb_s2m_spi_accel_ack),
    .wb_spi_accel_err_i (wb_s2m_spi_accel_err),
    .wb_spi_accel_rty_i (wb_s2m_spi_accel_rty));
