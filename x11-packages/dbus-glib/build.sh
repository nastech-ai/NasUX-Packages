NASUX_PKG_HOMEPAGE=https://dbus.freedesktop.org
NASUX_PKG_DESCRIPTION="GLib bindings for DBUS"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.114"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=c09c5c085b2a0e391b8ee7d783a1d63fe444e96717cc1814d61b5e8fc2827a7c
NASUX_PKG_DEPENDS="dbus, glib, libexpat"
TERMUX_PKG_BREAKS="dbus-glib-dev"
TERMUX_PKG_REPLACES="dbus-glib-dev"
TERMUX_PKG_HOSTBUILD=true

termux_step_host_build() {
	(cd $TERMUX_PKG_SRCDIR && autoconf -i)
	$TERMUX_PKG_SRCDIR/configure
	make -j $TERMUX_PKG_MAKE_PROCESSES
}

termux_step_pre_configure() {
	export GLIB_GENMARSHAL=glib-genmarshal
	autoconf -i
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" --with-dbus-binding-tool=$TERMUX_PKG_HOSTBUILD_DIR/dbus/dbus-binding-tool"
}
