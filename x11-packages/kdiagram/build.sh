NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/kdiagram"
NASUX_PKG_DESCRIPTION="Components for handling SVGs"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.0.1"
NASUX_PKG_SRCURL="https://download.kde.org/stable/kdiagram/${NASUX_PKG_VERSION}/kdiagram-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=4659b0c2cd9db18143f5abd9c806091c3aab6abc1a956bbf82815ab3d3189c6d
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
