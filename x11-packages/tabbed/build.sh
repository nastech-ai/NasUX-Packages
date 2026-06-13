NASUX_PKG_HOMEPAGE=https://tools.suckless.org/tabbed/
NASUX_PKG_DESCRIPTION="Generic tabbed interface"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9"
NASUX_PKG_SRCURL=https://dl.suckless.org/tools/tabbed-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=0acf87457b7419e66fbfa3a9cec95ffb46d254c6b88b5e4bb7cc18c3a92008a8
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libx11, libxft"
TERMUX_PKG_BUILD_DEPENDS="xorgproto"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_post_get_source() {
	if [ ! -e ./xembed.1 ]; then
		cp $TERMUX_PKG_BUILDER_DIR/xembed.1 ./
	fi
}
