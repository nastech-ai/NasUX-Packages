NASUX_PKG_HOMEPAGE=https://github.com/BoomerangDecompiler/boomerang
NASUX_PKG_DESCRIPTION="A general, open source machine code decompiler"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_LICENSE_FILE="LICENSE.TERMS"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.5.2
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/BoomerangDecompiler/boomerang/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=1d2c9c2f5de1a3e1d5fe3879e82bca268d1c49e6ba3d0a7848695f18c594384d
NASUX_PKG_DEPENDS="capstone, libc++, qt5-qtbase"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBOOMERANG_BUILD_UNIT_TESTS=OFF
"
