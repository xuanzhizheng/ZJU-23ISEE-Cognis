TOOLCHAIN_PREFIX=/mnt/d/catapult-sdk_1.9.1/bin/riscv64-img-elf-
RESET_VECTOR ?= 0
FLASH_ADDR ?= 0x0
DIR = ../build

%.vh: %.bin
	python3 makehex.py $< > $@
%.bin: $(DIR)/%.elf
	$(TOOLCHAIN_PREFIX)objcopy.exe -O binary $< $@
%.dis: $(DIR)/%.elf
	$(TOOLCHAIN_PREFIX)objdump.exe -d $< > $@
clean:
	rm -f *.bin *.vh *.dis *.vcd
