board=board/100ask/firefly-rk3288/


cp $board/build_img.sh output/build/uboot-master/
chmod +x output/build/uboot-master/build_img.sh
output/build/uboot-master/build_img.sh

install -m 0644 -D $board/extlinux.conf $TARGET_DIR/boot/extlinux/extlinux.conf

