NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Projects/GtkSourceView
NASUX_PKG_DESCRIPTION="A GNOME library that extends GtkTextView"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=3.24.11
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gtksourceview/${NASUX_PKG_VERSION%.*}/gtksourceview-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=691b074a37b2a307f7f48edc5b8c7afa7301709be56378ccf9cc9735909077fd
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libxml2, pango, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, valac"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_REVISION=3
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
--enable-vala=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/libgtksourceview-3.0.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
