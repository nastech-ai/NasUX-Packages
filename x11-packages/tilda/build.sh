NASUX_PKG_HOMEPAGE=https://github.com/lanoxx/tilda
NASUX_PKG_DESCRIPTION="A Gtk based drop down terminal for Linux and Unix."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.0.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/lanoxx/tilda/archive/refs/tags/tilda-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=ff9364244c58507cd4073ac22e580a4cded048d416c682496c1b1788ee8a30df
TERMUX_PKG_AUTO_UPDATE=false
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libconfuse, libvte, libx11, pango"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	NOCONFIGURE=1 ./autogen.sh
}
