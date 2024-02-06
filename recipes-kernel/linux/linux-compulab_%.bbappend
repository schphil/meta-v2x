FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
	file://80211p.cfg \
    file://0001-ath9k-ocb.patch \
"

do_configure:prepend() {
    # Configuration fragments add support
    for cfg_frag in ${WORKDIR}/*.cfg;do
        cat ${cfg_frag} >> ${S}/arch/arm64/configs/compulab.config
    done
}

