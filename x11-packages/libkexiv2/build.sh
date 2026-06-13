NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/libkexiv2"
NASUX_PKG_DESCRIPTION="A kde library to manipulate pictures metadata"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/libkexiv2-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=fdd8b2ca473339281676bccd1be1d6bf7df2f7644822c52a5cb73af8535a854e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="exiv2, libc++"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qtbase"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_WITH_QT6=ON
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
