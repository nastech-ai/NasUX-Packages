NASUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/terminal/start
NASUX_PKG_DESCRIPTION="Terminal Emulator for the XFCE environment"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.2.0"
NASUX_PKG_SRCURL=https://archive.xfce.org/src/apps/xfce4-terminal/${NASUX_PKG_VERSION%.*}/xfce4-terminal-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=6874c7b975cc3dc3bd636d57ffec723de7458202defe65377593d3a7e0734b94
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, gtk-layer-shell, libcairo, libvte, libx11, libxfce4ui, libxfce4util, pango, pcre2, xfconf"
TERMUX_PKG_RECOMMENDS="desktop-file-utils, hicolor-icon-theme"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgtk-layer-shell=enabled
-Dwayland=enabled
-Dx11=enabled
"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
