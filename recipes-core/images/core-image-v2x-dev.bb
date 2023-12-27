SUMMARY = "A console-only image that fully supports the target device \
hardware."

LICENSE = "MIT"

require recipes-core/images/core-image-base.bb

IMAGE_INSTALL_append = " lspci dhcpcd iptables rsync minicom evtest vsftpd db vim openssl openssh libnl libnl-dev libgcrypt libgpg-error wireless-regdb crda make libgcrypt python python-m2crypto python-subprocess pkgconfig"
IMAGE_INSTALL_remove = " linux-firmware-bcm4330 "
CORE_IMAGE_EXTRA_INSTALL = " python-core python-pip gcc"

