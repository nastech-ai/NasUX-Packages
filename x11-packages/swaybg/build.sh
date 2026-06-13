NASUX_PKG_HOMEPAGE=https://github.com/swaywm/swaybg
NASUX_PKG_DESCRIPTION="Wallpaper tool for Wayland compositors"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.2.2"
NASUX_PKG_SRCURL=https://github.com/swaywm/swaybg/releases/download/v${NASUX_PKG_VERSION}/swaybg-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a6652a0060a0bea3c3318d9d03b6dddac34f6aeca01b883eef9e58281f5202a1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, libcairo, libwayland"
TERMUX_PKG_BUILD_DEPENDS="libwayland-protocols, libwayland-cross-scanner"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgdk-pixbuf=enabled
-Dman-pages=enabled
-Dwerror=false
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper
}
