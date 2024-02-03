FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://db_80211p.txt"

SRC_URI = "https://www.kernel.org/pub/software/network/${BPN}/${BP}.tar.xz"
SRC_URI[sha256sum] = "884ba2e3c1e8b98762b6dc25ff60b5ec75c8d33a39e019b3ed4aa615491460d3"

inherit bin_package

do_patch() {
    cp ${WORKDIR}/db_80211p.txt ${B}/db.txt
    # cp ${WORKDIR}/root.key.pub.pem ${B}/
    # cp ${WORKDIR}/linville.key.pub.pem ${B}/
}

do_install() {
    install -d -m0755 ${D}${libdir}/crda
    install -d -m0755 ${D}${sysconfdir}/wireless-regdb/pubkeys
    install -m 0644 regulatory.bin ${D}${libdir}/crda/regulatory.bin
    install -m 0644 sforshee.key.pub.pem ${D}${sysconfdir}/wireless-regdb/pubkeys/sforshee.key.pub.pem
    # install -m 0644 ${WORKDIR}/root.key.pub.pem ${D}${sysconfdir}/wireless-regdb/pubkeys/root.key.pub.pem
    # install -m 0644 ${WORKDIR}/linville.key.pub.pem ${D}${sysconfdir}/wireless-regdb/pubkeys/linville.key.pub.pem

}

RSUGGESTS_${PN} = "crda"
