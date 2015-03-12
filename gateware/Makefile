
all:
ifeq "$(wildcard ./misoc/build )" ""
	@echo "I didn't have meatstand_common cloned."
	@echo "I will get it for you now."
	../update_submodule.sh
	@echo "I got my dependencies I am ready to go"
	@make
endif
	cd misoc; PYTHONPATH=":../migen/" ./make.py -X ../blinkie -t blinkie -p minispartan6 all
	cp misoc/build/*.bit ./
clean:
	rm -rf misoc/build/*
