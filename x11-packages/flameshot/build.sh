NASUX_PKG_HOMEPAGE=https://flameshot.org/
NASUX_PKG_DESCRIPTION="Powerful yet simple to use screenshot software"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="14.0.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/flameshot-org/flameshot/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=810c399f3b9fbfd72e24e61417ede24243925f9c0d03040a8aba0d4866676d93
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DDISABLE_UPDATE_CHECKER=OFF
-DUSE_WAYLAND_CLIPBOARD=OFF
"
# remove include and lib after make install to prevent conflicts and
# in sync with upstream's suggested Debian packaging script:
# https://github.com/flameshot-org/flameshot/blob/0ad3357a7675c11d462ec2e6752b04b285eeb658/packaging/debian/rules#L29
# https://github.com/nastech-ai/NasUX-Packages/issues/29113
TERMUX_PKG_RM_AFTER_INSTALL="
include
lib
"
