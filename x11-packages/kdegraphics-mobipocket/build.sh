NASUX_PKG_HOMEPAGE='https://invent.kde.org/graphics/kdegraphics-mobipocket'
NASUX_PKG_DESCRIPTION='A library to handle mobipocket files'
NASUX_PKG_LICENSE="GPL-2.0, LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL=https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kdegraphics-mobipocket-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=118819389efd2d254e4e6586fd086ff3c4061199d77a873490cd2cc8c761e39a
NASUX_PKG_DEPENDS="libc++, qt6-qt5compat, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DQT_MAJOR_VERSION=6
"
