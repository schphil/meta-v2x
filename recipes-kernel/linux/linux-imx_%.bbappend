FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-ath9k-ocb.patch"
#SRC_URI += "file://0001-pcie-designware.patch"
SRC_URI += "file://999-Enable-queueing-in-all-4-ACs-BE-BK-VI-VO.patch"
SRC_URI += "file://0002-Get-hw-queue-pending-stats-from-ath9k-via-netlink.patch"
SRC_URI += "file://80211pconfig"

KBUILD_DEFCONFIG_mx6 = "${WORKDIR}/80211pconfig"

do_unpack_append(){
    cp ${KERNEL_DEFCONFIG} ${S}/arch/${ARCH}/configs/yocto_defconfig
}

COMPATIBLE_MACHINE = "(mx6|mx7|mx8)"
