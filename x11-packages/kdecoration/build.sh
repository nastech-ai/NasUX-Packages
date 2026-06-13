NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/kdecoration"
NASUX_PKG_DESCRIPTION="Plugin-based library to create window decorations"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/kdecoration-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=06e8ed04b8f3cdcd3057a9e2d23291ef41a3976f96fc8cf917479218871aa9fd
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-ki18n, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
