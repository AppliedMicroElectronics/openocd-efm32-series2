./bin/openocd-efm32s2 -s scripts -f interface/ft423h-module-swd.cfg \
	-f target/efm32s2.cfg \
	-c 'transport select swd' \
	-c init \
	-c reset \
	-c halt \
	-c 'flash write_image erase '$1 \
	-c 'flash verify_image '$1 \
	-c exit \

