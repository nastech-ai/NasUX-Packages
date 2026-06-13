NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kstatusnotifieritem"
NASUX_PKG_DESCRIPTION="Implementation of Status Notifier Items"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kstatusnotifieritem-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=a2eec2a981ed9da6cffc955cc21a50dcbc77141cbb840d915f92d1897442d239
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, kf6-kwindowsystem"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_PYTHON_BINDINGS=OFF
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
