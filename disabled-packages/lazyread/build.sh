NASUX_PKG_HOMEPAGE=https://lazyread.sourceforge.net/
NASUX_PKG_DESCRIPTION="An auto-scroller, pager, and e-book reader all in one"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.0
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://sourceforge.net/projects/lazyread/files/lazyread/lazyread%20${NASUX_PKG_VERSION}/lazyread-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=7e462c5c9fe104d69e410c537336af838a30a030699dd9320f75fe85a20746a1
NASUX_PKG_DEPENDS="coreutils, lesspipe, ncurses"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	$CC $CPPFLAGS $CFLAGS lazyread.c -o lazyread $LDFLAGS -lncurses
}

termux_step_make_install() {
	install -Dm700 lazyread $TERMUX_PREFIX/bin/lazyread
}
