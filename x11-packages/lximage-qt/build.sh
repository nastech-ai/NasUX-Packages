NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="LXQt Image Viewer"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lximage-qt/releases/download/${NASUX_PKG_VERSION}/lximage-qt-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=7ca49039f3246011b80d76037603ac6a7af484574d8e5e2cc5bb7b8534298636
NASUX_PKG_DEPENDS="glib, libc++, libexif, libfm-qt, libx11, libxfixes, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
