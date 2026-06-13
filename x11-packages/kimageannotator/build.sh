NASUX_PKG_HOMEPAGE=https://github.com/ksnip/kImageAnnotator
NASUX_PKG_DESCRIPTION="Tool for annotating images"
NASUX_PKG_LICENSE="LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.7.2"
NASUX_PKG_SRCURL="https://github.com/ksnip/kImageAnnotator/archive/refs/tags/v$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=7eb593d975b1590a184354ef68dbc3c26479d58eaea00de461d73695176f623c
NASUX_PKG_DEPENDS="libc++, kcolorpicker, libx11, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="qt6-qttools, qt6-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_SHARED_LIBS=ON
-DBUILD_WITH_QT6=ON
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
