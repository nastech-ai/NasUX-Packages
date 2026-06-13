NASUX_PKG_HOMEPAGE="https://invent.kde.org/libraries/baloo-widgets"
NASUX_PKG_DESCRIPTION="Widgets for Baloo"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/baloo-widgets-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=7daf3e6821b9988c171a316cb547591fba2caca78818c2da1d409603ea93c00a
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-baloo, kf6-kconfig, kf6-kcoreaddons, kf6-kfilemetadata, kf6-ki18n, kf6-kio, kf6-kservice, kf6-kwidgetsaddons, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
