NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/plasma-workspace-wallpapers"
NASUX_PKG_DESCRIPTION="Additional wallpapers for the Plasma Workspace"
NASUX_PKG_LICENSE="LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/plasma-workspace-wallpapers-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=4a021dbda761da7aaf7192e8d038aa1f2305a576a57f2384f54bc8ed90731418
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_WITH_QT6=ON
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
