NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kcontacts"
NASUX_PKG_DESCRIPTION="Address book API for KDE"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kcontacts-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=dd8d6dd045b0fd71c7ce3fc18bb15b77ec8316e57f4d83ddae67f3a62b796efb
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcodecs, kf6-kconfig, kf6-kcoreaddons, kf6-ki18n, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qtdeclarative, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
