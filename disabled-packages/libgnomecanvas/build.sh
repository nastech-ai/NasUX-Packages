NASUX_PKG_HOMEPAGE=https://www.gnome.org/
NASUX_PKG_DESCRIPTION="The GNOME Canvas library"
NASUX_PKG_LICENSE="LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.30.3
TERMUX_PKG_REVISION=21
NASUX_PKG_SRCURL=https://download.gnome.org/sources/libgnomecanvas/2.30/libgnomecanvas-$NASUX_PKG_VERSION.tar.bz2
NASUX_PKG_SHA256=859b78e08489fce4d5c15c676fec1cd79782f115f516e8ad8bed6abcb8dedd40
NASUX_PKG_DEPENDS="atk, glib, gtk2, libart-lgpl, libglade, pango"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-glade"
TERMUX_PKG_RM_AFTER_INSTALL="lib/locale"

termux_step_post_configure() {
	sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool
}
