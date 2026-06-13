NASUX_PKG_HOMEPAGE=https://hewlettpackard.github.io/wireless-tools/Tools
NASUX_PKG_DESCRIPTION="A set of tools allowing to manipulate the Wireless Extensions"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=30pre9
TERMUX_PKG_REVISION=4
NASUX_PKG_SRCURL=https://hewlettpackard.github.io/wireless-tools/wireless_tools.30.pre9.tar.gz
NASUX_PKG_SHA256=abd9c5c98abf1fdd11892ac2f8a56737544fe101e1be27c6241a564948f34c63
TERMUX_PKG_BREAKS="wireless-tools-dev"
TERMUX_PKG_REPLACES="wireless-tools-dev"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make () {
	make \
		CC="$CC" \
		CFLAGS="$CFLAGS $CPPFLAGS -fPIE -pie" \
		LDFLAGS="$LDFLAGS -fPIE -pie" \
		PREFIX="${TERMUX_PREFIX}"
}
