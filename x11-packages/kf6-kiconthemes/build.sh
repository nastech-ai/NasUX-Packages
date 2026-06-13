NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kiconthemes'
NASUX_PKG_DESCRIPTION='Support for icon themes'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kiconthemes-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=6fe86f0c0ff41044f44d1f37f9ae001b8d2c1a5a8bc06c41c43ed574138af5be
NASUX_PKG_DEPENDS="kf6-breeze-icons (>= ${NASUX_PKG_VERSION%.*}), kf6-karchive (>= ${NASUX_PKG_VERSION%.*}), kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfigwidgets (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qtsvg, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
