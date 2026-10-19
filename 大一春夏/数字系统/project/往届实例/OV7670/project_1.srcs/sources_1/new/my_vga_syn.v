






// 640 X 480 @ 60Hz with a 25.000MHz pixel clock

`define H_ACTIVE		640
`define H_FRONT_PORCH	16
`define H_SYNCH			96
`define H_BACK_PORCH	48
`define H_TOTAL			( `H_SYNCH + `H_BACK_PORCH + `H_ACTIVE + `H_FRONT_PORCH ) 
//640 // pixels

`define V_ACTIVE		480	
`define V_FRONT_PORCH  11
`define V_SYNCH			2
`define V_BACK_PORCH	31	
`define V_TOTAL			 (`V_SYNCH + `V_BACK_PORCH +  `V_ACTIVE +`V_FRONT_PORCH )	
//480 // lines

/*


 my_vga_syn (
  
        .pixel_clock(),	
		  .rst_i(),
      //  .h_synch_o(),	
		//  .v_synch_o(),
        .pixel_addr () ,
		
          .R_i(),
		  .G_i(),
		  .B_i(),
		  
          .R_o(),
		  .G_o(),
		  .B_o()
    );
   

*/

module my_vga_syn (
        output reg 	dp_en, // 2个周期后出数据
        output reg  [10:0]	line_count  ,  pixel_count ,//地址后3个周期出数据
        input pixel_clock,	rst_i,
        output  h_synch_o,	v_synch_o,
        output reg[31:0] pixel_addr, //地址后2个周期出数据
        input [8:0] R_i,G_i,B_i,
        output reg [8:0] R_o,G_o,B_o
    );

    reg  	h_synch  ,	v_synch ;

    wire dp_en_rr ;
    regs  #(1,2)I_dp_en(  .clk(pixel_clock), .d(dp_en),  .q(dp_en_rr)  );

    always @ (posedge pixel_clock) R_o  <=  ( dp_en_rr ) ?  R_i  :  0;
    always @ (posedge pixel_clock) G_o  <=  ( dp_en_rr ) ?  G_i  :  0;
    always @ (posedge pixel_clock) B_o  <=  ( dp_en_rr ) ?  B_i  :  0;

    regs  #(1,3)I_h_synch(  .clk(pixel_clock), .d(h_synch),  .q(h_synch_o)  );
    regs  #(1,3)I_v_synch(  .clk(pixel_clock), .d(v_synch),  .q(v_synch_o)  );

    /*
      1),做2个计数器，一个用来记录行内的像素点时钟数，
      一个用来记录行数。
      这两个计数器除了复位信号外不受别的因素影响，
      在一直自己循环累加。
    */

    always @(posedge pixel_clock)
        if ( rst_i )pixel_count<=0;
        else if (pixel_count == (`H_TOTAL-1))pixel_count<=0;
        else pixel_count<=pixel_count+1;

    always @(posedge pixel_clock)
        if (rst_i)line_count<=0;
        else if (pixel_count==(`H_TOTAL-1)) begin

            if ( line_count==(`V_TOTAL-1))line_count<=0;
            else line_count<=line_count+1;

        end

    /*
    2）,两个计数器的数值就对应上图的所处的位置。
    我们找到实际要显示区域对应的像素计数器和行计数器
    的数值，只要两个计数器满足在这个区域，
    就允许显示，否则进行消音输出（R,G,B都输出为0）。
    */

    reg h_en  ;
    always@(posedge pixel_clock)
        if (pixel_count == (`H_TOTAL-1) )h_en<=1;
        else if (pixel_count==(`H_ACTIVE-1))h_en<=0;

    reg v_en ;
    always@(posedge pixel_clock)
        if (pixel_count == (`H_TOTAL-1) )begin

            if (line_count==(`V_TOTAL-1))v_en<=1;
            else if (line_count==(`V_ACTIVE-1))v_en<=0;

        end
  
          always@(posedge pixel_clock)
         if (v_synch==0) pixel_addr <=0; else 
         if ( v_en & h_en ) pixel_addr <= pixel_addr + 1 ;
    
   /*
    always@(posedge pixel_clock)
        if (v_synch==0) pixel_addr <= 0;
        else pixel_addr <= line_count * 640 + pixel_count ;
*/
    always@(posedge pixel_clock) dp_en <= v_en & h_en ;

    // 3）,从图中找到H_SYN的时间段和V_SYN的时间段，
    // 将这个时间段同步信号对应设置为低电平。

    always@(posedge pixel_clock)
        if ( pixel_count ==(`H_ACTIVE+`H_FRONT_PORCH-1))
            h_synch<=0;
        else if ( pixel_count ==(`H_ACTIVE+`H_FRONT_PORCH+`H_SYNCH-1))
            h_synch<=1;

    always@(posedge pixel_clock)
        if ( pixel_count ==(`H_TOTAL-1))

        begin

            if (line_count==(`V_ACTIVE+`V_FRONT_PORCH-1))
                v_synch<=0;
            else if ( line_count ==(`V_ACTIVE+`V_FRONT_PORCH + `V_SYNCH-1))
                v_synch<=1;

        end

endmodule




module regs
    #( parameter DATA_WIDTH=1,
       parameter DATA_LEN=1  )
     (
         input clk,
         input [DATA_WIDTH-1:0] d,
         output [DATA_WIDTH-1:0] q
     );

    genvar i;
    generate
        for(i=0;i<DATA_LEN;i=i+1)
        begin : gen16
            reg [DATA_WIDTH-1:0]R;
            always @ (posedge clk)
                if (i==0)R<=d;
                else
                    R<=gen16[i-1].R;
        end
        endgenerate

            assign q = gen16[i-1].R;

endmodule
