NASUX_PKG_HOMEPAGE=https://cgit.freedesktop.org/mesa/glu/
NASUX_PKG_DESCRIPTION="Mesa OpenGL Utility library"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="LICENSE"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=9.0.3
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://mesa.freedesktop.org/archive/glu/glu-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=bd43fe12f374b1192eb15fe20e45ff456b9bc26ab57f0eee919f96ca0f8a330f
NASUX_PKG_DEPENDS="libc++, opengl"
TERMUX_PKG_CONFLICTS="libglu"
TERMUX_PKG_REPLACES="libglu"

termux_step_post_get_source() {
	cp "${TERMUX_PKG_BUILDER_DIR}"/LICENSE ./
}

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
