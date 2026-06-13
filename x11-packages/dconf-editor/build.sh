NASUX_PKG_HOMEPAGE=https://apps.gnome.org/DconfEditor
NASUX_PKG_DESCRIPTION="A GSettings editor for GNOME"
NASUX_PKG_LICENSE="GPL-3.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="49.0"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/dconf-editor/${NASUX_PKG_VERSION%%.*}/dconf-editor-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=90a8ccfadf51dff31e0028324fb9a358b2d26c5ae861a71c7dbf9f4dd9bdd399
NASUX_PKG_DEPENDS="dbus, glib, libhandy, dconf"
TERMUX_PKG_BUILD_DEPENDS="glib-cross, valac, gettext, libhandy, dconf"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
