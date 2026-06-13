NASUX_PKG_HOMEPAGE=https://launchpad.net/bamf
NASUX_PKG_DESCRIPTION="Application matching framework"
NASUX_PKG_LICENSE="GPL-3.0, LGPL-2.1, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.5.6"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://launchpad.net/bamf/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/+download/bamf-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=4fcd00f23c542f3b79f35e10e322b67eacb399cac83f48db261cd8e8ea709478
NASUX_PKG_DEPENDS="bash, gdk-pixbuf, glib, gtk3, libgtop, libwnck, libx11, startup-notification"
TERMUX_PKG_BUILD_DEPENDS="glib, gnome-common, gobject-introspection, valac, python-lxml, autoconf, automake, libtool, gtk-doc"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--libexecdir=$TERMUX_PREFIX/lib
--disable-gtk-doc
--with-systemduserunitdir=no
"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	nasux_setup_gir
	autoreconf -fi
}
