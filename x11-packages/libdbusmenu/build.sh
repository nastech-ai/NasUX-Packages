NASUX_PKG_HOMEPAGE=https://launchpad.net/libdbusmenu
NASUX_PKG_DESCRIPTION="A small library designed to make sharing and displaying of menu structures over DBus"
NASUX_PKG_LICENSE="LGPL-2.1, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
_MAJOR_VERSION=16.04
NASUX_PKG_VERSION=${_MAJOR_VERSION}.0
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://launchpad.net/libdbusmenu/${_MAJOR_VERSION}/${NASUX_PKG_VERSION}/+download/libdbusmenu-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=b9cc4a2acd74509435892823607d966d424bd9ad5d0b00938f27240a1bfa878a
NASUX_PKG_DEPENDS="glib, json-glib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, valac"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-dumper
--enable-introspection=yes
--enable-vala=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}
