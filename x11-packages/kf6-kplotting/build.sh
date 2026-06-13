NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kplotting"
NASUX_PKG_DESCRIPTION="Lightweight plotting framework"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kplotting-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=b2f8d7e720187ea8159653cb3c8caf0d03fb5f3d7ecef1b2b80ac0b2a77b4367
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
