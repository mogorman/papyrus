PROJECT_NAME = papyrus
PART = xc6slx9-3-ftg256
# Set the amount of output that will be displayed (xflow or silent generally)
INTSTYLE = xflow
XILINX=/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/

BUILD_DIR = build

all: clean prj syn tran map par trce bit

prj:
	@echo "Make: Project file"
	@mkdir -p $(BUILD_DIR)
	@rm -f build/$(PROJECT_NAME).prj
	@touch build/$(PROJECT_NAME).prj
	@cd $(BUILD_DIR); \
	for file in $$(find ../src -name "*.vhd"); do \
		echo vhdl `dirname $${file}| sed -e 's/^...//' -e 's/\//_/g'` \"$$file\" >> ./$(PROJECT_NAME).prj; \
	done; \
	for file in $$(find ../src -name "*.v"); do \
		echo verilog `dirname $${file}| sed -e 's/^...//' -e 's/\//_/g'` \"$$file\" >> ./$(PROJECT_NAME).prj; \
	done


syn: prj 
	@echo "Make: Synthesizing"
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR); \
	PATH=$$PATH:$(XILINX)  export PATH; \
	cp ../ise/project.xst ./$(PROJECT_NAME).xst; \
	echo "-ifn ./$(PROJECT_NAME).prj" >> ./$(PROJECT_NAME).xst; \
	echo "-ofn $(PROJECT_NAME)" >> ./$(PROJECT_NAME).xst; \
	xst \
	-intstyle $(INTSTYLE) \
	-ifn "./$(PROJECT_NAME).xst" \
	-ofn "$(PROJECT_NAME).syr"

tran: syn
	@echo "Make: Translate"
	@cd $(BUILD_DIR); \
	PATH=$$PATH:$(XILINX)  export PATH; \
	ngdbuild \
	-intstyle $(INTSTYLE) \
	-dd _ngo \
	-nt timestamp \
	-uc ../ucf/mapping.ucf \
	-p $(PART) $(PROJECT_NAME).ngc $(PROJECT_NAME).ngd  

map: tran
	@echo "Make: Map"
	@cd $(BUILD_DIR); \
	PATH=$$PATH:$(XILINX)  export PATH; \
	map \
	-intstyle $(INTSTYLE) \
	-p $(PART) \
	-ir off \
	-pr off \
	-c 100 \
	-o $(PROJECT_NAME).ncd $(PROJECT_NAME).ngd $(PROJECT_NAME).pcf 

par: map
	@echo "Make: Place & Route"
	@cd $(BUILD_DIR); \
	PATH=$$PATH:$(XILINX)  export PATH; \
	par \
	-w \
	-intstyle $(INTSTYLE) \
	-ol high \
	-xe n \
	-mt off $(PROJECT_NAME).ncd $(PROJECT_NAME).ncd $(PROJECT_NAME).pcf 

trce: par
	@echo "Make: Trace"
	@cd $(BUILD_DIR); \
	PATH=$$PATH:$(XILINX)  export PATH; \
	trce \
	-intstyle $(INTSTYLE) \
	-v 3 \
	-s 3 \
	-n 3 \
	-fastpaths \
	-xml $(PROJECT_NAME).twx $(PROJECT_NAME).ncd \
	-o $(PROJECT_NAME).twr $(PROJECT_NAME).pcf 

bit: trce
	@echo "Make: Bitgen"
	@cd $(BUILD_DIR); \
	PATH=$$PATH:$(XILINX)  export PATH; \
	cp ../ise/project.ut ./$(PROJECT_NAME).ut; \
	bitgen \
	-intstyle $(INTSTYLE) \
	-f ./$(PROJECT_NAME).ut $(PROJECT_NAME).ncd 
	@cp $(BUILD_DIR)/$(PROJECT_NAME).bit .

clean:
	@rm -rf $(BUILD_DIR)
	@rm -f $(PROJECT_NAME).bit

install:
	@echo "Make: Install"
	sudo xc3sprog  -v -v -c ftdi "$(PROJECT_NAME).bit"

flasher:
	@if [ ! -f ise/spiflasher/spiflasher.bit ] ; \
	then \
		echo "Make: Building flasher"; \
		cd ise/spiflasher; \
		make; \
	fi	

flash: flasher
	@echo "Make: Install to flash"
	@sudo xc3sprog -v -v -c ftdi "ise/spiflasher/spiflasher.bit"
	@sudo xc3sprog  -v -v -c ftdi -I "$(PROJECT_NAME).bit"
	@sudo xc3sprog  -v -v -c ftdi "$(PROJECT_NAME).bit"

erase: flasher
	@echo "Make: Erase it"
	@sudo xc3sprog -v -v -c ftdi "ise/spiflasher/spiflasher.bit"
	@sudo xc3sprog  -v -v -c ftdi -I "ise/spiflasher/spiflasher.bit"
photos:
	@@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR); \
	for file in $$(find ../src -name "*.v"); do \
		../ise/yosys.script "$$file"; \
	done


