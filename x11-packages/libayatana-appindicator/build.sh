NASUX_PKG_HOMEPAGE=https://github.com/AyatanaIndicators/libayatana-appindicator
NASUX_PKG_DESCRIPTION="Ayatana Application Indicators"
NASUX_PKG_LICENSE="GPL-3.0, LGPL-2.1, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.6.0"
NASUX_PKG_SRCURL=https://github.com/AyatanaIndicators/libayatana-appindicator/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=23be92ad8eb9625ce93b23b14f82f3cf88a4970c31d48581945ddfbac0441d06
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="glib, gtk3, libayatana-indicator, libdbusmenu, libdbusmenu-gtk3"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, valac"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_BINDINGS_MONO=OFF
-DENABLE_GTKDOC=OFF
"

termux_step_pre_configure() {
	nasux_setup_gir
}
