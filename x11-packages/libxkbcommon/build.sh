NASUX_PKG_HOMEPAGE=https://xkbcommon.org/
NASUX_PKG_DESCRIPTION="Keymap handling library for toolkits and window systems"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.13.2"
NASUX_PKG_SRCURL=https://github.com/xkbcommon/libxkbcommon/archive/refs/tags/xkbcommon-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=acc4d5f7c3cbba5f9f8d08d8bdbeede84ecede46792f47929aa9321873385528
NASUX_PKG_DEPENDS="libxcb, libxml2, libwayland, xkeyboard-config"
TERMUX_PKG_BUILD_DEPENDS="libandroid-spawn, libwayland-protocols, xorg-util-macros"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Denable-docs=false
-Denable-wayland=true
"

termux_step_pre_configure() {
	nasux_setup_cmake
	nasux_setup_ninja
	nasux_setup_wayland_cross_pkg_config_wrapper

	LDFLAGS+=" -landroid-spawn"
}
