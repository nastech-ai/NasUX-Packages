NASUX_PKG_HOMEPAGE=https://github.com/zquestz/plank-reloaded
NASUX_PKG_DESCRIPTION="Fork of the original Plank project, providing a simple dock for X11 desktop environments"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.11.167"
NASUX_PKG_SRCURL="https://github.com/zquestz/plank-reloaded/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=7c24a46bff96eb86f1dfc820c843d78a14634077cbcbb3695b2cb1aad184c536
NASUX_PKG_DEPENDS="atk, bamf, libcairo, gdk-pixbuf, glib, gnome-menus, gtk3, libgee, libwnck, libx11, libxfixes, libxi, pango, libdbusmenu-gtk3"
TERMUX_PKG_BUILD_DEPENDS="gnome-common, intltool, valac"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Denable-apport=false
-Dproduction-release=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
