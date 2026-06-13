NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/gnome-font-viewer
NASUX_PKG_DESCRIPTION="A font viewer utility for GNOME"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="50.0"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gnome-font-viewer/${NASUX_PKG_VERSION%.*}/gnome-font-viewer-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=9564b088c5b150c54e2a3a7bc7014deec6ee551261e98488f891b1f1b8dc6b80
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="fontconfig, freetype, fribidi, glib, graphene, gtk4, harfbuzz, libadwaita, libcairo, pango"
TERMUX_PKG_BUILD_DEPENDS="glib-cross"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
