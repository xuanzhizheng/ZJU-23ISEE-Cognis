module vga_dpram(

input wr_clk ,
input  [11:0] wr_din,
input [31:0] wr_addr,
input   wr,

input rd_clk,
input [31:0] rd_addr ,
output   [11:0] rd_dout

);

wire [11:0] rd_dout_256K,rd_dout_64K ;

reg addr18 ; always @ (posedge rd_clk) addr18 <= rd_addr[18] ;

assign rd_dout = ( addr18 == 0 ) ? rd_dout_256K : rd_dout_64K ; 




  generic_dpram_256Kx12  #( .aw(18), .dw(12) ) ram_256Kx12(

	.rclk(  rd_clk ) ,         
	.raddr( rd_addr[17:0] ) , 
	.dout( rd_dout_256K ) ,
	
	.wclk( wr_clk ) ,   
	.we( wr & ~wr_addr[18]) , 
	.waddr( wr_addr[17:0] ) , 
	.din( wr_din ) 
	
);



  generic_dpram_64Kx12 #(.aw(16),.dw(12)) ram_64Kx12(

	  .rclk(  rd_clk ) ,         
      .raddr( rd_addr[17:0] ) , 
      .dout( rd_dout_64K ) ,
      
      .wclk( wr_clk ) ,   
      .we( wr & wr_addr[18] ) , 
      .waddr( wr_addr[15:0] ) , 
      .din( wr_din ) 

);



endmodule 




module generic_dpram_256Kx12(
	// Generic synchronous dual-port RAM interface
	rclk ,        raddr , dout ,
	wclk ,   we , waddr , din 
);

	parameter aw = 18;  // number of bits in address-bus
	parameter dw = 12; // number of bits in data-bus
 
	input           rclk;  // read clock, rising edge trigger
	input  [aw-1:0] raddr; // read address
	output [dw-1:0] dout ;    // data output

	// write port
	input          wclk;  // write clock, rising edge trigger
	input          we;    // write enable, active high
	input [aw-1:0] waddr; // write address
	input [dw-1:0] din;    // data input


	reg [dw-1:0] mem [(1<<aw) -1:0] ;
	reg [aw-1:0] ra;                // register read address

	// read operation
	always @(posedge rclk)	    ra <= #1 raddr;
    assign dout  =  mem[ra];
	
	// write operation
	always @(posedge wclk)		if  ( we )			mem[waddr] <= #1 din ;
	
	initial $readmemh("bmp_256k.mem",mem);

endmodule



module generic_dpram_64Kx12(
	// Generic synchronous dual-port RAM interface
	rclk ,        raddr , dout ,
	wclk ,   we , waddr , din 
);

	parameter aw = 16;  // number of bits in address-bus
	parameter dw = 12; // number of bits in data-bus
 
	input           rclk;  // read clock, rising edge trigger
	input  [aw-1:0] raddr; // read address
	output [dw-1:0] dout ;    // data output

	// write port
	input          wclk;  // write clock, rising edge trigger
	input          we;    // write enable, active high
	input [aw-1:0] waddr; // write address
	input [dw-1:0] din;    // data input


	reg [dw-1:0] mem [(1<<aw) -1:0] /* synthesis syn_ramstyle="block_ram" */;
	reg [aw-1:0] ra;                // register read address

	// read operation
	always @(posedge rclk)	    ra <= #1 raddr;
    assign dout  =  mem[ra];
	
	// write operation
	always @(posedge wclk)		if  ( we )			mem[waddr] <= #1 din ;
	
	initial $readmemh("bmp_64k.mem",mem);

endmodule
	
	
	