NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="PCManFM-Qt is the file manager of LXQt"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/pcmanfm-qt/releases/download/${NASUX_PKG_VERSION}/pcmanfm-qt-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=53fb1acf5a818300487ceffabc5b768034fa4dee956b9d1bc0019bb456b48daf
NASUX_PKG_DEPENDS="desktop-file-utils, glib, layer-shell-qt, libc++, libfm-qt, libxcb, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
