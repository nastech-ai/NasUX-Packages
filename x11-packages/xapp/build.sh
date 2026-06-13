NASUX_PKG_HOMEPAGE=https://github.com/linuxmint/xapp
NASUX_PKG_DESCRIPTION="Cross-desktop libraries and common resources "
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.2.2"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/linuxmint/xapp/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=d0ea664053e6f35cc556e060b161905004f03d0695473772d2fb8a37cf445591
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_DEPENDS="glib, dbus, gigolo, gtk3, gdk-pixbuf, libcairo, libx11, libgnomekbd, pygobject, gobject-introspection, libdbusmenu, libdbusmenu-gtk3, xapp-symbolic-icons"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddocs=false
-Dpy-overrides-dir=$TERMUX_PYTHON_HOME/site-packages/gi/overrides
-Dintrospection=true
-Dvapi=true
-Dxfce=false
-Dmate=false
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	export TERMUX_MESON_ENABLE_SOVERSION=1
}
