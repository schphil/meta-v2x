FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://crda.patch"

RDEPENDS:${PN} = "udev wireless-regdb"
