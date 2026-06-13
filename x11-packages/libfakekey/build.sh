NASUX_PKG_HOMEPAGE=https://www.yoctoproject.org/tools-resources/projects/matchbox
NASUX_PKG_DESCRIPTION="X virtual keyboard library."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.3
TERMUX_PKG_REVISION=22
NASUX_PKG_SRCURL=https://git.yoctoproject.org/cgit/cgit.cgi/libfakekey/snapshot/libfakekey-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=d282fa6481a5b85f71e36e8bad4cfa938cc8eaac4c42ffa27f9203ac634813f4
NASUX_PKG_DEPENDS="libx11, libxtst"
TERMUX_PKG_EXTRA_MAKE_ARGS="AM_LDFLAGS=-lX11"

termux_step_pre_configure() {
	autoreconf -i
}
