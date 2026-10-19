
/*
clock_convert CLK(
 .CLK100M(  ),
 .CLK25M(  ),
 .LOCK(  )
);
*/

module clock_convert(
        input CLK100M,
        output CLK25M,LOCK
    );


 CLK100M_25M_wrapper CLK_CVT
                (
                    .clk_in1_0(CLK100M),
                    .clk_out1_0(CLK25M),
                    .locked_0(LOCK)
                );
                
endmodule
