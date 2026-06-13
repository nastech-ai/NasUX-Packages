NASUX_PKG_HOMEPAGE=https://github.com/uoaerg/wavemon
NASUX_PKG_DESCRIPTION="Ncurses-based monitoring application for wireless network devices"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.7"
NASUX_PKG_SRCURL=https://github.com/uoaerg/wavemon/archive/refs/tags/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=768d7c580fcc592efcacac924dcfd2ebe131608f5c8ac67d36e35731e1ac683a
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libcap, libnl, libnl-cli, ncurses"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_lib_pthread_pthread_create=yes"

termux_step_pre_configure() {
	CPPFLAGS+=" -I$TERMUX_PREFIX/include/libnl3"
}
