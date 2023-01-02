# Colibri IMX6ULL
PREFERRED_PROVIDER_virtual/kernel:colibri-imx6ull = "linux-toradex-mainline"

INITRAMFS_IMAGE_BUNDLE:colibri-imx6ull = "0"

TRUSTME_HARDWARE:colibri-imx6ull = "arm"
TRUSTME_LOGTTY:colibri-imx6ull = "ttymxc0"
TRUSTME_FSTYPES:colibri-imx6ull = "trustmefslc"

KERNEL_CLASSES:append:colibri-imx6ull = " kernel-fitimage "
KERNEL_IMAGETYPES:append:colibri-imx6ull = " fitImage"
KERNEL_DEVICETREE:colibri-imx6ull = " imx6ull-colibri-wifi-eval-v3.dtb imx6ull-colibri-eval-v3.dtb "

#UBOOT_ENTRYPOINT:colibri-imx6ull = "0x81000000"
#UBOOT_LOADADDRESS:colibri-imx6ull = "0x81000000"
#UBOOT_MAKE_TARGET:colibri-imx6ull = " all u-boot.imx"
#UBOOT_MKIMAGE_DTCOPTS:colibri-imx6ull = "-I dts -O dtb -p 2000"

IMAGE_INSTALL:append:colibri-imx6ull = " \
    linux-firmware-sd8887    \
    linux-firmware-sd8997    \
    linux-firmware-imx-sdma-imx6q \
"

# Container QEMU ARM32
PREFERRED_PROVIDER_virtual/kernel:qemuarm = "linux-dummy"
TRUSTME_HARDWARE:qemuarm = "arm"
#PACKAGE_CLASSES:qemuarm = "package_deb"
