
all:
ifeq "$(wildcard ./misoc/build )" ""
	@echo "I didn't have meatstand_common cloned."
	@echo "I will get it for you now."
	../update_submodule.sh
	@echo "I got my dependencies I am ready to go"
	@make
else
	cd misoc; PYTHONPATH=":../migen/" ./make.py -X ../blinkie -t blinkie -p minispartan6 clean build-bitstream
	cp misoc/build/*.bit ./blinkie.bit
endif

clean:
	rm -rf misoc/build/* blinkie.bit

install:
	@echo "Make: Install"
	@xc3sprog  -v -v -c ftdi "blinkie.bit"

flasher:
	@if [ ! -f spiflasher/spiflasher.bit ] ; \
	then \
		echo "Make: Building flasher"; \
		cd spiflasher; \
		make; \
	fi	

flash: flasher
	@echo "Make: Install to flash"
	@xc3sprog -v -v -c ftdi "spiflasher/spiflasher.bit"
	@xc3sprog  -v -v -c ftdi -I "blinkie.bit"
	@xc3sprog  -v -v -c ftdi "blinkie.bit"

erase: flasher
	@echo "Make: Erase it"
	@xc3sprog -v -v -c ftdi "spiflasher/spiflasher.bit"
	@xc3sprog  -v -v -c ftdi -I "spiflasher/spiflasher.bit"
