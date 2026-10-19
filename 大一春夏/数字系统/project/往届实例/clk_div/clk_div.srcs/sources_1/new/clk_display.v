`timescale 1ns / 1ps
//
// Company: bupt ,mr_bai
// Engineer: 
// 
// Create Date:    14:08:33 03/01/2014 
// Design Name: 
// Module Name:    clk_display 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//
module clk_display(
     clk_100M,
     rst,
     sm_seg,
     sm_bit
    );
	 input clk_100M;
    input rst;
    output reg[7:0] sm_seg;
    output reg [3:0]sm_bit;
	 //**********************
	 //定义线网型连接线；
	 //*******************
	 wire clk1;
	 wire clk;
	 wire [3:0]op1,op2,op3,op4;
	//*********************	 
	//定义状态机
	parameter  IDLE=5'b0000_1,
					SA =5'b0001_0,
					SB =5'b0010_0,
					SC =5'b0100_0,
					SD =5'b1000_0;
	reg [4:0]state;
	//
	reg [3:0]Num;
	
	clk100M_50M test1(
	  .clk_100M(clk_100M),
      .reset(rst),
      .clk_50M(clk)
	);
	
clk_div M1(
     .clk(clk),
     .rst(rst),
     .clk_out(clk1)
    );
    
clk_dis1_count M2(
.clk1(clk1),
.rst(rst),
.op1(op1),
.op2(op2),
.op3(op3),
.op4(op4)
);
  /*always @(posedge clk1)
  begin
		sm_bit<={sm_bit[2:0],sm_bit[3]};
  end*/
  
  always @(posedge clk1 or negedge rst)
  begin
		if(!rst)
			state<=IDLE;
		else
		  begin
				case (state)
					IDLE:state<=SA ;
					
					SA:
						begin
							sm_bit<=4'b0001;
							Num	<=op1;
							state <=SB;
							
						end
					SB:
						begin
							sm_bit<=4'b0010;
							Num   <=op2;
							state <=SC;
						end
					SC:
						begin
							sm_bit<=4'b0100;
							Num   <=op3;
							state <=SD;
						end
					SD:
						begin
							sm_bit<=4'b1000;
							Num   <=op4;
							state <=SA;
						end
					default state<=IDLE;
				endcase	
		  end
  end
     always @ (Num)//
	begin
		case (Num)  
			4'h0 : sm_seg = 8'hfc;   // "0"
			4'h1 : sm_seg = 8'h60;   // "1"
			4'h2 : sm_seg = 8'hda;   // "2"
			4'h3 : sm_seg = 8'hf2;   // "3"
			4'h4 : sm_seg = 8'h66;   // "4"
			4'h5 : sm_seg = 8'hb6;   // "5"//共阴极数码管表
			4'h6 : sm_seg = 8'hbe;   // "6"
			4'h7 : sm_seg = 8'he0;   // "7"
			4'h8 : sm_seg = 8'hfe;   // "8"
			4'h9 : sm_seg = 8'hf6;   // "9"
		endcase 
    end
  
endmodule
