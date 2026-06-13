NASUX_PKG_HOMEPAGE=https://polybar.github.io
NASUX_PKG_DESCRIPTION="A fast and easy-to-use status bar"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.7.2"
TERMUX_PKG_REVISION=3
NASUX_PKG_SRCURL="https://github.com/polybar/polybar/releases/download/${NASUX_PKG_VERSION}/polybar-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=e2feacbd02e7c94baed7f50b13bcbf307d95df0325c3ecae443289ba5b56af29
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="fontconfig, freetype, jsoncpp, libandroid-glob, libc++, libcairo, libcurl, libnl, libuv, libxcb, pulseaudio, xcb-util-cursor, xcb-util-image, xcb-util-wm, xcb-util-xrm"
TERMUX_PKG_BUILD_DEPENDS="i3"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DENABLE_I3=ON"
TERMUX_PKG_CONFFILES="etc/polybar/config.ini"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"

	# ld.lld: error: undefined symbol: Json::Value::operator[](char const*)
	CXXFLAGS+=" -DJSONCPP_HAS_STRING_VIEW=1"
}
