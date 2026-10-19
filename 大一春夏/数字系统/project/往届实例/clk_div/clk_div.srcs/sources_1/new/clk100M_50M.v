module clk100M_50M(
    input clk_100M,
    input reset,
output  clk_50M
);
 reg clk_out=1'b0;
 reg [1:0] count;
 
 assign clk_50M = clk_out;
 
 always@(posedge  clk_100M)
 if(!reset)
 begin
 count <= 0; 
 clk_out <= 0;
 end
 else if(count >= 1) 
 begin
clk_out <= ~clk_out; 
 count <= 0;
 end
 else if(count < 1)
 count <= count + 1;
endmodule