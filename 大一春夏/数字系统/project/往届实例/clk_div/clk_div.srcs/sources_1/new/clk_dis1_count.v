module clk_dis1_count(clk1,rst,op1,op2,op3,op4);
input clk1,rst;       //声明时钟和复位信号，此处时钟为分频后得到的1KHz信号；
output reg [3:0]op1=4'd0;
output reg [3:0]op2=4'd0;
output reg [3:0]op3=4'd0;
output reg [3:0]op4=4'd0; /*op1,op2...为数码管显示时钟，这里分别定义，
 											op1,op3范围为【0-9】，op2,op4范围为【0-5】*/
//**************************************************************//											
//reg [9:0] count_clk1=10'd0;
 
//parameter N2=500;				//1KHz->2Hz,500分频电路；
parameter  N2=1000;     //更改成为1hz,每一秒输出一次，做电子表使用。	十位数可以达到1024，不会溢出。	
		reg clk3=1'b0;     //输出clk3 ,2Hz
		reg [9:0]count_clk1=10'd0;//计数器，足够用了。
	
		
	always @(posedge clk1 or negedge rst)
	begin
		if (!rst)
		  begin
			count_clk1<=10'd0;
			clk3<=1'b0;
		  end
		else
			if(count_clk1<N2-1)
				begin
					count_clk1<=count_clk1+1'b1;
					if(count_clk1<(N2/2-1))
					  clk3<=1'b0;
					else
					  clk3<=1'b1;
				end 
			else
			begin
				count_clk1<=10'd0;
				clk3<=1'b0;
			end	
	end
/*******************************************************/
always @(posedge clk3 or negedge rst)
begin
	if(!rst)
		begin
			op1<='d0;
			op2<='d0;
			op3<='d0;
			op4<='d0;
		end
	else
	begin
		if(op1<9)
			op1<=op1+1'b1;//如果秒钟最低位小于9，就加一，否则最低位变为0	
		else
			begin
				if(op2<5)
					op2<=op2+1'b1; //秒钟最低位为9时，十位是否为5，若小于5，十位加一，如：09-10，29-30
										//否则即为 59，->00.后两位为00分位置加一。
				else
					begin
						if(op3<9)
							op3<=op3+1'b1;//由于分和秒都是60进制，因此方法同上。
						else
							begin
								if(op4<5)
									op4<=op4+1'b1;
								else 
									op4<='d0;
								op3<='d0;
							end
							op2<='d0;
						end
					op1<='d0;
				end		
			end
end
 endmodule