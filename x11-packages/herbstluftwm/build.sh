NASUX_PKG_HOMEPAGE="https://herbstluftwm.org"
NASUX_PKG_DESCRIPTION="Manual tiling window manager for X"
NASUX_PKG_LICENSE="BSD 2-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.6"
NASUX_PKG_SRCURL="https://herbstluftwm.org/tarballs/herbstluftwm-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=e38c9721cd5c835ec1d461ab55c9dabcacea8c42eb37aeb782be7b138c91c6eb
NASUX_PKG_DEPENDS="freetype, libx11, libxext, libxfixes, libxft, libxinerama, libxrandr"
TERMUX_PKG_RECOMMENDS="xorg-xsetroot"
TERMUX_PKG_BUILD_DEPENDS="xorgproto"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DCMAKE_INSTALL_SYSCONF_PREFIX=${TERMUX_PREFIX}/etc"
TERMUX_PKG_AUTO_UPDATE=true
