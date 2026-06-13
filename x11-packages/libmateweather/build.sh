NASUX_PKG_HOMEPAGE=https://libmateweather.mate-desktop.dev/
NASUX_PKG_DESCRIPTION="libmateweather is a libgnomeweather fork."
NASUX_PKG_LICENSE="LGPL-2.1, GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.2"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/mate-desktop/libmateweather/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=d81e65e2bddd22edffe42a2c8748321d6f7ad2da1bce2f9c275d88c567ec29eb
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libsoup3, libxml2, pango, zlib"

termux_step_pre_configure() {
	autoreconf -fiv
}
