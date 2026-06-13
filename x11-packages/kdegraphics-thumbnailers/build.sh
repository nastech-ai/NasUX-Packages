NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/kdegraphics-thumbnailers"
NASUX_PKG_DESCRIPTION="Thumbnailers for various graphics file formats"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kdegraphics-thumbnailers-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=82d7d8ae6345bdce56b39562e673c69324a3252ba3ae575e6094bf810c84a46f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="ghostscript, kdegraphics-mobipocket, kf6-karchive, kf6-kcoreaddons, kf6-kio, libc++, libkdcraw, libkexiv2, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
