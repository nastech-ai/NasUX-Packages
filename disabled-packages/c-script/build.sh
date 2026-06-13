NASUX_PKG_HOMEPAGE=https://github.com/ryanmjacobs/c
NASUX_PKG_DESCRIPTION="Compile and execute C 'scripts' in one go!"
NASUX_PKG_LICENSE=MIT
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.15.1"
NASUX_PKG_SRCURL=$NASUX_PKG_HOMEPAGE/archive/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=ecfad78cb0ab56da44dcfed805f5c261ddefd6dc4a4e57eb2dcfcffa85330605
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_DEPENDS=bash
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	local bin="$(basename $NASUX_PKG_HOMEPAGE)"
	install -D "$bin" -t "$TERMUX_PREFIX/bin"
}
