NASUX_PKG_HOMEPAGE=https://codeberg.org/dnkl/fcft
NASUX_PKG_DESCRIPTION="A small font loading and glyph rasterization library"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.3.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://codeberg.org/dnkl/fcft/archive/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=f18bf79562e06d41741690cd1e07a02eb2600ae39eb5752eef8a698f603a482c
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="fontconfig, freetype, harfbuzz, libpixman, utf8proc"
TERMUX_PKG_BUILD_DEPENDS="libtllist, scdoc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddocs=enabled
"
