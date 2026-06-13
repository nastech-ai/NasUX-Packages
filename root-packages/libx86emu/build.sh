NASUX_PKG_HOMEPAGE=https://github.com/wfeldt/libx86emu
NASUX_PKG_DESCRIPTION="x86 emulation library"
NASUX_PKG_LICENSE="HPND"
NASUX_PKG_LICENSE_FILE="LICENSE, LICENSE_INFO"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=3.7
NASUX_PKG_SRCURL=https://github.com/wfeldt/libx86emu/archive/refs/tags/$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=03754aede79530baa0e862e1aad5527e9c1bd3371736b1ab5a2bc769e4a3d680
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_BREAKS="libx86emu-dev"
TERMUX_PKG_REPLACES="libx86emu-dev"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	echo 'touch changelog' > git2log
}
