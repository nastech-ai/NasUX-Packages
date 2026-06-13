NASUX_PKG_HOMEPAGE=https://github.com/any1/neatvnc
NASUX_PKG_DESCRIPTION="A liberally licensed VNC server library with a clean interface"
NASUX_PKG_LICENSE="ISC"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.0.0"
NASUX_PKG_SRCURL=https://github.com/any1/neatvnc/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=993dedc30e72981650770c04438e9759537e4677010e2dab5e792c39afe74601
NASUX_PKG_DEPENDS="libaml, libdrm, libgmp, libgnutls, libjpeg-turbo, libnettle, libpixman, zlib"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Djpeg=enabled
-Dtls=enabled
-Dnettle=enabled
-Dgbm=disabled
"
