NASUX_PKG_HOMEPAGE=http://www.hping.org/
NASUX_PKG_DESCRIPTION="hping is a command-line oriented TCP/IP packet assembler/analyzer."
# Same versioning as archlinux:
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=3.0.0
TERMUX_PKG_REVISION=4
#NASUX_PKG_SRCURL=http://www.hping.org/hping3-20051105.tar.gz
NASUX_PKG_SRCURL=https://fossies.org/linux/privat/old/hping3-20051105.tar.gz
NASUX_PKG_SHA256=f5a671a62a11dc8114fa98eade19542ed1c3aa3c832b0e572ca0eb1a5a4faee8
NASUX_PKG_DEPENDS="libandroid-shmem, libpcap, tcl"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_post_configure () {
	LDFLAGS+=" -Wl,-z,muldefs"
	export LDFLAGS+=" -landroid-shmem"
	mkdir -p ${TERMUX_PREFIX}/share/man/man8
}
