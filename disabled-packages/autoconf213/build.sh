NASUX_PKG_HOMEPAGE=https://www.gnu.org/software/autoconf/autoconf.html
NASUX_PKG_DESCRIPTION="Creator of shell scripts to configure source code packages (legacy v2.13)"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.13
NASUX_PKG_SRCURL=http://ftp.gnu.org/gnu/autoconf/autoconf-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=f0611136bee505811e9ca11ca7ac188ef5323a8e2ef19cffd3edb3cf08fd791e
NASUX_PKG_DEPENDS="m4, make, perl"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--program-suffix=-2.13"

termux_step_post_get_source() {
	perl -p -i -e "s|/bin/sh|$TERMUX_PREFIX/bin/sh|" *.m4
}

termux_step_post_massage() {
	perl -p -i -e "s|/usr/bin/m4|$TERMUX_PREFIX/bin/m4|" $TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/bin/*
	perl -p -i -e "s|CONFIG_SHELL-/bin/sh|CONFIG_SHELL-$TERMUX_PREFIX/bin/sh|" $TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/bin/autoconf-2.13
}
