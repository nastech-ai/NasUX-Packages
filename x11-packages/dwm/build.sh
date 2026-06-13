NASUX_PKG_HOMEPAGE=https://dwm.suckless.org/
NASUX_PKG_DESCRIPTION="A dynamic window manager for X"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.8"
NASUX_PKG_SRCURL="https://dl.suckless.org/dwm/dwm-$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=bcf540589ad174d4073f4efa658828411e2f5ba63196cfaf6b71363700f590b7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="dmenu, fontconfig, libx11, libxft, libxinerama, st"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	cp config.def.h config.h
}
