NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/Archive/libgnomekbd
NASUX_PKG_DESCRIPTION="GNOME keyboard library"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.28.1"
NASUX_PKG_SRCURL="https://download.gnome.org/sources/libgnomekbd/${NASUX_PKG_VERSION%.*}/libgnomekbd-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=22dc59566d73c0065350f5a97340e62ecc7b08c4df19183804bb8be24c8fe870
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, gobject-introspection, libxml2, libxklavier, gigolo, libx11"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
TERMUX_PKG_DISABLE_GIR=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dtests=false
-Dvapi=false
-Dintrospection=false
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	export TERMUX_MESON_ENABLE_SOVERSION=1
}
