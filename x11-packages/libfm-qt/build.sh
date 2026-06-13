NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="Library providing components to build desktop file managers"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/libfm-qt/releases/download/${NASUX_PKG_VERSION}/libfm-qt-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=72766d7b41fd1aa06c0a7ef8be015205506ff75963b977e5307994555dcc023b
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, glib, libxcb, libexif, lxqt-menu-data, menu-cache"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
