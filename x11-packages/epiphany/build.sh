NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Apps/Web
NASUX_PKG_DESCRIPTION="A GNOME web browser based on the WebKit rendering engine"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="50.4"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/epiphany/${NASUX_PKG_VERSION%%.*}/epiphany-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=1e26f9901f0f08bfe943aa70163c953334c7ec3d4aefc8d354e8a9c140b334a7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="adwaita-icon-theme, gcr4, gdk-pixbuf, glib, graphene, gsettings-desktop-schemas, gstreamer, gtk4, iso-codes, json-glib, libadwaita, libarchive, libcairo, libgmp, libnettle, libportal-gtk4, libsecret, libsoup3, libsqlite, libxml2, pango, webkitgtk-6.0"
TERMUX_PKG_BUILD_DEPENDS="blueprint-compiler, glib-cross"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dunit_tests=disabled
"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
	nasux_setup_bpc
}
