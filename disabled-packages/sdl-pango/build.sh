# x11-packages
NASUX_PKG_HOMEPAGE=https://sdlpango.sourceforge.net/
NASUX_PKG_DESCRIPTION="Connects Pango to SDL"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.1.2
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/sdlpango/SDL_Pango-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=7f75d3b97acf707c696ea126424906204ebfa07660162de925173cdd0257eba4
NASUX_PKG_DEPENDS="fontconfig, freetype, glib, harfbuzz, pango, sdl"

termux_step_post_get_source() {
	termux_download \
		"https://ftp-osl.osuosl.org/pub/gentoo/distfiles/SDL_Pango-0.1.2-API-adds.patch" \
		$TERMUX_PKG_CACHEDIR/SDL_Pango-0.1.2-API-adds.patch \
		5a989c7acb539fce640323d3995cca8913a4b8869f5c690b78501ec6b5c86d5d
	cat $TERMUX_PKG_CACHEDIR/SDL_Pango-0.1.2-API-adds.patch | patch --silent -p0
}

termux_step_pre_configure() {
	mkdir -p m4
	cp $TERMUX_PREFIX/share/aclocal/sdl.m4 m4/
	autoreconf -fi -Im4

	CPPFLAGS+=" -I$TERMUX_PREFIX/include/SDL -D__FT2_BUILD_UNIX_H__"
}
