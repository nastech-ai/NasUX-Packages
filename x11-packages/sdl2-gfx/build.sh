NASUX_PKG_HOMEPAGE=https://www.ferzkopp.net/joomla/content/view/19/14/
NASUX_PKG_DESCRIPTION="Graphics primitives and surface functions for SDL2"
NASUX_PKG_LICENSE="ZLIB"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.0.4"
TERMUX_PKG_REVISION=4
NASUX_PKG_SRCURL=https://www.ferzkopp.net/Software/SDL2_gfx/SDL2_gfx-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=63e0e01addedc9df2f85b93a248f06e8a04affa014a835c2ea34bfe34e576262
NASUX_PKG_DEPENDS="sdl2 | sdl2-compat"
TERMUX_PKG_ANTI_BUILD_DEPENDS="sdl2-compat"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-mmx
"

termux_step_pre_configure() {
	LDFLAGS+=" -lm"
}
