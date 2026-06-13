NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="A simple & lightweight Qt file archiver"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-archiver/releases/download/${NASUX_PKG_VERSION}/lxqt-archiver-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=b93eda6d80391d373a47afd8b28fa401762300dcdb51d8bc1d3a2263bc186ae7
NASUX_PKG_DEPENDS="glib, json-glib, libc++, libfm-qt, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
