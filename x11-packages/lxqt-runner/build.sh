NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="LXQt application launcher"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-runner/releases/download/${NASUX_PKG_VERSION}/lxqt-runner-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=d0441f18922162db5ef6a5a9617aa20b0b437d2ddc76d0542fb32c7fd68f9029
NASUX_PKG_DEPENDS="kf6-kwindowsystem, layer-shell-qt, libc++, liblxqt, libmuparser, lxqt-globalkeys, libqtxdg, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
