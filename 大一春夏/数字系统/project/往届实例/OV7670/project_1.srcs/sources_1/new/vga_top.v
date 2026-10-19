
  
             
module vga_top( 
             output   h_synch,v_synch,
             output [3:0] R,G,B,
             input clk_i,rst_i
			 );
			 
			 reg [40:0] cntr ;
			 
			   design_1_wrapper design_1_i (
                   .clk_in1(clk_i),
                    .clk_out1(pixel_clock),
                    .locked( ),
                    .reset(1'b0)
                    );       
       always @(posedge pixel_clock) cntr <= cntr + 1 ;   
       
             vga_drv vga_drv (
             .pixel_clock( pixel_clock ),
             .h_synch(h_synch  ),
             .v_synch( v_synch ),
             .R( R ),
             .G( G ),
             .B( B ),
             .sys_clk( pixel_clock ),
             .rst_i( rst_i ),
             .feed_addr( 1'b0 ),
                  ////          .feed_data( 1'b1 ),
                       .feed_data( 1'b0),
             .din( cntr[ 21+11 :21] )
             );		
			              
endmodule 

