-include .config

.PHONY: all menuconfig dkuhne

all: 
ifeq ($(CONFIG_TARGET_BADR),y)
	@echo 'Target is BADR'
endif
ifeq ($(CONFIG_TARGET_ADR),y)
	@echo 'Target is ADR'
endif
	
menuconfig:
	../output/bin/kconfig-mconf Config.in
	
dkuhne:
	@echo $(CONFIG_DKUHNE)

