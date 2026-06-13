# x11-packages
NASUX_PKG_HOMEPAGE=https://love2d.org/
NASUX_PKG_DESCRIPTION="A framework you can use to make 2D games in Lua"
NASUX_PKG_LICENSE="ZLIB"
NASUX_PKG_LICENSE_FILE="license.txt"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.10.2
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/love2d/love/releases/download/${NASUX_PKG_VERSION}/love-${NASUX_PKG_VERSION}-linux-src.tar.gz
NASUX_PKG_SHA256=b26b306b113158927ae12d2faadb606eb1db49ffdcd7592d6a0a3fc0af21a387
NASUX_PKG_DEPENDS="freetype, game-music-emu, libandroid-spawn, libc++, libluajit, libmodplug, libogg, libphysfs, libtheora, libvorbis, mpg123, openal-soft, opengl, sdl2, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-gme
--with-lua=luajit
ac_cv_prog_LUA_EXECUTABLE=luajit
"

termux_step_pre_configure() {
	case "$NASUX_PKG_VERSION" in
		0.10.*|*:0.10.* ) ;;
		* ) termux_error_exit "Invalid version '$NASUX_PKG_VERSION' for package '$TERMUX_PKG_NAME'." ;;
	esac

	export OBJCXX="$CXX"
	CPPFLAGS+=" -DluaL_reg=luaL_Reg"
	LDFLAGS+=" -landroid-spawn"
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
