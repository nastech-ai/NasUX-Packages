NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/arianna"
NASUX_PKG_DESCRIPTION="EPub Reader for mobile devices"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/arianna-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=c4a09cbd963ed88f20427a9354d27eff3cde075ba53367cdd2c362a54ca766d8
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kirigami-addons, kf6-baloo, kf6-karchive, kf6-kcolorscheme, kf6-kconfig, kf6-kcoreaddons, kf6-kcrash, kf6-kdbusaddons, kf6-kfilemetadata, kf6-ki18n, kf6-kirigami, kf6-kitemmodels, kf6-kquickcharts, kf6-kwindowsystem, kf6-qqc2-desktop-style, libc++, qt6-qtbase, qt6-qtdeclarative, qt6-qthttpserver, qt6-qtwebchannel, qt6-qtwebengine"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
NASUX_PKG_EXCLUDED_ARCHES="i686"
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
