NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/gnome-desktop
NASUX_PKG_DESCRIPTION="Utility library for loading .desktop files"
NASUX_PKG_LICENSE="GPL-2.0, LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="44.5"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gnome-desktop/${NASUX_PKG_VERSION%.*}/gnome-desktop-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=20e0995a6e3a03e8c1026c5a27bc3f45e69ffcc392ad743dcab6107a541d232f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gsettings-desktop-schemas, gtk3, iso-codes, libcairo, libxkbcommon, xkeyboard-config"
TERMUX_PKG_BUILD_DEPENDS="fontconfig, g-ir-scanner, glib-cross"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddesktop_docs=false
-Ddebug_tools=false
-Dintrospection=true
-Dbuild_gtk4=false
-Dlegacy_library=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/libgnome-desktop-3.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
