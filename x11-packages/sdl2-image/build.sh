NASUX_PKG_HOMEPAGE=https://github.com/libsdl-org/SDL_image
NASUX_PKG_DESCRIPTION="A simple library to load images of various formats as SDL surfaces (version 2)"
NASUX_PKG_LICENSE="ZLIB"
NASUX_PKG_LICENSE_FILE="LICENSE.txt"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.8.12"
NASUX_PKG_SRCURL="https://github.com/libsdl-org/SDL_image/releases/download/release-${NASUX_PKG_VERSION}/SDL2_image-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=393f5efb50536ec13ca4f4affb69cc9966d3c3f969e6c5e701faddf9f9785381
NASUX_PKG_DEPENDS="libavif, libjpeg-turbo, libjxl, libpng, libtiff, libwebp, sdl2 | sdl2-compat"
TERMUX_PKG_ANTI_BUILD_DEPENDS="sdl2-compat"
# Prevent updating to SDL3 version
TERMUX_PKG_AUTO_UPDATE=false
# "disable shared" in sdl2-image means "disable dynamic loading in favor of dynamic linking"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-stb-image
--disable-jpg-shared
--disable-jxl-shared
--disable-png-shared
--disable-tif-shared
--disable-webp-shared
--disable-avif-shared
"
