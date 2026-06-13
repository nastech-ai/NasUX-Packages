NASUX_PKG_HOMEPAGE=https://github.com/bootchk/resynthesizer
NASUX_PKG_DESCRIPTION="Suite of gimp plugins for texture synthesis"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.0.1"
NASUX_PKG_SRCURL="https://github.com/bootchk/resynthesizer/archive/refs/tags/v${NASUX_PKG_VERSION%.*}.tar.gz"
NASUX_PKG_SHA256=d0f459e551d428e3cd3fec4c3ebfe448e6e2947d9b24553373308d6d41ddd580
NASUX_PKG_DEPENDS="gimp, python"
TERMUX_PKG_BUILD_DEPENDS="xorgproto"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	nasux_setup_meson
	nasux_setup_cmake
}

termux_step_configure() {
	mkdir -p build
	$TERMUX_MESON setup build \
		--prefix="$TERMUX_PREFIX" \
		--buildtype=release \
		--cross-file="$TERMUX_MESON_CROSSFILE"
}

termux_step_make() {
	ninja -C build
}

termux_step_make_install() {
	ninja -C build install
}
