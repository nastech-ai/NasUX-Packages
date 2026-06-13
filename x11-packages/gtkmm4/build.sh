NASUX_PKG_HOMEPAGE=https://www.gtkmm.org/
NASUX_PKG_DESCRIPTION="The C++ API for GTK"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.22.0"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gtkmm/${NASUX_PKG_VERSION%.*}/gtkmm-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=2e8a21b4b0725f620e33aaee0cd343ed121b533275b632896619b1c89e96de67
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, graphene, gtk4, libc++, libcairo, libcairomm-1.16, libglibmm-2.68, libpangomm-2.48, libsigc++-3.0"
TERMUX_PKG_BUILD_DEPENDS="libepoxy"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dbuild-demos=false
-Dbuild-tests=false
"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/libgtkmm-4.0.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
