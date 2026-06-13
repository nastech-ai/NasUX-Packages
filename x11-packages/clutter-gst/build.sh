NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Projects/Clutter
NASUX_PKG_DESCRIPTION="An integration library for using GStreamer with Clutter"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
_MAJOR_VERSION=3.0
NASUX_PKG_VERSION=${_MAJOR_VERSION}.27
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://download.gnome.org/sources/clutter-gst/${_MAJOR_VERSION}/clutter-gst-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=fe69bd6c659d24ab30da3f091eb91cd1970026d431179b0724f13791e8ad9f9d
NASUX_PKG_DEPENDS="atk, clutter, cogl, fontconfig, freetype, gdk-pixbuf, glib, gst-plugins-base, gstreamer, gtk3, harfbuzz, json-glib, libcairo, libx11, libxcomposite, libxdamage, libxext, libxfixes, libxi, libxrandr, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}

termux_step_post_configure() {
	touch clutter-gst/g-ir-{compiler,scanner}
}
