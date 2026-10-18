TOOLCHAIN_PREFIX=${CATAPULT_SDK_TOPDIR}/bin/riscv64-img-elf-
RESET_VECTOR ?= 0
FLASH_ADDR ?= 0x0
DIR = ../build

%.vh: %.bin
	python3 makehex.py $< > $@
%.bin: $(DIR)/%.elf
	$(TOOLCHAIN_PREFIX)objcopy -O binary $< $@
%.dis: $(DIR)/%.elf
	$(TOOLCHAIN_PREFIX)objdump -d $< > $@
clean:
	rm -f *.bin *.vh *.dis *.vcd
