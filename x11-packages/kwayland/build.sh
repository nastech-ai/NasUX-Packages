NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/kwayland"
NASUX_PKG_DESCRIPTION="Qt-style Client and Server library wrapper for Wayland libraries"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/kwayland-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=afbcd53ca8a5fb501038415f1473c3d11556eb56ed8f653ece03f77d799cad01
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libwayland, qt6-qtbase, qt6-qtwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, libwayland-protocols, plasma-wayland-protocols, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
