module clk_div(
     clk,
     rst,
     clk_out
    );
		input clk;
		input rst;
		output clk_out;
		
		parameter N2=50000;
		
		reg clk3=1'b0;
		reg [16:0]count3=17'd0;
	assign clk_out=clk3;	
		
	always @(posedge clk or negedge rst)
	begin
		if (!rst)
		  begin
			count3<=17'd0;
			clk3<=1'b0;
		  end
		else
			if(count3<N2-1)
				begin
					count3<=count3+1'b1;
					if(count3<(N2/2-1))
					  clk3<=1'b0;
					else
					  clk3<=1'b1;
				end 
			else
			begin
				count3<=17'd0;
				clk3<=1'b0;
			end	
	end
endmodule