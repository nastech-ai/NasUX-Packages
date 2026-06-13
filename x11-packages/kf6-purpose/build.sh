NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/purpose'
NASUX_PKG_DESCRIPTION='Framework for providing abstractions to get the developers purposes fulfilled'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/purpose-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=c4e348fa5ac990a77b3926105c62bc4f2dddaf8d7554c43ee4f18de3d16a3699
NASUX_PKG_DEPENDS="kf6-kcmutils (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kio (>= ${NASUX_PKG_VERSION%.*}), kf6-knotifications (>= ${NASUX_PKG_VERSION%.*}), kf6-kservice (>= ${NASUX_PKG_VERSION%.*}), kf6-kitemmodels (>= ${NASUX_PKG_VERSION%.*}), kf6-prison (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase, qt6-qtdeclarative"
# kaccounts-integration, libaccounts-qt, accounts-qml-module, kcmutils can be added to NASUX_PKG_DEPENDS when available
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), kf6-kirigami (>= ${NASUX_PKG_VERSION%.*}), intltool"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
