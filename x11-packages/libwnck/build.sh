NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/libwnck
NASUX_PKG_DESCRIPTION="Window Navigator Construction Kit"
NASUX_PKG_LICENSE="LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="43.3"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/libwnck/${NASUX_PKG_VERSION%.*}/libwnck-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=6af8ac41a8f067ade1d3caaed254a83423b5f61ad3f7a460fcacbac2e192bdf7
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, libcairo, libx11, libxrender, pango, startup-notification"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_RM_AFTER_INSTALL="lib/locale"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=enabled
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
