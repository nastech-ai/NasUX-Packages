NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kcrash'
NASUX_PKG_DESCRIPTION='Support for application crash analysis and bug report from apps'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kcrash-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=f8e1083863dac2c07068b10614ca7d4b52c6920df0228854cfc37e0d6578d902
NASUX_PKG_DEPENDS="kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, libx11, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
# TERMUX_PKG_RECOMMENDS="drkonqi"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
