NASUX_PKG_HOMEPAGE=https://github.com/erofs/erofs-utils
NASUX_PKG_DESCRIPTION="A github erofs-utils fork for community development"
NASUX_PKG_LICENSE="GPL-2.0, Apache-2.0"
NASUX_PKG_LICENSE_FILE="COPYING, LICENSES/GPL-2.0, LICENSES/Apache-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.9.1"
NASUX_PKG_SRCURL=https://github.com/erofs/erofs-utils/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a9ef5ab67c4b8d2d3e9ed71f39cd008bda653142a720d8a395a36f1110d0c432
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="liblz4, liblzma, libfuse2, libuuid, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--prefix=$TERMUX_PREFIX --enable-lzma --enable-fuse"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	./autogen.sh
}
