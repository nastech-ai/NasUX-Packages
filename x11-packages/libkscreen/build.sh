NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/libkscreen"
NASUX_PKG_DESCRIPTION="KDE screen management software"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/libkscreen-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=f2fd11f2f65ff9ca4ff3b50b9953018a929b1bf3263b32ec171c4298e4662149
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libwayland, libxcb, qt6-qtbase, qt6-qtwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, plasma-wayland-protocols, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
