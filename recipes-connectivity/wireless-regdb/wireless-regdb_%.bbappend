FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://db_80211p.txt"

SRC_URI = "https://www.kernel.org/pub/software/network/${BPN}/${BP}.tar.xz"
SRC_URI[sha256sum] = "884ba2e3c1e8b98762b6dc25ff60b5ec75c8d33a39e019b3ed4aa615491460d3"

# SRC_URI += "file://root.key.pub.pem"
# SRC_URI += "file://linville.key.pub.pem"

#do_patch() {
#    cp ${WORKDIR}/db_80211p.txt ${B}/db.txt
#    # cp ${WORKDIR}/root.key.pub.pem ${B}/
#    # cp ${WORKDIR}/linville.key.pub.pem ${B}/
#}
