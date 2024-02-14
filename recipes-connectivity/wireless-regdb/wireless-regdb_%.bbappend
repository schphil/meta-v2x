FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://db_80211p.txt"

do_patch() {
    cp ${WORKDIR}/db_80211p.txt ${B}/db.txt
    # cp ${WORKDIR}/root.key.pub.pem ${B}/
    # cp ${WORKDIR}/linville.key.pub.pem ${B}/
}
