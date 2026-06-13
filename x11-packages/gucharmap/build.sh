NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Apps/Gucharmap
NASUX_PKG_DESCRIPTION="GTK+ Unicode Character Map"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="17.0.1"
NASUX_PKG_SRCURL=https://gitlab.gnome.org/GNOME/gucharmap/-/archive/${NASUX_PKG_VERSION}/gucharmap-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=97a642e21d06b295066585e91e6724d622e2b2e952a725e417f81cb0fde9c2ac
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, glib, gtk3, libcairo, pango, pcre2, unicode-data"
TERMUX_PKG_BUILD_DEPENDS="freetype, g-ir-scanner, glib-cross, valac"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ducd_path=$TERMUX_PREFIX/share/unicode-data
-Ddocs=false
-Dgir=true
-Dvapi=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
