NASUX_PKG_HOMEPAGE="https://invent.kde.org/libraries/kunifiedpush"
NASUX_PKG_DESCRIPTION="UnifiedPush client components"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kunifiedpush-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=15b6c7c463953b0d3b0ae8dfdde9dea41ae7eac77d036ca95db6f87d1a8a8fe1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcmutils, kf6-kcoreaddons, kf6-ki18n, kf6-kservice, kf6-solid, libc++, openssl, qt6-qtbase, qt6-qtdeclarative, qt6-qtwebsockets"
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
