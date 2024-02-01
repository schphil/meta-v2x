FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI = "https://www.kernel.org/pub/software/network/${BPN}/${BP}.tar.xz"
SRC_URI[sha256sum] = "89fd031aed5977c219a71501e144375a10e7c90d1005d5d086ea7972886a2c7a"

SRC_URI += "file://db_80211p.txt"
# SRC_URI += "file://root.key.pub.pem"
# SRC_URI += "file://linville.key.pub.pem"

#do_patch() {
#    cp ${WORKDIR}/db_80211p.txt ${B}/db.txt
#    # cp ${WORKDIR}/root.key.pub.pem ${B}/
#    # cp ${WORKDIR}/linville.key.pub.pem ${B}/
#}
