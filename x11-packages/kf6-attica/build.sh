NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/attica'
NASUX_PKG_DESCRIPTION='Qt library that implements the Open Collaboration Services API'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/attica-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=8f3d3d61ec8a7456db8a75caa801a2e5f5e046728bd240a003e71b8813093ae4
NASUX_PKG_DEPENDS="libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
