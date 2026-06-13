NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/mtpaint/
NASUX_PKG_DESCRIPTION="Simple paint program for creating icons and pixel based artwork"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
_COMMIT=7cae5d663ed835a365d89a535536c39e18862a83
NASUX_PKG_VERSION="1:3.50.12"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/wjaguar/mtPaint/archive/${_COMMIT}.zip
NASUX_PKG_SHA256=12d861af3e6db4167390bbcf1fd1b79960753acd6ec049bc6cd0d9898c137e89
TERMUX_PKG_AUTO_UPDATE=false
NASUX_PKG_DEPENDS="atk, freetype, gdk-pixbuf, glib, gtk3, harfbuzz, libandroid-glob, libcairo, libiconv, libjpeg-turbo, libpng, libtiff, libwebp, libx11, littlecms, openjpeg, pango, zlib"
TERMUX_PKG_RECOMMENDS="gifsicle"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--prefix=$TERMUX_PREFIX
cflags
gtk3
jpeg
lcms2
man
tiff
"

termux_step_post_get_source() {
	local v=$(sed -En 's/^MT_V="([^"]+)".*/\1/p' configure)
	if [ "${v}" != "${NASUX_PKG_VERSION#*:}" ]; then
		termux_error_exit "Version string '$NASUX_PKG_VERSION' does not seem to be correct."
	fi
}

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}

termux_step_configure() {
	sh $TERMUX_PKG_SRCDIR/configure ${TERMUX_PKG_EXTRA_CONFIGURE_ARGS}
}
