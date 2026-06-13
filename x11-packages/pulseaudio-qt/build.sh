NASUX_PKG_HOMEPAGE="https://invent.kde.org/libraries/pulseaudio-qt"
NASUX_PKG_DESCRIPTION="Qt bindings for libpulse"
NASUX_PKG_LICENSE="LGPL-2.1-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.8.1"
NASUX_PKG_SRCURL="https://download.kde.org/stable/pulseaudio-qt/pulseaudio-qt-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=79619c55b94808aa7d307fb234ad39a1096d088f21f806be0e788be79a76b3c9
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, pulseaudio, pulseaudio-glib, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
