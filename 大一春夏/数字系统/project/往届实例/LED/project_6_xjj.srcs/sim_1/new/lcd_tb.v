`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/25 21:33:05
// Design Name: 
// Module Name: lcd_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lcd_tb(
    );
reg      clk_100M;
    reg      rst;
    wire    en;
    wire    RS;
    wire    RW;
    wire    [7:0] data;
    
lcd_1602 test1(.clk_100M(clk_100M),.rst(rst),.en(en),.RS(RS),.RW(RW),.data(data));

    initial 
            begin 
                       
            clk_100M <= 0;
            rst <= 0;
    //        forever #20 clk = ~clk; 
            #50000
            rst = 1 ;
            #50000
            rst = 0;
            end
            
            always
            begin
            #500
            clk_100M =~clk_100M;
            end
     
    endmodule


