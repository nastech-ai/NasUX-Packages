NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/knotifyconfig'
NASUX_PKG_DESCRIPTION='Configuration system for KNotify'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/knotifyconfig-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=81861316d615e7e5ff07143c1d58d9b52cadc5e02ab38c8f2677c01f71e51f26
NASUX_PKG_DEPENDS="kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kio (>= ${NASUX_PKG_VERSION%.*}), libc++, libcanberra, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
