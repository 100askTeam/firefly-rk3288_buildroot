board=board/100ask/firefly-rk3288/
pwd

#MKIMAGE=$HOST_DIR/usr/bin/mkimage
#$MKIMAGE -n rk3288 -T rksd -d $BINARIES_DIR/u-boot-spl-dtb.bin $BINARIES_DIR/u-boot-spl-dtb.img


${board}/build_sd_image.sh
