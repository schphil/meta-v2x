SUMMARY = "A console-only image that fully supports the target device \
hardware."

LICENSE = "MIT"

inherit core-image

IMAGE_FEATURES += "splash ssh-server-openssh"

# the deploy code requires bash and
# normal linux utilities not busybox ones
IMAGE_INSTALL += "\
    dhcpcd iptables rsync minicom evtest vsftpd db vim openssl openssh libnl \
    libnl-dev libgcrypt libgpg-error crda make libgcrypt pciutils \
    pkgconfig gcc \
    packagegroup-core-boot packagegroup-core-full-cmdline \
    "
