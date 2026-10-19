/*
debounce debounce(
       .clk( ) , 
	   .i( ) ,
       .o( )  
	   );

*/
module debounce #(
        parameter  INIT=10*1000*1000,
        parameter  OVF=10*1000*1000
    )(
        input     clk , i ,
        output reg    o  );

    reg [31:0]init;
    reg [31:0] c;

    always @(posedge clk) if (init != INIT)  init<=init + 1 ;
    always @(posedge clk)  o <=  ( init == (OVF -1 )) || ( c == (OVF -1 ) ) ;
        always @(posedge clk)  if ( i==0 ) c<=0;  else if ( c != OVF )  c <= c + 1;

endmodule
