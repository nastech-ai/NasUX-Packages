NASUX_PKG_HOMEPAGE=https://github.com/vasi/squashfuse
NASUX_PKG_DESCRIPTION="FUSE filesystem to mount squashfs archives"
NASUX_PKG_LICENSE="BSD 2-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.6.2"
NASUX_PKG_SRCURL=https://github.com/vasi/squashfuse/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=ae194df463ac5a9cbb25f94021d44bfb14dc21a0fc577e16348eca2fdc77c83b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libfuse2, liblz4, liblzma, liblzo, zlib, zstd"

termux_step_pre_configure () {
	./autogen.sh
}
