NASUX_PKG_HOMEPAGE=https://github.com/Martchus/tagparser
NASUX_PKG_DESCRIPTION="C++ library for reading and writing MP4 (iTunes), ID3, Vorbis, Opus, FLAC and Matroska tags"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="12.5.3"
NASUX_PKG_SRCURL=https://github.com/Martchus/tagparser/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=902ba1759ed54cff5e5009d6d4d1dded9ee0bd0d23fb1221aef59adf25b0e455
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libc++utilities, zlib"
TERMUX_PKG_BUILD_DEPENDS="iso-codes"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
-DLANGUAGE_FILE_ISO_639_2=$TERMUX_PREFIX/share/iso-codes/json/iso_639-2.json
"

termux_step_pre_configure() {
	CXXFLAGS+=" -std=c++17"
}
