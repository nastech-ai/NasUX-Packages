NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/chergert/libspelling/
NASUX_PKG_DESCRIPTION="Spellcheck library for GTK 4"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.4.10"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/libspelling/${NASUX_PKG_VERSION%.*}/libspelling-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=56e3f01a3a18b575beea4c34349f99cdaba316e1f7c271b1231f7bcf5d9af73b
NASUX_PKG_DEPENDS="enchant, glib, gtk4, gtksourceview5, libicu, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddocs=false
-Denchant=enabled
-Dintrospection=enabled
-Dsysprof=false
-Dvapi=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
