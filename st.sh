#"${qemu[$board]}" \
#  -machine "$board" \
#  -device usb-mouse \
#  -device usb-kbd \
#  -drive file="$img_file",if=sd \
#  -netdev user,id=net0,hostfwd=tcp::8022-:22 \
#  -device usb-net,netdev=net0 \
#\
#  -kernel "$kernel_file" \
#  -append "$(cat $cmdline_file) $screen_args $EXTRA_ARGS" \
#  -dtb "$dtb_file" \
#\
#  -no-reboot \
#  -daemonize \
#\
#  "${qemu_extra[@]}"
 
# console=serial0,115200 console=tty1 root=PARTUUID=216b6d43-02 rootfstype=ext4 fsck.repair=yes rootwait quiet splash plymouth.ignore-serial-consoles

#qemu-system-aarch64 \
#  -machine raspi3b \
#  --cpu cortex-a72 \
#  -dtb ./bcm2710-rpi-3-b-plus.dtb \
#  -kernel ./kernel8.img \
#  -sd ./bullseye-arm64.img \
#  -append "console=ttyAMA0,115100 console=tty1 root=PARTUUID=216b6d43-02 rootfstype=ext4 rschk.repair=yes rootwait quiet splash plymouth.ignore-serial-consoles bcm2708_fb.fbwidth=1024 bcm2708_fb.fbheight=768 dwc_otg.fiq_fsm_enable=0" \
#  -no-reboot \
#  -daemonize


qemu-system-aarch64 \
 -machine raspi3b \
 --cpu cortex-a72 \
 -dtb ./bcm2710-rpi-3-b.dtb \
 -m 1G \
 -smp 4 \
 -serial stdio \
 -kernel ./kernel8.img \
 -sd ./bullseye-arm64.img \
 -append "rw earlyprintk loglevel=8 console=ttyAMA0,115100 dwc_otg.lpm_enable=0 root=/dev/mmcblk0p2 rootdelay=1"
 
