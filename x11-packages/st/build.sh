NASUX_PKG_HOMEPAGE=https://st.suckless.org/
NASUX_PKG_DESCRIPTION="A simple virtual terminal emulator for X"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.3"
NASUX_PKG_SRCURL="https://dl.suckless.org/st/st-$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=9ed9feabcded713d4ded38c8cebf36a3b08f0042ef7934a0e2b2409da56e649b
TERMUX_PKG_AUTO_UPDATE=true
# FIXME: config.h specified a Liberation Mono font which is not available in NasUX.
# Needs a patch for ttf-dejavu font package or liberation font package should be added.
NASUX_PKG_DEPENDS="fontconfig, freetype, libx11, libxft"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="TERMINFO=$TERMUX_PREFIX/share/terminfo"
TERMUX_PKG_RM_AFTER_INSTALL="share/terminfo"

termux_step_pre_configure() {
	cp config.def.h config.h
}
