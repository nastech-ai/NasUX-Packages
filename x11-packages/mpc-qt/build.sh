NASUX_PKG_HOMEPAGE=https://mpc-qt.github.io/
NASUX_PKG_DESCRIPTION="Media Player Classic Qute Theater"
NASUX_PKG_LICENSE="GPL-2.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.01"
NASUX_PKG_SRCURL="https://github.com/mpc-qt/mpc-qt/archive/refs/tags/v$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=e9c3c258358d7221e5c246ec0cc4711a1a874bc650ecc7cad9a8021cbaaa419b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="mpv-x, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="qt6-qttools, qt6-qttools-cross-tools, qt6-qtbase-cross-tools, qt6-qtsvg-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
