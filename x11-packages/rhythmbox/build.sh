NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/rhythmbox
NASUX_PKG_DESCRIPTION="Music playback and management application"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.4.9"
NASUX_PKG_SRCURL="https://download.gnome.org/sources/rhythmbox/${NASUX_PKG_VERSION%.*}/rhythmbox-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=e42291a18df7a21ffe6b352bf73f05d7e298bb4e05bce5967f98ee8cee4408f1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="at-spi2-core, gdk-pixbuf, glib, gobject-introspection, gst-plugins-base, gstreamer, gtk3, json-glib, libcairo, libnotify, libpeas, libsoup3, libtdb, libx11, libxml2, pango, pygobject, python, totem-pl-parser"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
TERMUX_PKG_RECOMMENDS="rhythmbox-help"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dapidoc=false
-Dhelp=true
-Dplugins_python=enabled
-Dplugins_vala=enabled
-Dtests=disabled
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
