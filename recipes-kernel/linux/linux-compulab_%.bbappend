FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
	file://80211p.cfg \
    file://0001-ath9k-ocb.patch \
    file://0001-pcie-designware.patch \
    file://999-Enable-queueing-in-all-4-ACs-BE-BK-VI-VO.patch \
    file://0002-Get-hw-queue-pending-stats-from-ath9k-via-netlink.patch \
"

do_configure:prepend() {
    # Configuration fragments add support
    for cfg_frag in ${WORKDIR}/*.cfg;do
        cat ${cfg_frag} >> ${S}/arch/arm64/configs/compulab.config
    done
}

