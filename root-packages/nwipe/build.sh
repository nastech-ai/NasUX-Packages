NASUX_PKG_HOMEPAGE=https://github.com/martijnvanbrummelen/nwipe
NASUX_PKG_DESCRIPTION="A program that will securely erase the entire contents of disks"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.40"
NASUX_PKG_SRCURL=https://github.com/martijnvanbrummelen/nwipe/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=826ff4431324cc06f34da7a86829cd5c1a1bb10cf5528bbe7d07676816b813f8
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="ncurses, ncurses-ui-libs, parted, libconfig, hdparm"
TERMUX_PKG_SUGGESTS="smartmontools"

termux_step_pre_configure() {
	autoreconf -fi
}
