NASUX_PKG_HOMEPAGE=https://apps.gnome.org/Calculator
NASUX_PKG_DESCRIPTION="GNOME Scientific calculator"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="50.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gnome-calculator/${NASUX_PKG_VERSION%%.*}/gnome-calculator-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=8053d6891565e882874b65c1db51c5bf310005eb788b8bac3546390743350a90
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk4, gtksourceview5, libadwaita, libgee, libmpc, libmpfr, libsoup3, libxml2"
TERMUX_PKG_BUILD_DEPENDS="blueprint-compiler, g-ir-scanner, glib-cross, valac"
TERMUX_PKG_RECOMMENDS="gnome-calculator-help"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
	nasux_setup_bpc
}
