NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/plasma-activities-stats"
NASUX_PKG_DESCRIPTION="Provides usage data for KDE activities"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/plasma-activities-stats-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=93af76f5c4171d089cd9a4f502bba63a65f2a371aa1a83c0c6cfb0021a5efba6
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kconfig, libc++, plasma-activities, qt6-qttools"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
