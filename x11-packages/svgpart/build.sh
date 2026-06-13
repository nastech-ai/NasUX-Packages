NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/svgpart"
NASUX_PKG_DESCRIPTION="A KPart for viewing SVGs"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/svgpart-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=1f537e7735225ff355cd1f90f8e4fd1497f41872c8b879040d760995de1d47f7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kconfigwidgets, kf6-kcoreaddons, kf6-kparts, kf6-kxmlgui, libc++, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
