NASUX_PKG_HOMEPAGE="https://apps.kde.org/alligator/"
NASUX_PKG_DESCRIPTION="Alligator is a convergent, cross-platform feed reader, supporting standard RSS/Atom feeds"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/alligator-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=6502c1763c43bc6e6e79d9c313dd67a72b87a3571d79bfd86084da0de5913d40
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcolorscheme, kf6-kconfig, kf6-kcoreaddons, kf6-ki18n, kf6-kirigami, kf6-syndication, kirigami-addons, libc++, kf6-qqc2-desktop-style, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, python"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DKF6_HOST_TOOLING=$TERMUX_PREFIX/opt/kf6/cross/lib/cmake/"
	fi
}
