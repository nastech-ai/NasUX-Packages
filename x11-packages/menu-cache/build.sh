NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/lxde/
NASUX_PKG_DESCRIPTION="Caching mechanism for freedesktop.org compliant menus"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.1.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/lxde/menu-cache/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=e8af90467df271c3c8700c840ca470ca2915699c6f213c502a87d74608748f08
NASUX_PKG_DEPENDS="glib, libfm-extra"

termux_step_pre_configure() {
	CFLAGS+=" -fcommon"
	autoreconf -fi
}
