NASUX_PKG_HOMEPAGE="https://docs.xfce.org/xfce/xfce4-power-manager/start"
NASUX_PKG_DESCRIPTION="Power Manager for Xfce"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.20.0"
NASUX_PKG_SRCURL="https://archive.xfce.org/src/xfce/xfce4-power-manager/${NASUX_PKG_VERSION%.*}/xfce4-power-manager-${NASUX_PKG_VERSION}.tar.bz2"
NASUX_PKG_SHA256="971391cef63352833bdd92df28957392e17e1f2b3d486c0f57294fd204d6ed29"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="hicolor-icon-theme, libc++, libnotify, libxfce4ui, upower, xfce4-notifyd"
TERMUX_PKG_BUILD_DEPENDS="glib, libwayland-protocols, xfce4-dev-tools, xfce4-panel"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
