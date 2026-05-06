.PHONY: clean build run

SDK = ${PLAYDATE_SDK_PATH}
ifeq ($(SDK),)
	SDK = $(shell egrep '^\s*SDKRoot' ~/.Playdate/config | head -n 1 | cut -c9-)
endif
ifeq ($(SDK),)
$(error SDK path not found; set PLAYDATE_SDK_PATH)
endif

SDKBIN = $(SDK)/bin
GAME   = $(shell basename '$(CURDIR)')

build: clean compile run

clean:
	rm -rf '$(GAME).pdx'

compile: Source/main.lua
	"$(SDKBIN)/pdc" Source '$(GAME).pdx'

run:
	open -a '$(SDKBIN)/Playdate Simulator.app' '$(GAME).pdx'
