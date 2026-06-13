NASUX_PKG_HOMEPAGE=https://fritzing.org/
NASUX_PKG_DESCRIPTION="An Electronic Design Automation software"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.6"
TERMUX_PKG_REVISION=9
NASUX_PKG_SRCURL="https://github.com/fritzing/fritzing-app/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=eb4ebe461c5d42edb4b10f1f824e7c855ad54555e222c5999061dead09834491
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="fritzing-data, libc++, libgit2, qt5-qtbase, qt5-qtserialport, qt5-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="boost, boost-headers, qt5-qtbase-cross-tools"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
PREFIX=$TERMUX_PREFIX
PKG_CONFIG=pkg-config
"

termux_step_configure() {
	"${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
		-spec "${TERMUX_PREFIX}/lib/qt/mkspecs/nasux-cross" \
		${TERMUX_PKG_EXTRA_CONFIGURE_ARGS}
}
