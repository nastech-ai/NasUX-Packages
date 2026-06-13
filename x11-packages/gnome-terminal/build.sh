NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Apps/Terminal
NASUX_PKG_DESCRIPTION="Terminal emulator for GNOME"
NASUX_PKG_LICENSE="GPL-3.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.60.0"
NASUX_PKG_SRCURL="https://download.gnome.org/sources/gnome-terminal/${NASUX_PKG_VERSION%.*}/gnome-terminal-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=b8daf3f08545172c4d2885733f720361ab0349ea669b99245eed4ad16ed3de28
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk3, libx11, dbus, gsettings-desktop-schemas, libhandy, libvte "
TERMUX_PKG_BUILD_DEPENDS="glib-cross, dconf, pcre2, gettext, libxslt"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddocs=false
-Ddbg=false
-Dnautilus_extension=false
-Dsearch_provider=false
"

termux_step_post_get_source() {
	rm -f subprojects/*.wrap
}

termux_step_pre_configure() {
	nasux_setup_cmake
	nasux_setup_glib_cross_pkg_config_wrapper
}

termux_step_post_make_install() {
	install -Dm644 "$TERMUX_PKG_BUILDER_DIR/org.gnome.Terminal.gschema.override" "$TERMUX_PREFIX/share/glib-2.0/schemas/org.gnome.Terminal.gschema.override"
}
