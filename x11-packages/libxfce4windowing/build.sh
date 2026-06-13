NASUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/libxfce4windowing/start
NASUX_PKG_DESCRIPTION="Windowing concept abstraction library for X11 and Wayland"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.20.6"
NASUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/libxfce4windowing/${NASUX_PKG_VERSION%.*}/libxfce4windowing-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=2d06b6a567c965afbca1a51419fc728fd83bd0460e30ab62c34564d5e0aac9e3
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libdisplay-info, libwayland, libwnck, libx11, libxrandr, pango, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, libwayland-protocols, libwayland-cross-scanner, xfce4-dev-tools"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-debug
--disable-static
--enable-introspection=yes
--enable-gtk-doc-html=no
--enable-wayland
--enable-x11
XDT_GEN_VISIBILITY=${TERMUX_PREFIX}/bin/xdt-gen-visibility
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_wayland_cross_pkg_config_wrapper
}
