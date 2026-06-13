NASUX_PKG_HOMEPAGE=https://nxengine.sourceforge.net
NASUX_PKG_DESCRIPTION="Open-source rewrite engine of the Cave Story for Dingux and MotoMAGX"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0.0.4-Rev4
TERMUX_PKG_REVISION=5
NASUX_PKG_SRCURL=https://github.com/EXL/NXEngine/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=d467c112e81d4c56337ebf6968bd8bd781bce9140f674e72009a5274d2c15784
NASUX_PKG_DEPENDS="libc++, pulseaudio, sdl, sdl-ttf"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	make -j $TERMUX_PKG_MAKE_PROCESSES -f Makefile.linux \
		CC="$CC" \
		CXX="$CXX" \
		LINK="$CXX" \
		CFLAGS="$CFLAGS $CPPFLAGS -Wno-c++11-narrowing" \
		CXXFLAGS="$CXXFLAGS $CPPFLAGS -Wno-c++11-narrowing" \
		LFLAGS="$LDFLAGS"
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin ./nx
	install -Dm600 -t $TERMUX_PREFIX/share/nxengine \
		smalfont.bmp DroidSansMono.ttf font.ttf \
		sprites.sif tilekey.dat
}
