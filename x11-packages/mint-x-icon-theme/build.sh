NASUX_PKG_HOMEPAGE=https://github.com/linuxmint/mint-x-icons
NASUX_PKG_DESCRIPTION="The Mint-X icon theme for cinnamon"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.7.6"
NASUX_PKG_SRCURL=https://github.com/linuxmint/mint-x-icons/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a072405b0d15951416af7ab671dde79dc96d09e98ab6430dd07cca2e329f1a18
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_DEPENDS="hicolor-icon-theme, adwaita-icon-theme, adwaita-icon-theme-legacy, gtk-update-icon-cache"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	cp -r $TERMUX_PKG_SRCDIR/usr/* $TERMUX_PREFIX/
}
