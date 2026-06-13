NASUX_PKG_HOMEPAGE=https://premake.github.io/
NASUX_PKG_DESCRIPTION="Build script generator"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=5.0.0-beta1
NASUX_PKG_SRCURL=https://github.com/premake/premake-core/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=97fa4cef9fb6459c39da4e70756c0e13ae7b090fffe9442306c768b8b62e1589
# NASUX_PKG_DEPENDS="pcre, openssl, libuuid"
# TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ssl=openssl"


termux_step_pre_configure() {
	TERMUX_PKG_BUILDDIR=$TERMUX_PKG_SRCDIR/build/gmake.unix
}
