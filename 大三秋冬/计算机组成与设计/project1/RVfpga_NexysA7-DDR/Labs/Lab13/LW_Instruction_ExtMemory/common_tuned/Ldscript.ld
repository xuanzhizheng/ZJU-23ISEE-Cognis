/*
 * Copyright (C) 2020 Imagination Technologies Limited. All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */

ENTRY(_rvinit)

MEMORY
{
	/*
	 * w - read/write section
	 * x - executable section
	 * a - allocatable section
	 * ! - invert the sense of any of the attributes that follow
	 * r - read only section
	 * i - initialized section
	 */
	DDR_0     (w!rx)   : ORIGIN = 0x00000000, LENGTH = 64K  
  	dccm      (wxa!ri) : ORIGIN = 0xf0040000, LENGTH = 64K
}

PHDRS
{
	ddr_0_text     PT_LOAD;
	ddr_0_init     PT_LOAD;
	ddr_0_data     PT_LOAD;
    dccm_load 	   PT_LOAD;
	
	tls PT_TLS;
}

SECTIONS
{
	__num_harts = 1;

	PROVIDE(__stack = ORIGIN(DDR_0) + LENGTH(DDR_0));

	/* Size of the stack for a single hart */
	__stack_size = DEFINED(__stack_size) ? __stack_size : 4K;

	/* Number of harts used by the application */
	__num_harts  = DEFINED(__num_harts) ? __num_harts : 1;

	

	.init 0x00000000 : {
		KEEP (*(.text.init.rvinit))
		KEEP (*(.text.init.*))
		KEEP (*(.data.init.enter))
		KEEP (*(SORT_BY_NAME(.init) SORT_BY_NAME(.init.*)))
	} > DDR_0 :ddr_0_text

	

	.text : ALIGN(8) {
		*(.text.unlikely .text.unlikely.*)
		*(.text.startup .text.startup.*)
		*(.text .text.*)
		*(.gnu.linkonce.t.*)
		KEEP (*(.fini))
		__text_end = .;
	} > DDR_0 :ddr_0_text

	PROVIDE (__etext = __text_end);
	PROVIDE (_etext = __text_end);
	PROVIDE (etext = __text_end);
	PROVIDE (__text_start = ADDR(.text));
	PROVIDE (__text_source = LOADADDR(.text));
	PROVIDE (__text_size = __text_end - __text_start);

        /* Need to pre-align so that the symbols come after padding */
        . = ALIGN(8);
	

	.preinit_array : {
		PROVIDE_HIDDEN ( __preinit_array_start = . );
		KEEP (*(.preinit_array))
		PROVIDE_HIDDEN ( __preinit_array_end = . );
	} > DDR_0 :ddr_0_init

	.init_array : {
		PROVIDE_HIDDEN ( __init_array_start = . );
		KEEP (*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))
		KEEP (*(.init_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .ctors))
		PROVIDE_HIDDEN ( __init_array_end = . );
	} > DDR_0 :ddr_0_init

	.fini_array : {
		PROVIDE_HIDDEN ( __fini_array_start = . );
		KEEP (*(SORT_BY_INIT_PRIORITY(.fini_array.*) SORT_BY_INIT_PRIORITY(.dtors.*)))
		KEEP (*(.fini_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .dtors))
		PROVIDE_HIDDEN ( __fini_array_end = . );
	} > DDR_0 :ddr_0_init

	.data : ALIGN_WITH_INPUT {
		*(.data .data.*)
		*(.gnu.linkonce.d.*)
 		. = ALIGN(8);
		/* [IMG] Although (gp - 0x800) points the start of .sdata
		 * and -0x800 can fit in signed 12-bit, linker may not
		 * transform the instructions accessing the first addresses
		 * placed after .data to gp offset because the offset may
		 * increase after the linker alignment process. Not only this,
		 * the relaxation range is calculated conservatively for
		 * alignment purposes due to memset-img forcing 64 byte
		 * alignment. To make sure the first few addresses can be
		 * accessed with gp offset, we move the gp slightly closer to
		 * the start of sdata by changing offset to 0x7b0
		 * (0x800 - 0x10 - 0x40).
		 */
		PROVIDE( __global_pointer$ = . + 0x7b0 );
		*(.sdata .sdata.* .sdata2.*)
		*(.gnu.linkonce.s.*)
	} > DDR_0 :ddr_0_init
        PROVIDE(__data_start = ADDR(.data));
	PROVIDE(__data_source = LOADADDR(.data));

	/* [IMG] Thread local initialised data. This data gets
	 * copied to .tdata.template in data initialisation
	 * code in crto0 so that all newly created tls blocks
	 * get a copy of the original tdata.
	 */
	.tdata : ALIGN_WITH_INPUT {
		PROVIDE( __tls_base = .);
		*(.tdata .tdata.* .gnu.linkonce.td.*)
	} > DDR_0 :tls :ddr_0_init
	PROVIDE( __tdata_size = SIZEOF(.tdata) );

	.tdata.template : ALIGN_WITH_INPUT {
		PROVIDE( __tls_template_base = .);
                . += __tdata_size;
		PROVIDE(__data_end = .);
	} > DDR_0 :tls :ddr_0_init
	PROVIDE( __tdata_source = LOADADDR(.tdata.template) );

	PROVIDE( __edata = __data_end );
	PROVIDE( _edata = __data_end );
	PROVIDE( edata = __data_end );
	PROVIDE( __data_size = __data_end - __data_start );

        

	.rodata : {
		*(.rdata)
		*(.rodata .rodata.*)
		*(.gnu.linkonce.r.*)
		. = ALIGN(8);
		*(.srodata.cst16)
		*(.srodata.cst8)
		*(.srodata.cst4)
		*(.srodata.cst2)
		*(.srodata .srodata.*)
		*(.data.rel.ro .data.rel.ro.*)
		*(.got .got.*)
	} > DDR_0 :ddr_0_init

	/*
	 * Data values which are preserved across reset
	 */
	.preserve (NOLOAD) : {
		PROVIDE(__preserve_start__ = .);
		KEEP(*(SORT_BY_NAME(.preserve.*)))
		KEEP(*(.preserve))
		PROVIDE(__preserve_end__ = .);
	} > DDR_0 :ddr_0_init

        

	.tbss (NOLOAD) : {
		PROVIDE( __bss_start = . );
		*(.tbss .tbss.* .gnu.linkonce.tb.*)
		*(.tcommon)
		PROVIDE( __tls_end = . );
	} > DDR_0 :tls :ddr_0_data
	PROVIDE( __tbss_size = SIZEOF(.tbss) );
	PROVIDE( __tls_size = __tls_end - __tls_base );

	/*
	 * The linker special cases .tbss segments which are
	 * identified as segments which are not loaded and are
	 * thread_local.
	 *
	 * For these segments, the linker does not advance 'dot'
	 * across them.  We actually need memory allocated for tbss,
	 * so we create a special segment here just to make room
	 */
	.tbss_space (NOLOAD) : {
		. = . + __tbss_size;
	} > DDR_0 :ddr_0_data

	.bss (NOLOAD) : {
		*(.sbss*)
		*(.gnu.linkonce.sb.*)
		*(.bss .bss.*)
		*(.gnu.linkonce.b.*)
		*(COMMON)
		. = ALIGN(8);
		__bss_end = .;
	} > DDR_0 :ddr_0_data
	PROVIDE( __end = __bss_end );
	PROVIDE( _end = __bss_end );
	PROVIDE( end = __bss_end );
	__bss_size = __bss_end - __bss_start;

        

	/* Make the rest of memory available for heap storage */
	PROVIDE( __heap_start = __end );
	PROVIDE( __heap_end = ORIGIN(DDR_0) + LENGTH(DDR_0) - __num_harts * __stack_size);
	PROVIDE( __heap_size = __heap_end - __bss_end );

	/* Define stack regions for up to __num_harts to make sure they fit in memory */
	.stack (NOLOAD) : {
		. += __num_harts * __stack_size;
	} > DDR_0 :ddr_0_data
	
	/* Throw away C++ exception handling information */
	/DISCARD/ : {
		*(.eh_frame .eh_frame.*)
		*(.note .note.*)
	}

	.midccm :
	{
	    . = ALIGN(8);
	    *(.midccm)
	} > dccm  : dccm_load

}
