# x11-packages
NASUX_PKG_HOMEPAGE=https://www.widelands.org/
NASUX_PKG_DESCRIPTION="A free, open source real-time strategy game with singleplayer campaigns and a multiplayer mode"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0
NASUX_PKG_SRCURL=https://github.com/widelands/widelands/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=1dab0c4062873cc72c5e0558f9e9620b0ef185f1a78923a77c4ce5b9ed76031a
NASUX_PKG_DEPENDS="glew, libandroid-execinfo, libandroid-glob, libcurl, libicu, libpng, opengl, sdl2, sdl2-image, sdl2-mixer, sdl2-ttf, widelands-data"
TERMUX_PKG_BUILD_DEPENDS="boost, boost-headers"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_INSTALL_PREFIX=$TERMUX_PREFIX/bin
-DWL_INSTALL_BASEDIR=$TERMUX_PREFIX/share/doc/$TERMUX_PKG_NAME
-DWL_INSTALL_DATADIR=$TERMUX_PREFIX/share/$TERMUX_PKG_NAME
-DGTK_UPDATE_ICON_CACHE=OFF
-DOPTION_BUILD_TESTS=OFF
"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob -landroid-execinfo"
}
