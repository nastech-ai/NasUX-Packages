NASUX_PKG_HOMEPAGE=https://zealdocs.org/
NASUX_PKG_DESCRIPTION="Offline documentation browser"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.8.1"
NASUX_PKG_SRCURL="https://github.com/zealdocs/zeal/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=468a2410a5edbbaa3b508f297b64fbfc725bb1477cc9a786687d24e9eb297d97
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libarchive, libc++, libsqlite, libx11, libxcb, qt6-qtbase, qt6-qtwebchannel, qt6-qtwebengine, xcb-util-keysyms"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
# error: cpp-httplib doesn't support 32-bit platforms
NASUX_PKG_EXCLUDED_ARCHES="arm, i686"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DZEAL_RELEASE_BUILD=ON
"
