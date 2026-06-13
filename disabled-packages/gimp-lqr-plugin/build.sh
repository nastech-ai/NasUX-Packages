# Origin Repo: x11-packages
NASUX_PKG_HOMEPAGE=https://github.com/carlobaldassi/gimp-lqr-plugin
NASUX_PKG_DESCRIPTION="LiquidRescale plug-in for seam carving in GIMP"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.7.2
NASUX_PKG_SRCURL=https://github.com/carlobaldassi/gimp-lqr-plugin/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a01ffdfc04e97167413b4bb11516d3bad28dadb84bbfacb5e6ed21959483ebe1
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="gdk-pixbuf, gimp, glib, gtk2, liblqr"

termux_step_pre_configure() {
	CFLAGS+=" -fcommon"
}
