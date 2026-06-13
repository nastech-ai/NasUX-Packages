NASUX_PKG_HOMEPAGE="https://invent.kde.org/games/libkmahjongg"
NASUX_PKG_DESCRIPTION="Common code, backgrounds and tile sets for games using Mahjongg tiles"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="3ls-it <3ls-it@pm.me>"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/libkmahjongg-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=7189fae0a80c3cab9f34bc93f1733036183ea91b4b1b0da748522f65392d367b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcoreaddons, kf6-kwidgetsaddons, kf6-ki18n, kf6-kconfig, kf6-kcoreaddons, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="kf6-kconfig-cross-tools, extra-cmake-modules"
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
