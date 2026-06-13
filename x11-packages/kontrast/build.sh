NASUX_PKG_HOMEPAGE="https://invent.kde.org/accessibility/kontrast"
NASUX_PKG_DESCRIPTION="Tool to check contrast for colors that allows verifying that your colors are correctly accessible"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kontrast-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256="3d55ecdeff6350590712c42699b2a463a96666cabeeb14ef60654da6108fc6a8"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="futuresql, kirigami-addons, kf6-kconfig, kf6-kcoreaddons, kf6-kcrash, kf6-ki18n, kf6-kirigami, libc++, qcoro, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qcoro-static, kf6-kdoctools"
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
