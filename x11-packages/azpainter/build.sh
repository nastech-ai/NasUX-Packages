NASUX_PKG_HOMEPAGE=https://gitlab.com/azelpg/azpainter
NASUX_PKG_DESCRIPTION="Full color painting software for Unix-like systems for illustration drawing"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1:3.0.12"
TERMUX_PKG_REVISION=1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_SRCURL=https://gitlab.com/azelpg/azpainter/-/archive/v${NASUX_PKG_VERSION:2}/azpainter-${NASUX_PKG_VERSION:2}.tar.bz2
NASUX_PKG_SHA256=13fe5543f592892e2885ad06bd0394062b2425dd1688cbb09676097302c8cd8c
NASUX_PKG_DEPENDS="fontconfig, freetype, libandroid-shmem, libiconv, libjpeg-turbo, libpng, libtiff, libwebp, libx11, libxcursor, libxext, libxi, zlib"
TERMUX_PKG_RECOMMENDS="hicolor-icon-theme"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	CPPFLAGS="-I$TERMUX_PKG_SRCDIR/src/include $CPPFLAGS"
}

termux_step_configure() {
	nasux_setup_ninja
	./configure --prefix="$TERMUX_PREFIX" \
		CC="$CC" \
		CFLAGS="$CPPFLAGS $CFLAGS" \
		LDFLAGS="$LDFLAGS" \
		LIBS="-liconv -landroid-shmem -lz"
}

termux_step_make() {
	cd build
	ninja
}

termux_step_make_install() {
	cd build
	ninja install
}
