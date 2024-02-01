SUMMARY = "A console-only image that fully supports the target device \
hardware."

LICENSE = "MIT"

inherit core-image-base

# the deploy code requires bash and
# normal linux utilities not busybox ones
IMAGE_INSTALL += "\
    dhcpcd iptables rsync minicom evtest vsftpd db vim openssl openssh libnl \
    libnl-dev libgcrypt libgpg-error wireless-regdb crda make libgcrypt pciutils \
    python python-m2crypto python-subprocess pkgconfig python-core python-pip gcc \
    "
