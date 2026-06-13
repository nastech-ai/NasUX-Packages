NASUX_PKG_HOMEPAGE="https://invent.kde.org/education/kig"
NASUX_PKG_DESCRIPTION="Interactive Geometry"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kig-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=083d67ee5596bcad29f35a7ca59c072610504cf89afda618c1bdba9227d4355b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="boost, kf6-karchive, kf6-kcompletion, kf6-kconfig, kf6-kconfigwidgets, kf6-kcoreaddons, kf6-kcrash, kf6-ki18n, kf6-kiconthemes, kf6-kparts, kf6-ktexteditor, kf6-kwidgetsaddons, kf6-kxmlgui, libc++, python, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="boost-headers, extra-cmake-modules, kf6-kdoctools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DKF6_HOST_TOOLING=$TERMUX_PREFIX/opt/kf6/cross/lib/cmake/"
	fi
}
