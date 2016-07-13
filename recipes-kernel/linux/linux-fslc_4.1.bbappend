FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://defconfig \
           file://imx6q-bars3000.dts \
"

do_compile_prepend () {
	cp ${WORKDIR}/imx6q-bars3000.dts \
	${S}/arch/${ARCH}/boot/dts
}

