NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kidletime"
NASUX_PKG_DESCRIPTION="Reporting of idle time of user and system"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kidletime-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=2cb0196ee3bb1b60be9bad14b4d04dfaf53b3d0017cd459083035c715910551b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libx11, libxcb, libxext, libxss, libwayland, qt6-qtbase, qt6-qtwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, libxss, libwayland-protocols, plasma-wayland-protocols, qt6-qttools, qt6-qtwayland"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
