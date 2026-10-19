// An highlighted block
module lcd_1602(
                clk_100M,
				    rst,
				    en,
				    RS,
				    RW,
				    data
                );

input  clk_100M;
input  rst;
output en;
output RS;
output RW;
output [7:0] data;
wire   clk_500;
wire clk_50M;

clk100M_50M u_clk100M_50M
(
   .clk_100M(clk_100M),
   .reset(rst),
   .clk_50M(clk_50M)
);
clk_50M_500 u_clk50M_500(
                         .clk_50M(clk_50M),
						       .rst(rst),
						       .clk_500(clk_500)
						       );
						 
lcd_show u_lcd_show(
                    .clk_LCD(clk_500),
					     .rst(rst),
					     .en(en),
					     .RS(RS),
					     .RW(RW),
					     .data(data)
						  );
					
endmodule 


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



module clk_50M_500(clk_50M,rst,clk_500);
input  clk_50M;
input  rst;
output clk_500;

reg [8:0] cnt_1;
reg [7:0] cnt_2;
reg   clk_500hz;


always@(posedge clk_50M)
begin 
   if(!rst)
        begin 
	       clk_500hz<=0;
		    cnt_1<=0;
		    cnt_2<=0;
	     end
   else if(cnt_2==8'd199)
        begin 
           cnt_2<=0;
           if(cnt_1==9'd499)
              begin 
                 cnt_1 <=0;
                 clk_500hz<=~clk_500hz;
              end
            else
                 cnt_1<=cnt_1+1;
        end
    else  cnt_2 <=cnt_2+1;
end

assign clk_500=clk_500hz;
endmodule



module lcd_show(
               clk_LCD,
			      rst,
			      en,
			      RS,
			      RW,
			      data); 
			  
input clk_LCD;
input rst;
output en,RS,RW;
output reg [7:0] data;
reg RS,en_sel;
reg [4:0] disp_count;
reg [4:0] write_count;
reg [2:0] num;
reg [3:0] state;

parameter clear_lcd          =4'b1000,
          set_disp_mode      =4'b1001,
		    disp_on            =4'b1010,
		    shift_down         =4'b1011,
		    write_cgram        =4'b1100,
		    write_data_first   =4'b1101,
		    write_data_second  =4'b1110,
		    idel               =4'b1111;//此处参数无特别意义，似乎只是状态机标号
			 
		  
assign RW=1'b0;
assign en = en_sel?clk_LCD:1'b0;

reg [7:0] data_character  [7:0];
reg [7:0] data_character2 [7:0];
reg [7:0] data_character3 [7:0];
reg [7:0] data_character4 [7:0];


always @(posedge clk_LCD)
      begin 
     data_character[0] <= 8'h04;//小
     data_character[1] <= 8'h04;
     data_character[2] <= 8'h15;
     data_character[3] <= 8'h15;
     data_character[4] <= 8'h15;
     data_character[5] <= 8'h04;
     data_character[6] <= 8'h04;
     data_character[7] <= 8'h04;
    
     data_character2[0] <= 8'h04;//女
     data_character2[1] <= 8'h04;
     data_character2[2] <= 8'h0f;
     data_character2[3] <= 8'h05;
     data_character2[4] <= 8'h1f;
     data_character2[5] <= 8'h04;
     data_character2[6] <= 8'h0a;
     data_character2[7] <= 8'h11;
        
     data_character3[0] <= 8'h00;//且
     data_character3[1] <= 8'h08;
     data_character3[2] <= 8'h04;
     data_character3[3] <= 8'h02;
     data_character3[4] <= 8'h00;
     data_character3[5] <= 8'h02;
     data_character3[6] <= 8'h04;
     data_character3[7] <= 8'h08;
        
        data_character4[0] <= 8'h04;//
     data_character4[1] <= 8'h04;
     data_character4[2] <= 8'h1f;
     data_character4[3] <= 8'h15;
     data_character4[4] <= 8'h1f;
     data_character4[5] <= 8'h04;
     data_character4[6] <= 8'h04;
     data_character4[7] <= 8'h04;
      /*
	      data_character[0] <= 8'h00;//小
         data_character[1] <= 8'h04;
         data_character[2] <= 8'h04;
         data_character[3] <= 8'h0E;
         data_character[4] <= 8'h15;
         data_character[5] <= 8'h04;
         data_character[6] <= 8'h0C;
         data_character[7] <= 8'h04;
		
         data_character2[0] <= 8'h08;//女
         data_character2[1] <= 8'h0A;
         data_character2[2] <= 8'h1F;
         data_character2[3] <= 8'h0A;
         data_character2[4] <= 8'h0E;
         data_character2[5] <= 8'h04;
         data_character2[6] <= 8'h0A;
         data_character2[7] <= 8'h11;
			
         data_character3[0] <= 8'h00;//且
         data_character3[1] <= 8'h0E;
         data_character3[2] <= 8'h0A;
         data_character3[3] <= 8'h0E;
         data_character3[4] <= 8'h0A;
         data_character3[5] <= 8'h0E;
         data_character3[6] <= 8'h0A;
         data_character3[7] <= 8'h1F;
			
			data_character4[0] <= 8'h1F;//
         data_character4[1] <= 8'h01;
         data_character4[2] <= 8'h01;
         data_character4[3] <= 8'h01;
         data_character4[4] <= 8'h1D;
         data_character4[5] <= 8'h01;
         data_character4[6] <= 8'h01;
         data_character4[7] <= 8'h1F;
		*/	
			
end

reg [7:0] data_first_line  [15:0];
reg [7:0] data_second_line [15:0];
always @(posedge clk_LCD)
       begin 
                   data_first_line[0]  <= 8'h44;//D
                   data_first_line[1]  <= 8'h65;//e
                   data_first_line[2]  <= 8'h61;//a
                   data_first_line[3]  <= 8'h64;//d
                   data_first_line[4]  <= 8'h4c;//L
                   data_first_line[5]  <= 8'h69;//i
                   data_first_line[6]  <= 8'h6e;//n
                   data_first_line[7]  <= 8'h65;//e
                   data_first_line[8]  <= 8'h3a;//:
                   data_first_line[9]  <= 8'h20;//
                   data_first_line[10] <= 8'h51;//Q
                   data_first_line[11] <= 8'h41;//A
                   data_first_line[12] <= 8'h51;//Q
                   data_first_line[13] <= 8'h8a;//不显示
                       

                   data_second_line[1] <= 8'h00;//字0
                   data_second_line[2] <= 8'h01;//字2
                   data_second_line[3] <= 8'h02;//字3
                   data_second_line[4] <= 8'h03;//字2
                   data_second_line[5] <= 8'h21;//字3
                   data_second_line[6] <= 8'h20;//字4
                   data_second_line[7] <= 8'h36;//6
                   data_second_line[8] <= 8'h2e;//.
                   data_second_line[9] <= 8'h32;//2
                   data_second_line[10] <= 8'h39;//9
                   data_second_line[11] <= 8'h21;//
                   data_second_line[12] <= 8'h21;//
                   data_second_line[13] <= 8'h21;//
	/*          data_first_line[0]  <= 8'h01;//T
		       data_first_line[1]  <= 8'h6F;//o
             data_first_line[2]  <= 8'h20;// 
             data_first_line[3]  <= 8'h6d;//m
             data_first_line[4]  <= 8'h79;//y
             data_first_line[5]  <= 8'h20;//
             data_first_line[6]  <= 8'h66;//f
             data_first_line[7]  <= 8'h72;//r
             data_first_line[8]  <= 8'h69;//i
             data_first_line[9]  <= 8'h65;//e
             data_first_line[10] <= 8'h6e;//n
             data_first_line[11] <= 8'h64;//d
             data_first_line[12] <= 8'h8a;//s
             data_first_line[13] <= 8'h8a;//不显示
				 
				 
             data_second_line[1] <= 8'h00;//字0
             data_second_line[2] <= 8'h01;//字2
             data_second_line[3] <= 8'h02;//字3
             data_second_line[4] <= 8'h01;//字2
             data_second_line[5] <= 8'h02;//字3
             data_second_line[6] <= 8'h03;//字4
             data_second_line[7] <= 8'h03;//p
             data_second_line[8] <= 8'h03;//p
             data_second_line[9] <= 8'h8a;//y
				 data_second_line[10] <= 8'h64;//y
				 data_second_line[11] <= 8'h64;//y
	*/
		end
	
always @(posedge clk_LCD or negedge rst)

     begin 
	    if(!rst)
		   begin 
		     state       <= clear_lcd;
			  RS          <= 1'b0;
			  data        <= 8'b0;
			  en_sel      <= 1'b1;
			  disp_count  <= 5'b0;
			  num         <= 3'b0;
			  write_count <= 5'b0;
		   end
	    else 
         case(state)
         clear_lcd:
                begin 
                    state <=set_disp_mode;
                    data  <=8'h01;//清屏代码
                end
         set_disp_mode:
                begin 
                    state <=disp_on;
                    data  <=8'h38;
                end
         disp_on:
                begin 
             	     state <=shift_down;
                    data  <=8'h0c;//显示开关控制指令
				    end
		   shift_down:
                begin 
                    state <=write_cgram;
                    data  <=8'h06;
				    end
		   write_cgram:
                begin 
                      case (num)
                          0:begin 
                             data  <= 8'h40;       //
                             num   <= num +1;
                             state <= write_cgram;
                            end
                          1:begin 
                                if(write_count == 8)
                                   begin 
                                     data  <= 8'h48;   //
                                     RS    <= 1'b0;
                                     num   <= num +1;
                                     state <= write_cgram;
                                     write_count<=0;
                                   end
                                else 
                                   begin 
                                     data <=data_character[write_count];
								             RS   <=1'b1;
                                     write_count <= write_count+1'b1;
                                     state  <= write_cgram;
                                   end
                            end
				             2:begin 
							           if(write_count==8)
                                     begin 
                                          data<=8'h50;   //
                                          RS  <=1'b0;
                                          num <= num+1;
                                          state <= write_cgram;
                                          write_count<=0;
                                     end
								        else 
								             begin
									               data<=data_character2[write_count];
										            RS  <=1'b1;
                                          write_count <=write_count+1'b1;
                                          state <=write_cgram;
                                      end
                            end
							    3:begin 
                                 if (write_count==8)
                                     begin 
                                          data<=8'h58; //
                                          RS<=1'b0;
														num <= num+1;
                                          state<=write_cgram;
                                          write_count<=0;
                                     end
								         else   
                                     begin 
                                          data<=data_character3[write_count];
                                          RS<=1'b1;
                                          write_count <=write_count+1'b1;
                                          state   <=write_cgram;
                                     end
                            end
								4:begin 
                                 if (write_count==8)
                                     begin 
                                          data<=8'h80;  //
                                          RS<=1'b0;
                                          state<=  write_data_first;
                                          write_count<=0;
                                     end
								         else   
                                     begin 
                                          data<=data_character4[write_count];
                                          RS<=1'b1;
                                          write_count <=write_count+1'b1;
                                          state   <=write_cgram;
                                     end
                            end
                       endcase
                   end
         write_data_first:				   
				  begin 
                   if(disp_count ==14)
                      begin 
                         data       <= 8'hc2;
                         RS         <= 1'b0;
                         disp_count <= 4'b0;
                         state      <= write_data_second;
                      end
                   else 
                      begin 
                         data       <= data_first_line[disp_count];
                         RS         <= 1'b1;
                         disp_count <=disp_count+1'b1;
						       state      <= write_data_first;
					       end
				  end
				
        write_data_second:
                begin  
				        if(disp_count==11)
					       begin 
					         en_sel    <= 1'b0;
						      RS        <= 1'b0;
						      disp_count<= 4'b0;
						      state     <= idel;
					     end
					 else 
					      begin 
					         data       <= data_second_line[disp_count+1];
						      RS         <= 1'b1;
						      disp_count <= disp_count+1'b1;
						      state      <= write_data_second;
					      end
			      end
				 
				idel:
				     begin 
					     state  <= idel;
				     end
				default: state <= clear_lcd;
        endcase 
     end
endmodule		   
						 
						




