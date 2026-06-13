NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/libhandy/
NASUX_PKG_DESCRIPTION="Building blocks for modern adaptive GNOME apps"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
_MAJOR_VERSION=1.8
NASUX_PKG_VERSION=${_MAJOR_VERSION}.3
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://download.gnome.org/sources/libhandy/${_MAJOR_VERSION}/libhandy-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=05b497229073ff557f10b326e074c5066f8743a302d4820ab97bcb5cd2dab087
NASUX_PKG_DEPENDS="atk, fribidi, gdk-pixbuf, glib, gtk3, libcairo, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
NASUX_PKG_VERSIONED_GIR=false
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
