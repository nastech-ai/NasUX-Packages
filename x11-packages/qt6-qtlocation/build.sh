NASUX_PKG_HOMEPAGE="https://www.qt.io/"
NASUX_PKG_DESCRIPTION="Helps you create viable mapping solutions using the data available from some of the popular location services"
NASUX_PKG_LICENSE="GPL-3.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.11.1"
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtlocation-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=3791ce77299e6f600a593d0fbfa5bd32fbcfc2d16104782b84acc489e382e41b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtdeclarative, qt6-qtpositioning"
TERMUX_PKG_BUILD_DEPENDS="cmake, git, ninja"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
