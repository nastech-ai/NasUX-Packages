NASUX_PKG_HOMEPAGE=https://gitlab.xfce.org/apps/mousepad
NASUX_PKG_DESCRIPTION="A simple text editor for the Xfce desktop environment"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.7.0"
NASUX_PKG_SRCURL=https://archive.xfce.org/src/apps/mousepad/${NASUX_PKG_VERSION%.*}/mousepad-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=e86c59feb08126d4cace368432c16b2dee8e519aaca8a9d2b409ae1cdd200802
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gspell, gtk3, gtksourceview4, harfbuzz, libcairo, libxfce4ui, libxfce4util, pango, xfconf, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgtksourceview4=enabled
"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
