NASUX_PKG_HOMEPAGE=https://www.gnome.org/
NASUX_PKG_DESCRIPTION="GNOME desktop schemas contains a collection of GSettings schemas for settings shared by various components of a desktop."
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@Yisus7u7"
NASUX_PKG_VERSION="50.1"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gsettings-desktop-schemas/${NASUX_PKG_VERSION%.*}/gsettings-desktop-schemas-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=0a2aa25082672585d16fcdab61c7b0e33f035fb87476505c794f29565afa485b
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_RECOMMENDS="dconf"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=true
"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_pre_configure() {
	nasux_setup_gir
}
