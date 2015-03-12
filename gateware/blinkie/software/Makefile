include $(MSCDIR)/software/common.mak

BOARD=papilio_pro
SERIAL=/dev/ttyUSB1

OBJECTS=isr.o main.o

all: blinkie.bin

# pull in dependency info for *existing* .o files
-include $(OBJECTS:.o=.d)

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@
	chmod -x $@

%.fbi: %.bin
	$(MSCDIR)/mkmscimg.py -f -o $@ $<

blinkie.elf: $(OBJECTS) libs

%.elf:
	$(LD) $(LDFLAGS) \
		-T $(MSCDIR)/software/libbase/linker-sdram.ld \
		-N -o $@ \
		$(MSCDIR)/software/libbase/crt0-$(CPU).o \
		$(OBJECTS) \
		-L$(MSCDIR)/software/libbase \
		-L$(MSCDIR)/software/libcompiler-rt \
		-lbase -lcompiler-rt
	chmod -x $@

main.o: main.c
	$(compile-dep)

%.o: %.c
	$(compile-dep)

%.o: %.S
	$(assemble)

libs:
	$(MAKE) -C $(MSCDIR)/software/libcompiler-rt
	$(MAKE) -C $(MSCDIR)/software/libbase

load: blinkie.bin
	$(MAKE) -C $(MSCDIR)/tools
	$(MSCDIR)/tools/flterm --port $(SERIAL) --kernel blinkie.bin

flash: blinkie.fbi
	$(MSCDIR)/flash_extra.py $(BOARD) blinkie.fbi 0x70000

clean:
	$(RM) $(OBJECTS) $(OBJECTS:.o=.d) blinkie.elf blinkie.bin blinkie.fbi .*~ *~

.PHONY: all main.o clean libs load
