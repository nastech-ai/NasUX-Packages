NASUX_PKG_HOMEPAGE=http://www.lxde.org/
NASUX_PKG_DESCRIPTION="VTE-based terminal emulator"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.4.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/lxde/lxterminal/archive/refs/tags/$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=d5da0646e20ad2be44ef69a9d620be5f1ec43b156dc585ebe203dd7b05c31d88
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="libvte, gtk3"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-gtk3"

termux_step_pre_configure() {
	./autogen.sh
}
