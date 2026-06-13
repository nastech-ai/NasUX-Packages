NASUX_PKG_HOMEPAGE=https://www.gnu.org/software/xboard/
NASUX_PKG_DESCRIPTION="A graphical chessboard for the X Window System"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=4.9.1
TERMUX_PKG_REVISION=3
NASUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/xboard/xboard-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=2b2e53e8428ad9b6e8dc8a55b3a5183381911a4dae2c0072fa96296bbb1970d6
NASUX_PKG_DEPENDS="glib, libcairo, librsvg, libx11, libxaw, libxmu, libxt, pango"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--without-gtk
"

termux_step_pre_configure() {
	CFLAGS+=" -fcommon"
}
