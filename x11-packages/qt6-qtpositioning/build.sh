NASUX_PKG_HOMEPAGE="https://www.qt.io"
NASUX_PKG_DESCRIPTION="Provides access to position, satellite and area monitoring classes"
NASUX_PKG_LICENSE="GPL-3.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.11.1"
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtpositioning-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=d5e6b91801ae286e7630016caea3bdc5e1978b4291d6741d0d64c125650f78f5
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="geoclue, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="qt6-qtdeclarative"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
