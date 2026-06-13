NASUX_PKG_HOMEPAGE=https://github.com/LuRsT/hr
NASUX_PKG_DESCRIPTION="A horizontal ruler for your terminal"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.5"
NASUX_PKG_SRCURL=$NASUX_PKG_HOMEPAGE/archive/$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=d4bb6e8495a8adaf7a70935172695d06943b4b10efcbfe4f8fcf6d5fe97ca251
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_DEPENDS=bash
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make() {
	return
}

termux_step_make_install() {
	local bin="$(basename $NASUX_PKG_HOMEPAGE)"
	install -D "$bin" -t "$TERMUX_PREFIX/bin"
	install -D "$bin.1" -t "$TERMUX_PREFIX/share/man/man1"
}
