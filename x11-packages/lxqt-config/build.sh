NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="Tools to configure LXQt and the underlying operating system"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-config/releases/download/${NASUX_PKG_VERSION}/lxqt-config-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=8943a0d61993e068fa71aac85eb1eb93ac32064928ee1c8c1ff9666b45e1610e
NASUX_PKG_DEPENDS="libc++, liblxqt, libqtxdg, libxcb, libxcursor, libxfixes, lxqt-menu-data, qt6-qtbase, shared-mime-info, zlib"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
# libinput is required to switch on input configuration
# libkscreen is required to switch on monitor configuration, which in turn requires wayland
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DWITH_INPUT=OFF
-DWITH_MONITOR=OFF
"

TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi

	# This is required because of the private lib used by lxqt-config-appearance
	LDFLAGS+=" -Wl,-rpath=${TERMUX_PREFIX}/lib/lxqt-config"
	export LDFLAGS
}
