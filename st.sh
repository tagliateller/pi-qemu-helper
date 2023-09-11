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
  
qemu-system-aarch64 \
  -machine raspi3b \
  --cpu cortex-a72 \
  -dtb ./bcm2710-rpi-3-b.dtb \
  -m 1G -smp 4 -serial stdio \
  -kernel ./kernel8.img \
  -sd ./bullseye-arm64.img \
  -append "$(cat cmdline.txt)"
#  -append "rw earlyprintk loglevel=8 console=ttyAMA0,115100 dwc_otg.lpm_enable=0 root=/dev/mmcblk0p2 rootdelay=1"
