NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kunitconversion"
NASUX_PKG_DESCRIPTION="Support for unit conversion"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kunitconversion-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=404e064114c95eca0ef759b96ca4e0ba5f9b8bc563138574358270963f3f5554
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-ki18n, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_PYTHON_BINDINGS=OFF
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
