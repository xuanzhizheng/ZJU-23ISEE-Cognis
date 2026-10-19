`timescale 1ns/1ns 
module vga_sim_top;

    reg pixel_clock ,rst_i;
    wire dp_en ;
    wire h_synch,v_synch;

    wire   [9:0]	line_count;
    wire   [10:0]	pixel_count	  ;

    reg  [9:0]	line_countr ;
    reg [10:0]	pixel_countr ;

    wire   [9:0]	line_countro ;
    wire   [10:0]   pixel_countro ;

    assign pixel_countro = (dp_en==0)?  0 : pixel_countr ;
    assign line_countro = (dp_en==0)?  0 : line_countr ;

    always@(posedge pixel_clock)
    begin
        line_countr <= line_count ;
        pixel_countr <= pixel_count ;
    end

    always #30 pixel_clock = ~pixel_clock ;

    initial begin

        pixel_clock=0;rst_i=1;
        #100   rst_i=0 ;

    end

    my_vga_syn my_vga_syn(
                   .pixel_clock (pixel_clock  ),
                   .rst_i( rst_i ),
                   .h_synch( h_synch ),
                   .v_synch( v_synch ),
                   .dp_en( dp_en),
                   .line_count(line_count  ),
                   .pixel_count ( pixel_count )
               );

endmodule


