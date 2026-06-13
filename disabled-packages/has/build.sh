NASUX_PKG_HOMEPAGE=https://github.com/kdabir/has
NASUX_PKG_DESCRIPTION="has checks presence of various command line tools and their versions on the path"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.5.2"
NASUX_PKG_SRCURL=$NASUX_PKG_HOMEPAGE/archive/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=965629d00b9c41fab2a9c37b551e3d860df986d86cdebd9b845178db8f1c998e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_DEPENDS="bash, ncurses-utils"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make() {
	return
}

termux_step_make_install() {
	local bin="$(basename $NASUX_PKG_HOMEPAGE)"
	install -D "$bin" -t "$TERMUX_PREFIX/bin"
}
