NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Projects/GtkSourceView
NASUX_PKG_DESCRIPTION="A GNOME library that extends GtkTextView"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.20.0"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gtksourceview/${NASUX_PKG_VERSION%.*}/gtksourceview-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=e38bcd23f52b86eadf0fe4d8bde698e3a8ca102322b8b4cf1a51ac294a448c1b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="fontconfig, fribidi, gdk-pixbuf, glib, gtk4, libcairo, libxml2, pango, pcre2"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dbuild-testsuite=false
-Ddocumentation=false
-Dintrospection=enabled
-Dvapi=true
"

termux_step_pre_configure() {
	# Workaround strict compiler error
	sed -i "s/-Werror/-Wno-error/g" meson.build

	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/libgtksourceview-5.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
