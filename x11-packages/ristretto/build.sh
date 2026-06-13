NASUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/ristretto/start
NASUX_PKG_DESCRIPTION="The Ristretto Image Viewer is an application that can be used to view, and scroll through images."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.14.0"
NASUX_PKG_SRCURL=https://archive.xfce.org/src/apps/ristretto/${NASUX_PKG_VERSION%.*}/ristretto-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=502cf1577de14b38132dc89e56884c5e10f86f6a028d8dde379a8839110fda55
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="exo, file, gdk-pixbuf, glib, gtk3, libcairo, libexif, libx11, libxfce4ui, libxfce4util, pango, xfconf"
TERMUX_PKG_RECOMMENDS="tumbler"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
