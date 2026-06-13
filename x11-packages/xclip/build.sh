NASUX_PKG_HOMEPAGE=https://github.com/astrand/xclip
NASUX_PKG_DESCRIPTION="Command line interface to the X11 clipboard"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@Yisus7u7"
NASUX_PKG_VERSION=0.13
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/astrand/xclip/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=ca5b8804e3c910a66423a882d79bf3c9450b875ac8528791fb60ec9de667f758
NASUX_PKG_DEPENDS="libx11, libxmu"
TERMUX_PKG_BUILD_DEPENDS="libxt"
NASUX_PKG_BUILD_IN_SRC=true
termux_step_pre_configure(){
	CFLAGS+=" $CPPFLAGS"
	./bootstrap
}
