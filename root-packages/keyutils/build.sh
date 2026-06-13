NASUX_PKG_HOMEPAGE=https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git
NASUX_PKG_DESCRIPTION="Utilities to control the kernel key management facility"
NASUX_PKG_LICENSE="GPL-2.0, LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.6.3
TERMUX_PKG_REVISION=3
NASUX_PKG_SRCURL=https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/keyutils-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a61d5706136ae4c05bd48f86186bcfdbd88dd8bd5107e3e195c924cfc1b39bb4
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	CPPFLAGS+=" -Dindex=strchr -Drindex=strrchr"
	# From https://bugs.gentoo.org/914637 to fix build with current toolchain:
	LDFLAGS+=" -Wl,--undefined-version"
}
