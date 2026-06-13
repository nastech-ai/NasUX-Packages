NASUX_PKG_HOMEPAGE=https://github.com/Bhupesh-V/ugit
NASUX_PKG_DESCRIPTION="ugit helps you undo your last git command with grace. Your damage control git buddy"
NASUX_PKG_LICENSE=MIT
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.9"
NASUX_PKG_SRCURL=$NASUX_PKG_HOMEPAGE/archive/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=f93d9d4bb0d6fd676704e45733190413885c859ff2807b84cc8113bf674fc063
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_DEPENDS='bash, fzf, ncurses-utils'
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	local bin="$(basename $NASUX_PKG_HOMEPAGE)"
	install -D "$bin" -t "$TERMUX_PREFIX/bin"
	ln -sf "$TERMUX_PREFIX/bin/$bin"  "$TERMUX_PREFIX/bin/gitundo"
}
