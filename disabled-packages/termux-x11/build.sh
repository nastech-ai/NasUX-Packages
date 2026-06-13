NASUX_PKG_HOMEPAGE=https://github.com/nasux/x11-packages
NASUX_PKG_DESCRIPTION="Utility to start X11 NasUX add-on"
NASUX_PKG_LICENSE="GPL-3.0" # same as NasUX:X11 add-on app
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0
TERMUX_PKG_REVISION=4
TERMUX_PKG_SKIP_SRC_EXTRACT=true
NASUX_PKG_DEPENDS="libwayland"

termux_step_make_install() {
	$CC $CFLAGS $CPPFLAGS -DTERMUX_PREFIX=\"$TERMUX_PREFIX\" \
		$TERMUX_PKG_BUILDER_DIR/nasux-x11.c -o $TERMUX_PREFIX/bin/nasux-x11 \
		$LDFLAGS -lwayland-client
}
