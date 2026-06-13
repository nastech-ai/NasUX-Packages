NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="The LXQt session manager"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-session/releases/download/${NASUX_PKG_VERSION}/lxqt-session-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=d77f378ece0bfc7195f1964e88f55919729c3b0a55a858d7155ffaacc57bba44
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kwindowsystem, layer-shell-qt, libandroid-wordexp, libc++, liblxqt, libqtxdg, libx11, procps, qt6-qtbase, qtxdg-tools"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DWITH_LIBUDEV=OFF
"

termux_step_pre_configure(){
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi

	LDFLAGS+=" -landroid-wordexp"
}
