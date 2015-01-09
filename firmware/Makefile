PROJECT_NAME = led_test
PART = xc6slx9-3-ftg256
# Set the amount of output that will be displayed (xflow or silent generally)
INTSTYLE = xflow

BUILD_DIR = build

all: syn tran map par trce bit

syn:
	@echo "Make: Synthesizing"
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR); \
	xst \
	-intstyle $(INTSTYLE) \
	-ifn "../ise/$(PROJECT_NAME).xst" \
	-ofn "$(PROJECT_NAME).syr"

tran:
	@echo "Make: Translate"
	@cd $(BUILD_DIR); \
	ngdbuild \
	-intstyle $(INTSTYLE) \
	-dd _ngo \
	-nt timestamp \
	-uc ../ucf/$(PROJECT_NAME).ucf \
	-p $(PART) $(PROJECT_NAME).ngc $(PROJECT_NAME).ngd  

map:
	@echo "Make: Map"
	@cd $(BUILD_DIR); \
	map \
	-intstyle $(INTSTYLE) \
	-p $(PART) \
	-ir off \
	-pr off \
	-c 100 \
	-o $(PROJECT_NAME).ncd $(PROJECT_NAME).ngd $(PROJECT_NAME).pcf 

par:
	@echo "Make: Place & Route"
	@cd $(BUILD_DIR); \
	par \
	-w \
	-intstyle $(INTSTYLE) \
	-ol high \
	-xe n \
	-mt off $(PROJECT_NAME).ncd $(PROJECT_NAME).ncd $(PROJECT_NAME).pcf 

trce:
	@echo "Make: Trace"
	@cd $(BUILD_DIR); \
	trce \
	-intstyle $(INTSTYLE) \
	-v 3 \
	-s 3 \
	-n 3 \
	-fastpaths \
	-xml $(PROJECT_NAME).twx $(PROJECT_NAME).ncd \
	-o $(PROJECT_NAME).twr $(PROJECT_NAME).pcf 

bit:
	@echo "Make: Bitgen"
	@cd $(BUILD_DIR); \
	bitgen \
	-intstyle $(INTSTYLE) \
	-f ../ise/$(PROJECT_NAME).ut $(PROJECT_NAME).ncd 
	@cp $(BUILD_DIR)/$(PROJECT_NAME).bit .

clean:
	@rm -Rf $(BUILD_DIR)
	@rm -f $(PROJECT_NAME).bit

