NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/galculator/
NASUX_PKG_DESCRIPTION="GTK+ based scientific calculator"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.1.4
TERMUX_PKG_REVISION=25
NASUX_PKG_SRCURL="https://github.com/galculator/galculator/archive/refs/tags/v$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=dcbdb48ddf8a3f68b9aa5902f880f174fd269de2b7410988148d05871012e142
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, libcairo, pango"

termux_step_pre_configure() {
	autoreconf -fi
	CFLAGS+=" -fcommon"
}
