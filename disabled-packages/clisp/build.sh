NASUX_PKG_HOMEPAGE=http://www.clisp.org/
NASUX_PKG_DESCRIPTION="GNU CLISP - an ANSI Common Lisp Implementation"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.49
NASUX_PKG_SRCURL=http://downloads.sourceforge.net/project/clisp/clisp/${NASUX_PKG_VERSION}/clisp-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256="8132ff353afaa70e6b19367a25ae3d5a43627279c25647c220641fed00f8e890"
NASUX_PKG_DEPENDS="readline, libandroid-support"
TERMUX_PKG_MAKE_PROCESSES=1

termux_step_configure() {
	cd $TERMUX_PKG_BUILDDIR

	export XCPPFLAGS="$CPPFLAGS"
	export XCFLAGS="$CFLAGS"
	export XLDFLAGS="$LDFLAGS"

	unset CC
	unset CPPFLAGS
	unset CFLAGS
	unset LDFLAGS

	$TERMUX_PKG_SRCDIR/configure \
		--host=$TERMUX_HOST_PLATFORM \
		--prefix=$TERMUX_PREFIX \
		--enable-shared \
		--disable-static \
		--srcdir=$TERMUX_PKG_SRCDIR \
		--ignore-absence-of-libsigsegv \
		ac_cv_func_select=yes
}
