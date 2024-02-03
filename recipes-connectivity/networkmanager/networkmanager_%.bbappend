FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://fix_build_with_enabled_ppp.patch"

do_patch:patch() {
    patch -p1 < ${WORKDIR}/fix_build_with_enabled_ppp.patch
}
