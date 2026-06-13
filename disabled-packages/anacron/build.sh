NASUX_PKG_HOMEPAGE=https://anacron.sourceforge.net/
NASUX_PKG_DESCRIPTION="A periodic command scheduler"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.3
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/anacron/anacron-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=5ceee6f22cd089bdaf1c0841200dbe5726babaf9e2c432bb17c1fc95da5ca99f
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"

termux_step_post_get_source() {
	cp $TERMUX_PKG_BUILDER_DIR/obstack.h ./
}

termux_step_create_debscripts() {
	cat <<- EOF > ./postinst
	#!$TERMUX_PREFIX/bin/sh
	mkdir -p $TERMUX_PREFIX/var/spool/anacron
	EOF
}
