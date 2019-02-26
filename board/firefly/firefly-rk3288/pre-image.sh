board=board/firefly/firefly-rk3288

output/build/uboot-master/build_img.sh

install -m 0644 -D $board/extlinux.conf $TARGET_DIR/boot/extlinux/extlinux.conf

