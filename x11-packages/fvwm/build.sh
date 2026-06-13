NASUX_PKG_HOMEPAGE=https://www.fvwm.org/
NASUX_PKG_DESCRIPTION="A multiple large virtual desktop window manager originally derived from twm."
# Licenses: GPL-2.0, FVWM
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.7.0
TERMUX_PKG_REVISION=7
NASUX_PKG_SRCURL=https://github.com/fvwmorg/fvwm/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a0662354ce5762e894665a27e59b437cb422bfe738a8cf901665c6ee0d0b9ab8
NASUX_PKG_DEPENDS="fontconfig, fribidi, glib, libandroid-shmem, libcairo, libice, libiconv, libpng, librsvg, libsm, libx11, libxcursor, libxext, libxft, libxinerama, libxpm, libxrender, readline"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_func_setpgrp_void=yes ac_cv_func_mkstemp=no ac_cv_func_getpwuid=no"

termux_step_pre_configure() {
	autoreconf -fi
	export LIBS="-landroid-shmem"
}
