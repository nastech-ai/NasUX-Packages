NASUX_PKG_HOMEPAGE="http://www.ibiblio.org/pub/Linux/apps/financial/spreadsheet/!INDEX.html"
NASUX_PKG_DESCRIPTION="A vi-like spreadsheet calculator"
NASUX_PKG_LICENSE="Public Domain"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=7.16
TERMUX_PKG_REVISION=4
NASUX_PKG_SRCURL=http://www.ibiblio.org/pub/Linux/apps/financial/spreadsheet/sc-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=1997a00b6d82d189b65f6fd2a856a34992abc99e50d9ec463bbf1afb750d1765
NASUX_PKG_DEPENDS="ncurses"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="SIMPLE=-DSIMPLE"

termux_step_post_configure () {
	CFLAGS+=" -I$TERMUX_PREFIX/include"
}
