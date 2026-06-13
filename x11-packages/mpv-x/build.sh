NASUX_PKG_HOMEPAGE=https://mpv.io/
NASUX_PKG_DESCRIPTION="Command-line media player"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="Joshua Kahn <tom@nasux.dev>"
# Update both mpv and mpv-x to the same version in one PR.
NASUX_PKG_VERSION="0.41.0"
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/mpv-player/mpv/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=ee21092a5ee427353392360929dc64645c54479aefdb5babc5cfbb5fad626209
TERMUX_PKG_AUTO_UPDATE=false
NASUX_PKG_DEPENDS="alsa-lib, ffmpeg, jack, libandroid-glob, libandroid-shmem, libarchive, libass, libbluray, libcaca, libdrm, libdvdnav, libiconv, libjpeg-turbo, libplacebo, libsixel, libuchardet, libx11, libxext, libxinerama, libxpresent, libxrandr, libxss, libzimg, littlecms, luajit, openal-soft, opengl, pipewire, pulseaudio, rubberband, vulkan-icd, zlib"
TERMUX_PKG_BUILD_DEPENDS="vulkan-headers, vulkan-loader-generic"
TERMUX_PKG_CONFLICTS="mpv"
TERMUX_PKG_REPLACES="mpv"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dlibmpv=true
-Dlua=luajit
-Ddvdnav=enabled
-Dvapoursynth=disabled
-Dopenal=enabled
-Dgbm=disabled
-Dgl-x11=enabled
-Dvdpau=disabled
-Dvaapi=disabled
-Dvulkan=enabled
-Dxv=disabled
-Dandroid-media-ndk=disabled
"

# shellcheck disable=SC2031
termux_step_post_get_source() {
	# Version guard
	local ver_m ver_x
	ver_m="$(. "$NASUX_SCRIPTDIR/packages/mpv/build.sh"; echo "${NASUX_PKG_VERSION#*:}")"
	ver_x="${NASUX_PKG_VERSION#*:}"
	if [[ "${ver_m}" != "${ver_x}" ]]; then
		termux_error_exit "Version mismatch between mpv and mpv-x."
	fi
}

# shellcheck disable=SC2031
termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob -landroid-shmem"
	sed -i "s/host_machine.system() == 'android'/false/" "${TERMUX_PKG_SRCDIR}/meson.build"
}

termux_step_post_make_install() {
	# Use opensles audio out by default:
	install -Dm600 -t "$TERMUX_PREFIX/etc/mpv/" "$TERMUX_PKG_BUILDER_DIR/mpv.conf"
	install -Dm600 -t "$TERMUX_PREFIX/share/mpv/scripts/" "$TERMUX_PKG_SRCDIR/TOOLS/lua"/*
}
