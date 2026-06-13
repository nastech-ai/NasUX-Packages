NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/libhandy/
NASUX_PKG_DESCRIPTION="Building blocks for modern adaptive GNOME apps"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.0.13"
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/libh/libhandy/libhandy_${NASUX_PKG_VERSION}.orig.tar.gz
NASUX_PKG_SHA256=4dcd9d249558834bd5430445d3674e9e3cff356e35f0c1dd368c3af50fa15b6d
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, libcairo, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=enabled
-Dvapi=true
-Dtests=false
-Dexamples=false
-Dglade_catalog=disabled
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/${TERMUX_PKG_NAME}.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
