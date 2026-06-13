NASUX_PKG_HOMEPAGE="https://celluloid-player.github.io/"
NASUX_PKG_DESCRIPTION="Simple GTK+ frontend for mpv"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.30"
NASUX_PKG_SRCURL="https://github.com/celluloid-player/celluloid/releases/download/v${NASUX_PKG_VERSION}/celluloid-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=7fef96431842c24e5ae78a9c42bc6523818a6c45213f23ceb146d037d6ec8559
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk4, libadwaita, libepoxy, mpv-x"

termux_step_pre_configure() {
	# Workaround strict compiler error
	CFLAGS+=" -Wno-format-nonliteral"

	nasux_setup_glib_cross_pkg_config_wrapper
}
