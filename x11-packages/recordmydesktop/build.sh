NASUX_PKG_HOMEPAGE=https://github.com/Enselic/recordmydesktop
NASUX_PKG_DESCRIPTION="Produces a OGG encapsulated Theora/Vorbis recording of your desktop"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.4.0
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/Enselic/recordmydesktop/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=69602d32c1be82cd92083152c7c44c0206ca0d6419d76a6144ffcfe07b157a72
NASUX_PKG_DEPENDS="libandroid-shmem, libice, libogg, libpopt, libsm, libtheora, libvorbis, libx11, libxdamage, libxext, libxfixes, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_lib_pthread_pthread_mutex_lock=yes
--enable-oss=no
--enable-jack=no
"

termux_step_post_get_source() {
	TERMUX_PKG_SRCDIR+="/recordmydesktop"
}

termux_step_pre_configure() {
	autoreconf -fi

	export LIBS="-landroid-shmem"
}
