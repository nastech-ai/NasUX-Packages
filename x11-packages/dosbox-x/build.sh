NASUX_PKG_HOMEPAGE=https://dosbox-x.com/
NASUX_PKG_DESCRIPTION="A cross-platform DOS emulator based on the DOSBox project"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2026.05.02"
NASUX_PKG_SRCURL="https://github.com/joncampbell123/dosbox-x/archive/refs/tags/dosbox-x-v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=5ab3584870bec378b495242f20f03ecbef2cd032a128ee3394a88ff7a53cd914
NASUX_PKG_DEPENDS="dosbox-x-data, fluidsynth, freetype, libandroid-posix-semaphore, libc++, libiconv, libpcap, libpng, libslirp, libx11, libxkbfile, libxrandr, opengl, sdl2 | sdl2-compat, sdl2-net, zlib"
TERMUX_PKG_ANTI_BUILD_DEPENDS="sdl2-compat"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_path_SDL2_CONFIG=$TERMUX_PREFIX/bin/sdl2-config
--enable-sdl2
--disable-alsa-midi
--disable-dynamic-x86
--disable-fpu-x86
--disable-unaligned-memory
--disable-avcodec
"

termux_step_post_get_source() {
	sed -i 's:/tmp/tinyfd:'"$TERMUX_PREFIX"'\0:g' \
		src/libs/tinyfiledialogs/tinyfiledialogs.c
}

termux_step_pre_configure() {
	autoreconf -fi

	LDFLAGS+=" -liconv -landroid-posix-semaphore"
}
