NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/solid'
NASUX_PKG_DESCRIPTION='Hardware integration and detection'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/solid-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=70a9ee69b4357ebf83cc87aa61db6fdff8c96a59e24f9572e51716f1d3c579fe
NASUX_PKG_DEPENDS="libimobiledevice, libplist, qt6-qtbase, libc++, upower, util-linux"
# media-player-info, systemd-libs, udisks2 can be added to NASUX_PKG_DEPENDS when available
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qtdeclarative, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_DEVICE_BACKEND_upower=ON
-DUSE_DBUS=ON
-DUDEV_DISABLED=ON
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
