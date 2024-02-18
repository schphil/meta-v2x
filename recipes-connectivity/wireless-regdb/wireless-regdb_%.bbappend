FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://makefile.patch"
SRC_URI += "file://db_80211p.txt"

do_patch() {
    cp ${WORKDIR}/db_80211p.txt ${B}/db.txt
    # cp ${WORKDIR}/root.key.pub.pem ${B}/
    # cp ${WORKDIR}/linville.key.pub.pem ${B}/
}

do_compile() {
    oe_runmake
}

do_install() {
    install -d -m0755 ${D}${nonarch_libdir}/crda
    install -d -m0755 ${D}${sysconfdir}/wireless-regdb/pubkeys
    install -m 0644 regulatory.bin ${D}${nonarch_libdir}/crda/regulatory.bin
    install -m 0644 sforshee.key.pub.pem ${D}${sysconfdir}/wireless-regdb/pubkeys/sforshee.key.pub.pem
    install -m 0644 -D regulatory.db ${D}${nonarch_base_libdir}/firmware/regulatory.db
    install -m 0644 regulatory.db.p7s ${D}${nonarch_base_libdir}/firmware/regulatory.db.p7s
}
