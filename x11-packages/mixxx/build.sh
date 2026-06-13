NASUX_PKG_HOMEPAGE=https://www.mixxx.org
NASUX_PKG_DESCRIPTION="Free DJ software that gives you everything you need to perform live mixes"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.5.6"
NASUX_PKG_SRCURL="https://github.com/mixxxdj/mixxx/archive/refs/tags/$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=9cfc9025d50d2511767ee52a07b8854f75c581f0585197d043bc219fcf9f9050
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="chromaprint, ffmpeg, flac, glib, glu, hicolor-icon-theme, hidapi, libc++, libdjinterop, libebur128, libid3tag, libkeyfinder, libmad, libmodplug, libmp3lame, libogg, libopus, libsndfile, libsoundtouch, libsqlite, libusb, libvorbis, libx11, lilv, openssl, opusfile, portaudio, portmidi, protobuf, qt6-qt5compat, qt6-qtbase, qt6-qtdeclarative, qt6-qtsvg, qtkeychain, rubberband, taglib, upower, wavpack, zlib"
TERMUX_PKG_BUILD_DEPENDS="ms-gsl, googletest"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"

termux_step_pre_configure() {
	nasux_setup_protobuf

	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		# By default cmake will pick $TERMUX_PREFIX/bin/protoc, we should avoid it when cross-compiling
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -Dprotobuf_generate_PROTOC_EXE=$(command -v protoc)"
	fi
}
