NASUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/xfce4-screenshooter/start
NASUX_PKG_DESCRIPTION="The Xfce4-screenshooter is an application that can be used to take snapshots of your desktop screen."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@Yisus7u7"
NASUX_PKG_VERSION="1.11.3"
NASUX_PKG_SRCURL=https://archive.xfce.org/src/apps/xfce4-screenshooter/${NASUX_PKG_VERSION%.*}/xfce4-screenshooter-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=1f6a14f7d1b0c440f31e24a8cc4fe2996185357fa786f0c2cdfe564ef673a710
NASUX_PKG_DEPENDS="atk, exo, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libx11, libxext, libxfce4ui, libxfce4util, libxfixes, libwayland, pango, xfce4-panel, xfconf, zlib"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dwayland=enabled
-Dx11=enabled
-Dxfixes=enabled
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper
}
