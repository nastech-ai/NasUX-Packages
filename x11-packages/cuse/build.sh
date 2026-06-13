NASUX_PKG_HOMEPAGE=https://pi4.informatik.uni-mannheim.de/~haensel/cuse/
NASUX_PKG_DESCRIPTION="A MIDI-Sequencer which targets both terminal purists and visually impaired people"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.6
TERMUX_PKG_REVISION=4
NASUX_PKG_SRCURL="https://downloads.sourceforge.net/project/cuse/cuse-${NASUX_PKG_VERSION}.tgz"
NASUX_PKG_SHA256=dc2306c68eeb0eefb2da4739cf42bf3bf49fde3adba6ca58900fb3f78d4f9ad6
NASUX_PKG_DEPENDS="cdk, libc++, ncurses, sdl, sdl-mixer"

termux_step_post_get_source() {
	make distclean || :
}

termux_step_pre_configure() {
	autoreconf -fi
	LDFLAGS+=" -lSDL"
}
