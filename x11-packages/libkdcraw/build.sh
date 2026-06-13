NASUX_PKG_HOMEPAGE=https://invent.kde.org/graphics/libkdcraw
NASUX_PKG_DESCRIPTION="C++ interface used to decode RAW pictures"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/libkdcraw-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=0ceb4e3ae7921e25ff9e3c4ac0693321521fa8c455d3f44152d03b3ffbba391d
NASUX_PKG_DEPENDS="libc++, libraw, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DQT_MAJOR_VERSION=6
"
