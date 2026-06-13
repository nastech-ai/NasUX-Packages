NASUX_PKG_HOMEPAGE=https://handbrake.fr/
NASUX_PKG_DESCRIPTION="A GPL-licensed, multiplatform, multithreaded video transcoder"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_LICENSE_FILE="COPYING, LICENSE"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.11.2"
NASUX_PKG_SRCURL=https://github.com/HandBrake/HandBrake/releases/download/${NASUX_PKG_VERSION}/HandBrake-${NASUX_PKG_VERSION}-source.tar.bz2
NASUX_PKG_SHA256=12b046350f2422dc28783ff94229aff4ba5fe5e683431e057355d36163b2593a
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="ffmpeg, gdk-pixbuf, gst-plugins-base, gstreamer, gtk4, libass, libbluray, libcairo, libdav1d, libdvdnav, libdvdread, libiconv, libjansson, libjpeg-turbo, libtheora, libvorbis, libvpx, libx264, libx265, libxml2, pango"
TERMUX_PKG_BUILD_DEPENDS="liba52, libspeex, libzimg, svt-av1"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--force
--prefix $TERMUX_PREFIX
--arch $NASUX_ARCH
--disable-numa
--disable-nvenc
"
# HandBrake binaries linked against fdk-aac are not redistributable.
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" --disable-fdk-aac"

termux_step_pre_configure() {
	# handbrake configure attempts to detect meson and cmake,
	# then during the build it runs more nested configures using
	# meson and cmake build files, then if the GUI is enabled
	# it attempts to detect and run glib-compile-resources
	nasux_setup_meson
	nasux_setup_cmake
	nasux_setup_glib_cross_pkg_config_wrapper

	# get only meson.py in cache directory
	sed -i "s|'meson'|'${TERMUX_MESON##* }'|g" make/configure.py

	# override GTK.CONFIGURE.cross at the end of the gtk/module.defs file
	# because the existing instance of --cross-file in the middle of the file
	# is inside a condition that fails to activate when $NASUX_ARCH is x86_64
	echo >> gtk/module.defs
	echo "GTK.CONFIGURE.cross = --cross-file=$TERMUX_MESON_CROSSFILE" >> gtk/module.defs

	LDFLAGS+=" -liconv -lx265"
}

termux_step_configure() {
	$TERMUX_PKG_SRCDIR/configure $TERMUX_PKG_EXTRA_CONFIGURE_ARGS
}
