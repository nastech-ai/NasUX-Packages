NASUX_PKG_HOMEPAGE=https://telepathy.freedesktop.org/
NASUX_PKG_DESCRIPTION="GLib bindings for the Telepathy D-Bus protocol"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
# Do not bump to 0.99.x.
NASUX_PKG_VERSION=1:0.24.2
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://telepathy.freedesktop.org/releases/telepathy-glib/telepathy-glib-${NASUX_PKG_VERSION:2}.tar.gz
NASUX_PKG_SHA256=b0a374d771cdd081125f38c3abd079657642301c71a543d555e2bf21919273f0
NASUX_PKG_DEPENDS="dbus-glib, glib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_BREAKS="telepathy-glib-dev"
TERMUX_PKG_REPLACES="telepathy-glib-dev"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}

termux_step_post_massage() {
	local _GUARD_FILES="lib/libtelepathy-glib.so"
	local f
	for f in ${_GUARD_FILES}; do
		if [ ! -e "${f}" ]; then
			termux_error_exit "file ${f} not found."
		fi
	done
}
