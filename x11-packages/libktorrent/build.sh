NASUX_PKG_HOMEPAGE="https://invent.kde.org/network/libktorrent"
NASUX_PKG_DESCRIPTION="A BitTorrent protocol implementation"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/libktorrent-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=a6f5bac0083182e7e0d9a5034ff68b538afb6b0ee822d64980593e89ebc18e31
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-karchive, kf6-kconfig, kf6-kcoreaddons, kf6-ki18n, kf6-kio, libc++, libgmp, openssl, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="boost, extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
