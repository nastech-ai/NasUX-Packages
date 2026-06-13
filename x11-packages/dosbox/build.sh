NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/dosbox/
NASUX_PKG_DESCRIPTION="Emulator with builtin DOS for running DOS Games"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.74.3
TERMUX_PKG_REVISION=23
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/dosbox/dosbox-${NASUX_PKG_VERSION/.3/-3}.tar.gz
NASUX_PKG_SHA256=c0d13dd7ed2ed363b68de615475781e891cd582e8162b5c3669137502222260a
NASUX_PKG_DEPENDS="libc++, libpng, libx11, sdl, sdl-net, zlib"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-dynamic-x86
--disable-fpu-x86
--disable-opengl
"

termux_step_pre_configure() {
	# Avoid "error: ISO C++17 does not allow 'register' storage class specifier"
	CXXFLAGS+=" -std=c++11"
}
