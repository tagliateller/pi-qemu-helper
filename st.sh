


qemu-system-aarch64 -machine raspi3b --cpu cortex-a72 -dtb ./bcm2710-rpi-3-b.dtb -m 1G -smp 4 -serial stdio -kernel ./kernel8.img -sd ./bullseye-arm64.img -append "rw earlyprintk loglevel=8 console=ttyAMA0,115100 dwc_otg.lpm_enable=0 root=/dev/mmcblk0p2 rootdelay=1"
