board=board/100ask/firefly-rk3288/
pwd

#MKIMAGE=$HOST_DIR/usr/bin/mkimage
#$MKIMAGE -n rk3288 -T rksd -d $BINARIES_DIR/u-boot-spl-dtb.bin $BINARIES_DIR/u-boot-spl-dtb.img


${board}/build_sd_image.sh

mkdir -p  output/images/nfs_rootfs
mv output/images/rootfs.tar.gz          output/images/nfs_rootfs

echo "-------------------------------------------------------"
echo " Uboot image:             `ls -lh  output/images/idbloader.img`"
echo " Uboot image:             `ls -lh  output/images/uboot.img`"
echo " Uboot image:             `ls -lh  output/images/trust.img` "

echo " Linux kernel image:     `ls -lh output/images/zImage`"
echo " Linux kernel image:     `ls -lh output/images/rk3288-firefly.dtb`"
echo " nfs rootfs   files:     `ls -lh output/images/nfs_rootfs/*`"

echo "                                                          "
echo " SDcardsystem image:     `ls -lh  output/images/sdcard.img ` "

echo -e  "\033[32m Successful system construction!   \033[0m "
