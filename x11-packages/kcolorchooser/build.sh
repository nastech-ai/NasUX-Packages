NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/kcolorchooser"
NASUX_PKG_DESCRIPTION="Color Chooser"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kcolorchooser-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=c45401870771ca5cfb60ca4779975c08d490c89dd0c376d3716b3900fd33dc6f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcoreaddons, kf6-ki18n, kf6-kxmlgui, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
