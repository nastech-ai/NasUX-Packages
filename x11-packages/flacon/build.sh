NASUX_PKG_HOMEPAGE=https://flacon.github.io/
NASUX_PKG_DESCRIPTION="Extracts individual tracks from one big audio file and saves them as separate audio files"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="13.0.1"
NASUX_PKG_SRCURL=https://github.com/flacon/flacon/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=e275686b0daee87c9e016777cb38ebc88275d0108d07693b17e37bc182e36848
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libuchardet, qt6-qtbase, taglib"
TERMUX_PKG_BUILD_DEPENDS="qt6-qtbase-cross-tools, qt6-qttools-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DUSE_QT5=OFF -DUSE_QT6=ON"
