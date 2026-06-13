NASUX_PKG_HOMEPAGE=https://github.com/AyatanaIndicators/ayatana-ido
NASUX_PKG_DESCRIPTION="Ayatana Indicator Display Objects"
NASUX_PKG_LICENSE="LGPL-2.1, LGPL-3.0, GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.10.4"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/AyatanaIndicators/ayatana-ido/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=bd59abd5f1314e411d0d55ce3643e91cef633271f58126be529de5fb71c5ab38
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libcairo, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, valac"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_TESTS=OFF
"

termux_step_pre_configure() {
	nasux_setup_gir
}
