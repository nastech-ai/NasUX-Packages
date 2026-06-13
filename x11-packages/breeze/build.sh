NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/breeze"
NASUX_PKG_DESCRIPTION="Artwork, styles and assets for the Breeze visual style for the Plasma Desktop"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/breeze-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=06c4c3e466cd03a8c1e411a38b04756b6e145879a560534b2fc44666d41330f4
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-breeze-icons, kf6-frameworkintegration, kf6-kcmutils, kf6-kcolorscheme, kf6-kconfig, kf6-kcoreaddons, kdecoration, kf6-ki18n, kf6-kiconthemes, kf6-kwidgetsaddons, kf6-kpackage, libc++, qt6-qtbase, qt6-qtdeclarative, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, kf6-kirigami"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
-DBUILD_QT6=ON
-DBUILD_QT5=OFF
"
termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DKF6_HOST_TOOLING=$TERMUX_PREFIX/opt/kf6/cross/lib/cmake/"
	fi
}
