// SPDX-License-Identifier: Apache-2.0
// Copyright 2019-2020 Western Digital Corporation or its affiliates.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//********************************************************************************
// $Id$
//
// Function: VeeRwolf SoC-level controller
// Comments:
//
//********************************************************************************

module veerwolf_syscon
  #(parameter [31:0] clk_freq_hz = 0)
  (input wire i_clk,
   input wire 	     i_rst,
   input wire        gpio_irq,

   input wire        gpio2_irq,

   input wire        ptc_irq,
   output reg 	     o_timer_irq,
   output wire 	     o_sw_irq3,
   output wire 	     o_sw_irq4,
   input wire 	     i_ram_init_done,
   input wire 	     i_ram_init_error,
   output reg [31:0] o_nmi_vec,
   output wire 	     o_nmi_int,

   input wire [5:0]  i_wb_adr,
   input wire [31:0] i_wb_dat,
   input wire [3:0]  i_wb_sel,
   input wire 	     i_wb_we,
   input wire 	     i_wb_cyc,
   input wire 	     i_wb_stb,
   output reg [31:0] o_wb_rdt,
   output reg 	     o_wb_ack,
   output wire [ 7          :0] AN,
   output wire [ 6          :0] Digits_Bits);

   reg [63:0] 	      mtime;
   reg [63:0] 	      mtimecmp;

   reg 		 sw_irq3;
   reg 		 sw_irq3_edge;
   reg 		 sw_irq3_pol;
   reg 		 sw_irq3_timer;
   reg 		 sw_irq4;
   reg 		 sw_irq4_edge;
   reg 		 sw_irq4_pol;
   reg 		 sw_irq4_timer;

   reg 		 irq_timer_en;
   reg [31:0] 	 irq_timer_cnt;

   reg     irq_gpio_enable;
   reg     irq_ptc_enable;

   reg 		 nmi_int;
   reg 		 nmi_int_r;

`ifdef SIMPRINT
   reg [1023:0]  signature_file;
   integer 	f = 0;
   initial begin
      if ($value$plusargs("signature=%s", signature_file)) begin
	 $display("Writing signature to %0s", signature_file);
	 f = $fopen(signature_file, "w");
      end
   end
`endif

`ifndef VERSION_DIRTY
 `define VERSION_DIRTY 1
`endif
`ifndef VERSION_MAJOR
 `define VERSION_MAJOR 255
`endif
`ifndef VERSION_MINOR
 `define VERSION_MINOR 255
`endif
`ifndef VERSION_REV
 `define VERSION_REV 255
`endif
`ifndef VERSION_SHA
 `define VERSION_SHA deadbeef
`endif

   wire [31:0] version;

   assign version[31]    = `VERSION_DIRTY;
   assign version[30:24] = `VERSION_REV;
   assign version[23:16] = `VERSION_MAJOR;
   assign version[15: 8] = `VERSION_MINOR;
//   assign version[ 7: 0] = `VERSION_PATCH;

   assign o_sw_irq4 = sw_irq4^sw_irq4_pol;
   assign o_sw_irq3 = sw_irq3^sw_irq3_pol;

   assign o_nmi_int = nmi_int | nmi_int_r;

   wire reg_we = i_wb_cyc & i_wb_stb & i_wb_we & !o_wb_ack;

   //00 = ver
   //04 = sha
   //08 = simprint
   //09 = simexit
   //0A = RAM status
   //0B = sw_irq
   //20 = timer/timecmp
   //40 = SPI
   always @(posedge i_clk) begin
      o_wb_ack <= i_wb_cyc & !o_wb_ack;

      nmi_int   <= 1'b0;
      nmi_int_r <= nmi_int;

      // GPIO Interrupt through IRQ4. Enable by setting bit 0 of word 0x80001018
      if (irq_gpio_enable & (gpio_irq | gpio2_irq)) begin
           sw_irq4 <= 1'b1;
      end

      // Timer (PTC) Interrupt through IRQ3. Enable by setting bit 1 of word 0x80001018
      if (irq_ptc_enable & ptc_irq) begin
           sw_irq3 <= 1'b1;
      end

      // SweRVolf simple timer and software interrupts. Enable by resetting bits 0 and 1 of word 0x80001018
      if (!irq_gpio_enable & !irq_ptc_enable) begin

          if (sw_irq3_edge)
            sw_irq3 <= 1'b0;
          if (sw_irq4_edge)
            sw_irq4 <= 1'b0;

          if (irq_timer_en)
            irq_timer_cnt <= irq_timer_cnt - 1;

          if (irq_timer_cnt == 32'd1) begin
            irq_timer_en <= 1'b0;
            if (sw_irq3_timer)
               sw_irq3 <= 1'b1;
            if (sw_irq4_timer)
               sw_irq4 <= 1'b1;
            if (!(sw_irq3_timer | sw_irq4_timer))
               nmi_int <= 1'b1;
          end

      end


      if (reg_we)
	case (i_wb_adr[5:2])
	  2: begin //0x08-0x0B
`ifdef SIMPRINT
	     if (i_wb_sel[0]) begin
		if (|f) $fwrite(f, "%c", i_wb_dat[7:0]);
		$write("%c", i_wb_dat[7:0]);
	     end
	     if (i_wb_sel[1]) begin
		$display("\nFinito");
		$finish;
	     end
`endif
	     if (i_wb_sel[3]) begin
		sw_irq4       <= i_wb_dat[31];
		sw_irq4_edge  <= i_wb_dat[30];
		sw_irq4_pol   <= i_wb_dat[29];
		sw_irq4_timer <= i_wb_dat[28];
		sw_irq3       <= i_wb_dat[27];
		sw_irq3_edge  <= i_wb_dat[26];
		sw_irq3_pol   <= i_wb_dat[25];
		sw_irq3_timer <= i_wb_dat[24];
	     end
	  end
	  3: begin //0x0C-0x0F
	     if (i_wb_sel[0]) o_nmi_vec[7:0]   <= i_wb_dat[7:0];
	     if (i_wb_sel[1]) o_nmi_vec[15:8]  <= i_wb_dat[15:8];
	     if (i_wb_sel[2]) o_nmi_vec[23:16] <= i_wb_dat[23:16];
	     if (i_wb_sel[3]) o_nmi_vec[31:24] <= i_wb_dat[31:24];
	  end
    6: begin //0x18-0x1B
       if (i_wb_sel[0])
           irq_gpio_enable <= i_wb_dat[0];
           irq_ptc_enable <=  i_wb_dat[1];
    end
	  10 : begin //0x28-0x2B
	     if (i_wb_sel[0]) mtimecmp[7:0]   <= i_wb_dat[7:0];
	     if (i_wb_sel[1]) mtimecmp[15:8]  <= i_wb_dat[15:8];
	     if (i_wb_sel[2]) mtimecmp[23:16] <= i_wb_dat[23:16];
	     if (i_wb_sel[3]) mtimecmp[31:24] <= i_wb_dat[31:24];
	  end
	  11 : begin //0x2C-0x2F
	     if (i_wb_sel[0]) mtimecmp[39:32] <= i_wb_dat[7:0];
	     if (i_wb_sel[1]) mtimecmp[47:40] <= i_wb_dat[15:8];
	     if (i_wb_sel[2]) mtimecmp[55:48] <= i_wb_dat[23:16];
	     if (i_wb_sel[3]) mtimecmp[63:56] <= i_wb_dat[31:24];
	  end
	  12 : begin //0x30-3f
	     if (i_wb_sel[0]) irq_timer_cnt[7:0]   <= i_wb_dat[7:0]  ;
	     if (i_wb_sel[1]) irq_timer_cnt[15:8]  <= i_wb_dat[15:8] ;
	     if (i_wb_sel[2]) irq_timer_cnt[23:16] <= i_wb_dat[23:16];
	     if (i_wb_sel[3]) irq_timer_cnt[31:24] <= i_wb_dat[31:24];
	  end
	  13 : begin
	     if (i_wb_sel[0])
	       irq_timer_en <= i_wb_dat[0];
	  end
      14 : begin
             if (i_wb_sel[0]) Segments_Digit0 <= i_wb_dat[7:0];
             if (i_wb_sel[1]) Segments_Digit1 <= i_wb_dat[15:8];
             if (i_wb_sel[2]) Segments_Digit2 <= i_wb_dat[23:16];
             if (i_wb_sel[3]) Segments_Digit3 <= i_wb_dat[31:24];
      end
      15 : begin
             if (i_wb_sel[0]) Segments_Digit4 <= i_wb_dat[7:0];
             if (i_wb_sel[1]) Segments_Digit5 <= i_wb_dat[15:8];
             if (i_wb_sel[2]) Segments_Digit6 <= i_wb_dat[23:16];
             if (i_wb_sel[3]) Segments_Digit7 <= i_wb_dat[31:24];
      end
	endcase

      case (i_wb_adr[5:2])
	//0x00-0x03
	0 : o_wb_rdt <= version;
	//0x04-0x07
	1 : o_wb_rdt <= 32'h`VERSION_SHA;
	//0x08-0x0C
	2 : begin
	   //0xB
	   o_wb_rdt[31:28] <= {sw_irq4, sw_irq4_edge, sw_irq4_pol, sw_irq4_timer};
	   o_wb_rdt[27:24] <= {sw_irq3, sw_irq3_edge, sw_irq3_pol, sw_irq3_timer};
	   //0xA
	   o_wb_rdt[23:18] <= 6'd0;
	   o_wb_rdt[17:16] <= {i_ram_init_error, i_ram_init_done};
	   //0x8-0x9
	   o_wb_rdt[15:0]  <= 16'd0;
	end
	//0xC-0xF
	3 : o_wb_rdt <= o_nmi_vec;
    //0x18-0x1B
    6 : o_wb_rdt <= {30'd0, irq_ptc_enable, irq_gpio_enable};
    //0x1C
    7 : o_wb_rdt <= clk_freq_hz;
	//0x20-0x23
	8 : o_wb_rdt <= mtime[31:0];
	//0x24-0x27
	9 : o_wb_rdt <= mtime[63:32];
	//0x28-0x2B
	10 : o_wb_rdt <= mtimecmp[31:0];
	//0x2C-0x2F
	11 : o_wb_rdt <= mtimecmp[63:32];
	//0x30-0x33
	12 : o_wb_rdt <= irq_timer_cnt;
	//0x34-0x37
	13 : o_wb_rdt <= {31'd0, irq_timer_en};
      endcase

      mtime <= mtime + 64'd1;
      o_timer_irq <= (mtime >= mtimecmp);

      if (i_rst) begin
	 mtime <= 64'd0;
	 mtimecmp <= 64'd0;
	 o_wb_ack <= 1'b0;
      end
   end


  // Eight-Digit 7 Segment Displays

    reg  [6:0]   Segments_Digit0;
    reg  [6:0]   Segments_Digit1;
    reg  [6:0]   Segments_Digit2;
    reg  [6:0]   Segments_Digit3;
    reg  [6:0]   Segments_Digit4;
    reg  [6:0]   Segments_Digit5;
    reg  [6:0]   Segments_Digit6;
    reg  [6:0]   Segments_Digit7;

    SevSegDisplays_Controller SegDispl_Ctr(
      .clk               (i_clk),    
      .rst_n             (i_rst),
      .Segments_Digit0   (Segments_Digit0), 
      .Segments_Digit1   (Segments_Digit1), 
      .Segments_Digit2   (Segments_Digit2), 
      .Segments_Digit3   (Segments_Digit3), 
      .Segments_Digit4   (Segments_Digit4), 
      .Segments_Digit5   (Segments_Digit5), 
      .Segments_Digit6   (Segments_Digit6), 
      .Segments_Digit7   (Segments_Digit7), 
      .AN                (AN),
      .Digits_Bits       (Digits_Bits)
    );

endmodule




`ifdef ViDBo
parameter COUNT_MAX = 3;
`else
parameter COUNT_MAX = 18;
`endif



module SevSegDisplays_Controller(
                     input wire           clk,
                     input wire           rst_n,
                     input wire    [6:0] Segments_Digit0,
                     input wire    [6:0] Segments_Digit1,
                     input wire    [6:0] Segments_Digit2,
                     input wire    [6:0] Segments_Digit3,
                     input wire    [6:0] Segments_Digit4,
                     input wire    [6:0] Segments_Digit5,
                     input wire    [6:0] Segments_Digit6,
                     input wire    [6:0] Segments_Digit7,
                     output wire   [ 7:0] AN,
                     output wire   [ 6:0] Digits_Bits);

  wire [(COUNT_MAX-1):0] countSelection;
  wire overflow_o_count;


  counter #(COUNT_MAX)  counter20(clk, ~rst_n, 1'b0, 1'b1, 1'b0, 1'b0, 16'b0, countSelection, overflow_o_count);


  wire [ 7:0] [7:0] enable;

  assign enable[0] = (8'hfe);
  assign enable[1] = (8'hfd);
  assign enable[2] = (8'hfb);
  assign enable[3] = (8'hf7);
  assign enable[4] = (8'hef);
  assign enable[5] = (8'hdf);
  assign enable[6] = (8'hbf);
  assign enable[7] = (8'h7f);

  SevSegMux
  #(
    .DATA_WIDTH(8),
    .N_IN(8)
  )
  Select_Enables
  (
    .IN_DATA(enable),
    .OUT_DATA(AN),
    .SEL(countSelection[(COUNT_MAX-1):(COUNT_MAX-3)])
  );


  wire [ 7:0] [6:0] digits_concat;

  assign digits_concat[0] = Segments_Digit0;
  assign digits_concat[1] = Segments_Digit1;
  assign digits_concat[2] = Segments_Digit2;
  assign digits_concat[3] = Segments_Digit3;
  assign digits_concat[4] = Segments_Digit4;
  assign digits_concat[5] = Segments_Digit5;
  assign digits_concat[6] = Segments_Digit6;
  assign digits_concat[7] = Segments_Digit7;

  SevSegMux
  #(
    .DATA_WIDTH(7),
    .N_IN(8)
  )
  Select_Digits
  (
    .IN_DATA(digits_concat),
    .OUT_DATA(Digits_Bits),
    .SEL(countSelection[(COUNT_MAX-1):(COUNT_MAX-3)])
  );

endmodule



module SevSegMux
#(
    parameter DATA_WIDTH = 64,
    parameter N_IN       = 16,
    parameter SEL_WIDTH  = $clog2(N_IN)
)
(
    input  wire [N_IN-1:0][DATA_WIDTH-1:0]   IN_DATA,
    output wire [DATA_WIDTH-1:0]             OUT_DATA,
    input  wire [SEL_WIDTH-1:0]              SEL
);


  assign OUT_DATA = IN_DATA[SEL];

endmodule
