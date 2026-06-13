NASUX_PKG_HOMEPAGE=https://github.com/linuxmint/mint-y-icons
NASUX_PKG_DESCRIPTION="The Mint-Y icon theme for cinnamon"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.9.2"
NASUX_PKG_SRCURL=https://github.com/linuxmint/mint-y-icons/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=555a00d3df20f060b0d2b9b718f48b593b123a7795ba94c13dcd10d41e5f917b
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_DEPENDS="hicolor-icon-theme, adwaita-icon-theme, adwaita-icon-theme-legacy, mint-x-icon-theme, gtk-update-icon-cache"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	cp -r $TERMUX_PKG_SRCDIR/usr/* $TERMUX_PREFIX/
}
