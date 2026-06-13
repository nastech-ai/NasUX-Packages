NASUX_PKG_HOMEPAGE=https://www.kde.org/
NASUX_PKG_DESCRIPTION="KDE Kirigami2 QtQuick components based on Qt Quick Controls 2"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.107.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kirigami2-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=f5c3d1363ddde13c977f6f6c747cb0b34ac6fb647134ef9e9c1c24474e0cb9c9
NASUX_PKG_DEPENDS="libc++, qt5-qtbase, qt5-qtdeclarative, qt5-qtgraphicaleffects, qt5-qtquickcontrols2, qt5-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"

termux_step_pre_configure() {
	LDFLAGS+=" -fopenmp -static-openmp"
}
