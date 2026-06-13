NASUX_PKG_HOMEPAGE=https://github.com/swaywm/sway
NASUX_PKG_DESCRIPTION="i3-compatible Wayland compositor"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.10.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/swaywm/sway/releases/download/$NASUX_PKG_VERSION/sway-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=b2fbf3a2f94c8926efa18d6af59bb9f5f1eafa6d46491284b1610c57bef2d105
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, json-c, libandroid-wordexp, libcairo, libevdev, libwayland, pango, pcre2, wlroots (>= 0.18.1)"
TERMUX_PKG_BUILD_DEPENDS="libwayland-protocols, libwayland-cross-scanner, scdoc"
TERMUX_PKG_RECOMMENDS="xwayland"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dman-pages=enabled
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper

	# XXX: use alloca for shm_open
	export CPPFLAGS+=" -Wno-alloca"
	export LDFLAGS+=" -landroid-wordexp"
}
