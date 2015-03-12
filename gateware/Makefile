
all:
ifeq "$(wildcard ./misoc/build )" ""
	@echo "I didn't have meatstand_common cloned."
	@echo "I will get it for you now."
	../update_submodule.sh
	@echo "I got my dependencies I am ready to go"
	@make
else
	cd misoc; PYTHONPATH=":../migen/" ./make.py -X ../blinkie -t blinkie -p minispartan6 clean build-bitstream
	cp misoc/build/*.bit ./
endif
clean:
	rm -rf misoc/build/*
