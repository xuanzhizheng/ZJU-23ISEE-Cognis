

module OV7670_VGA_TOP(
        output       OV7670_SIOC,
        inout        OV7670_SIOD,
        output       OV7670_RESET,
        output       OV7670_PWDN,
        output       OV7670_XCLK,
        input        OV7670_PCLK,OV7670_HREF,OV7670_VSYNC,
        input  [7:0] OV7670_D ,

        output [3:0]  R,G,B,
        output HSYNC,VSYNC,

        input  CLK100M,
        input BTN_UP,
        output ERROR_LED
    );

    wire CLK25M ;
    wire CLK_LOCK ;

    clock_convert CLK(
                      .CLK100M( CLK100M ),
                      .CLK25M( CLK25M ),
                      .LOCK( CLK_LOCK )
                  );

    wire sys_rst ;

    debounce I_DEBOUNCE (
                 .clk( CLK25M ) ,
                 .i( BTN_UP ) ,
                 .o( sys_rst )
             );

    cfg_ov7670  I_CFG_OV7670 (
                    .OV7670_SIOC( OV7670_SIOC ),
                    .OV7670_SIOD( OV7670_SIOD ),
                    .OV7670_RESET( OV7670_RESET ),
                    .OV7670_PWDN( OV7670_PWDN ),
                    .OV7670_XCLK( OV7670_XCLK ),
                    .CLK25M( CLK25M ) ,
                    .rst( sys_rst ) ,
                    .ERROR(ERROR_LED)
                );

    wire [11:0] ov2ram_data ;
    wire  ov2ram_wr ;
    wire [18:0] ov2ram_addr ;

    OV7670_CAPTURE OV7670_CAPTURE (
                       .rst( sys_rst ),
                       .pclk( OV7670_PCLK ) ,
                       .href ( OV7670_HREF ),
                       .vsync( OV7670_VSYNC ),
                       .din ( OV7670_D ),
                       .buff_dout( ov2ram_data ),
                       .buff_wr( ov2ram_wr ),
                       .buff_addr( ov2ram_addr )
                   );

    wire [11:0]   ram2vga_data;
    wire [18:0]   ram2vga_addr;

    vga_dpram  VGA_BUFFER (
                   .wr_clk ( CLK25M ),
                   .wr( ov2ram_wr  ),
                   .wr_addr ( ov2ram_addr ),
                   .wr_din (  ov2ram_data ),

                   .rd_clk ( CLK25M ),
                   .rd_addr ( ram2vga_addr ),
                   .rd_dout ( ram2vga_data )
               );


    my_vga_syn I_VGA(
                   .pixel_clock( CLK25M ),
                   .rst_i( sys_rst ),
                   .pixel_addr( ram2vga_addr ) ,

                   .h_synch_o( HSYNC ) ,
                   .v_synch_o( VSYNC ) ,
                   .R_i( ram2vga_data[11:8] ),
                   .G_i( ram2vga_data[7:4] ),
                   .B_i( ram2vga_data[3:0] ),
                   .R_o( R[3:0] ),
                   .G_o( G[3:0] ),
                   .B_o( B[3:0] )
               );

endmodule


