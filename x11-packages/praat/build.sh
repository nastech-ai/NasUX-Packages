NASUX_PKG_HOMEPAGE=https://www.praat.org
NASUX_PKG_DESCRIPTION="Doing phonetics by computer"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.4.65"
NASUX_PKG_SRCURL=https://github.com/praat/praat/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=bb3f9c520f93f4786903d59d7f64acdc4704d40ed88b4bbfd52ec75f07be6182
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libc++, libcairo, pango, pulseaudio, zlib"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_post_get_source() {
	rm -f meson.build
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin praat
}
