NASUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/garcon/start
NASUX_PKG_DESCRIPTION="Implementation of the freedesktop.org menu specification"
NASUX_PKG_LICENSE="LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.20.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/garcon/${NASUX_PKG_VERSION%.*}/garcon-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=7fb8517c12309ca4ddf8b42c34bc0c315e38ea077b5442bfcc4509415feada8f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libxfce4ui, libxfce4util, pango, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, xfce4-dev-tools"
TERMUX_PKG_CONFLICTS="libgarcon"
TERMUX_PKG_REPLACES="libgarcon"
TERMUX_PKG_PROVIDES="libgarcon"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-debug
--enable-introspection=yes
--enable-gtk-doc-html=no
"

termux_step_pre_configure() {
	nasux_setup_gir
}
