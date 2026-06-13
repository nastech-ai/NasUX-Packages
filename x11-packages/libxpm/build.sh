NASUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
NASUX_PKG_DESCRIPTION="X11 pixmap library"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.5.19"
NASUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXpm-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=ad3576d689221a39dc728f0e0dc02ca7bb6a0d724c9a77fd1bfa1e9af83be900
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libx11, libxext, libxt"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_path_XPM_PATH_COMPRESS=$TERMUX_PREFIX/bin/compress
ac_cv_path_XPM_PATH_UNCOMPRESS=$TERMUX_PREFIX/bin/uncompress
ac_cv_path_XPM_PATH_GZIP=$TERMUX_PREFIX/bin/gzip
"
