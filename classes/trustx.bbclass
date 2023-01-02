require conf/distro/include/trustx-machines.inc


PREFERRED_PROVIDER_virtual/kernel ?= "linux-toradex-mainline"

INITRAMFS_IMAGE_BUNDLE ?= "1"
INITRAMFS_IMAGE ?= "trustx-cml-initramfs"

TRUSTME_HARDWARE ?= "undefined"
TRUSTME_LOGTTY ?= "tty11"
TRUSTME_FSTYPES ?= "trustmefslc"

PACKAGE_CLASSES ?= "package_ipk"
#KERNEL_DEVICETREE ?= " icolibri-imx6ull-colibri-wifi-eval-v3.dtb icolibri-imx6ull-colibri-eval-v3.dtb "

#UBOOT_ENTRYPOINT ?= "0x81000000"
#UBOOT_LOADADDRESS ?= "0x81000000"
#UBOOT_MAKE_TARGET ?= " all u-boot.imx"
#UBOOT_MKIMAGE_DTCOPTS ?= "-I dts -O dtb -p 2000"


# keys name in keydir (eg. "dev.crt", "dev.key")
UBOOT_SIGN_KEYDIR ?= "${TOPDIR}/test_certificates/"
UBOOT_SIGN_ENABLE ?= "1"
UBOOT_SIGN_KEYNAME ?= "ssig_subca"
