NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/libdazzle
NASUX_PKG_DESCRIPTION="A companion library to GObject and Gtk+"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.44.0"
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://download.gnome.org/sources/libdazzle/${NASUX_PKG_VERSION%.*}/libdazzle-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=3cd3e45eb6e2680cb05d52e1e80dd8f9d59d4765212f0e28f78e6c1783d18eae
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libcairo, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Denable_tools=false
-Dwith_introspection=true
-Dwith_vapi=true
-Denable_tests=false
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
