NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/aterm/
NASUX_PKG_DESCRIPTION="An xterm replacement with transparency support"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0.1
TERMUX_PKG_REVISION=34
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/aterm/aterm-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=a161c3b2d9c7149130a41963899993af21eae92e8e362f4b5b3c7c4cb16760ce
NASUX_PKG_DEPENDS="libice, libsm, libx11, libxext, xorg-fonts-75dpi | xorg-fonts-100dpi"
TERMUX_PKG_CONFLICTS="xterm"
TERMUX_PKG_REPLACES="xterm"
TERMUX_PKG_PROVIDES="xterm"
TERMUX_PKG_BUILD_DEPENDS="libxt"
NASUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-transparency=yes
--enable-background-image
--enable-fading
--enable-menubar
--enable-graphics
"

termux_step_post_make_install() {
	cat <<- EOF > $TERMUX_PREFIX/bin/xterm
	#!${TERMUX_PREFIX}/bin/sh
	exec ${TERMUX_PREFIX}/bin/aterm +tr "\${@}"
	EOF
	chmod 700 $TERMUX_PREFIX/bin/xterm
}
