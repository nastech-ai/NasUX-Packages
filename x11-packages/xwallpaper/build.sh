NASUX_PKG_HOMEPAGE=https://github.com/stoeckmann/xwallpaper
NASUX_PKG_DESCRIPTION="wallpaper setting utility for X"
NASUX_PKG_LICENSE="ISC"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.7.6"
NASUX_PKG_SRCURL=https://github.com/stoeckmann/xwallpaper/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=380aae8762a296f5e0284eff87ac92babd9c68e3e7612a8208f86b0dea814750
NASUX_PKG_DEPENDS="libjpeg-turbo, libpixman, libpng, libxcb, libxpm, xcb-util, xcb-util-image"

termux_step_pre_configure() {
	autoreconf -fi
}
