NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kauth"
NASUX_PKG_DESCRIPTION="Framework which lets applications perform actions as a privileged user (KDE)"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kauth-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=741934765f0c9f1c535598203fbad3f1b97231cc683a218a7f39fab948c13eab
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*})"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
