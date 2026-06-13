NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/gnome-menus
NASUX_PKG_DESCRIPTION="GNOME menu specifications"
NASUX_PKG_LICENSE="LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=3.38.1
NASUX_PKG_SRCURL="https://download.gnome.org/sources/gnome-menus/${NASUX_PKG_VERSION%.*}/gnome-menus-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=1198a91cdbdcfb232df94e71ef5427617d26029e327be3f860c3b0921c448118
NASUX_PKG_DEPENDS="glib"
TERMUX_PKG_BUILD_DEPENDS="gobject-introspection"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-static
"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false

termux_step_pre_configure() {
	nasux_setup_gir
	autoreconf -fi
}
