NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kcodecs"
NASUX_PKG_DESCRIPTION="Method collection to manipulate strings using various encodings (KDE)"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kcodecs-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=77f51f7586e8b457534d95dd241280e8b7475915c656e661dc37b1e8a773c595
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
