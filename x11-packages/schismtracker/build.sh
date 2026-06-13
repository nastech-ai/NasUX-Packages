NASUX_PKG_HOMEPAGE=https://schismtracker.org/
NASUX_PKG_DESCRIPTION="A free and open-source reimplementation of Impulse Tracker, a program used to create high quality music"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="20251014"
NASUX_PKG_SRCURL=https://github.com/schismtracker/schismtracker/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=84e9977770a131f3bbc699c2d6cae8b3471e44a4ae1e62024f697caa6bf19d96
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libflac, libx11, libxv, sdl2 | sdl2-compat, utf8proc"
TERMUX_PKG_BUILD_DEPENDS="xorgproto"
TERMUX_PKG_ANTI_BUILD_DEPENDS="sdl2-compat"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_prog_WINDRES=
ac_cv_prog_ac_ct_WINDRES=
"

termux_step_pre_configure() {
	autoreconf -fi -I$TERMUX_PREFIX/share/aclocal
}

termux_step_post_configure() {
	mkdir -p auto
}
