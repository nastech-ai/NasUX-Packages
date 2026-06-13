NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kirigami'
NASUX_PKG_DESCRIPTION='A QtQuick based components set'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kirigami-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=d7daa74e9fe81b674e54e6e979feb85d3d2f4216bf6d9c02bfaa2c021fe1ac2d
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-shadertools, qt6-qtsvg, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_pre_configure() {
	LDFLAGS+=" -fopenmp -static-openmp"
}
