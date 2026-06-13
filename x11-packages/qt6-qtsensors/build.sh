NASUX_PKG_HOMEPAGE="https://www.qt.io"
NASUX_PKG_DESCRIPTION="Provides access to sensor hardware and motion gesture recognition"
NASUX_PKG_LICENSE="GPL-3.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nasux-user"
NASUX_PKG_VERSION="6.11.1"
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtsensors-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=23617062da7be526d023dec7f9b76231001a1098a7e5f94c646f2e4f87cfcf8f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="ninja, cmake, qt6-qtdeclarative, git"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
