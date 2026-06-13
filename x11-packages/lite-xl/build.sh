NASUX_PKG_HOMEPAGE=https://github.com/lite-xl/lite-xl
NASUX_PKG_DESCRIPTION="A lightweight text editor written in Lua"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.1.8"
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL="https://github.com/lite-xl/lite-xl/archive/refs/tags/v$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=fcaffb946bc60583369cb040d533a4ac18075a6d474d49a2a5ff4bf87e2e9a10
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="freetype, lua54, pcre2, sdl3"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Duse_system_lua=true
"
