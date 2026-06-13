NASUX_PKG_HOMEPAGE="https://invent.kde.org/pim/kmime"
NASUX_PKG_DESCRIPTION="Library for handling mail messages and newsgroup articles"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kmime-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256="7473522f42d84684cd71fe7549cc668a1fcfd91716a72860dc9bcbaa8569ed6d"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcodecs, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
