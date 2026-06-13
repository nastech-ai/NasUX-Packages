NASUX_PKG_HOMEPAGE=https://libmatekbd.mate-desktop.dev/
NASUX_PKG_DESCRIPTION="libmatekbd is a fork of libgnomekbd"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/mate-desktop/libmatekbd/releases/download/v$NASUX_PKG_VERSION/libmatekbd-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=5d2e58483c2b23d33503d24c88f8b90a28cc0189d7e4001b3e273a604f6fe80e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libx11, libxklavier, pango, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_DISABLE_GIR=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
LIBXKLAVIER=${TERMUX_PREFIX}/lib/libxklavier.so
--enable-introspection=yes
"

termux_step_pre_configure() {
	nasux_setup_gir

	export GLIB_COMPILE_RESOURCES="glib-compile-resources"
	export GLIB_COMPILE_SCHEMAS="glib-compile-schemas"
}
