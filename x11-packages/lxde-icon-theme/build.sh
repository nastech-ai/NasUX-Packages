NASUX_PKG_HOMEPAGE=https://github.com/lxde/lxde-icon-theme
NASUX_PKG_DESCRIPTION="LXDE default icon theme based on nuoveXT2"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.5.2"
NASUX_PKG_SRCURL=https://github.com/lxde/lxde-icon-theme/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=5b71da247ba25ddcd991a3a184ca5ac92f40b7676766e1e59437067a20f7ecf7
NASUX_PKG_DEPENDS="gtk-update-icon-cache"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"

termux_step_pre_configure() {
	autoreconf -fiv
}
