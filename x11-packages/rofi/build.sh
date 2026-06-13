NASUX_PKG_HOMEPAGE=https://davatorium.github.io/rofi/
NASUX_PKG_DESCRIPTION="A window switcher, application launcher and dmenu replacement"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.0.0"
NASUX_PKG_SRCURL="https://github.com/davatorium/rofi/releases/download/$NASUX_PKG_VERSION/rofi-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=6a55ee27f189ef9a1435cea329b146805b5dc830d8abc7a08c50a971521a8d8d
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, libandroid-glob, libcairo, libwayland, libxcb, libxkbcommon, pango, startup-notification, xcb-util, xcb-util-cursor, xcb-util-keysyms, xcb-util-wm"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper

	# ld.lld: error: undefined symbol: glob, globfree
	LDFLAGS+=" -landroid-glob"

	sed \
	"s|@NASUX_PKG_VERSION@|${NASUX_PKG_VERSION}|g" \
	"$TERMUX_PKG_BUILDER_DIR"/nkutils-git-version.h.in > "$TERMUX_PKG_SRCDIR"/subprojects/libnkutils/core/include/nkutils-git-version.h
}
