NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/gspell
NASUX_PKG_DESCRIPTION="Spell-checking for GTK applications"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.14.3"
# https://download.gnome.org/sources/gspell/${NASUX_PKG_VERSION%.*}/gspell-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SRCURL=https://gitlab.gnome.org/GNOME/gspell/-/archive/${NASUX_PKG_VERSION}/gspell-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=fc873525d6f2a930cadb18d5f14b657731a55ef5bcb76b415bb628f9a5091e4f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="enchant, glib, gtk3, libicu, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgobject_introspection=true
-Dgtk_doc=false
-Dinstall_tests=false
-Dtests=false
-Dvapi=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
