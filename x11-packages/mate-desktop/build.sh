NASUX_PKG_HOMEPAGE=https://mate-desktop.mate-desktop.dev/
NASUX_PKG_DESCRIPTION="mate-desktop contains the libmate-desktop library, the mate-about program as well as some desktop-wide documents."
NASUX_PKG_LICENSE="GPL-2.0, LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.2"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/mate-desktop/mate-desktop/releases/download/v$NASUX_PKG_VERSION/mate-desktop-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=32bb4b792014b391c1e1b8ae9c18a82b4d447650984b4cba7d28e95564964aa2
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, dconf, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libx11, libxrandr, pango, startup-notification, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, iso-codes"
TERMUX_PKG_DISABLE_GIR=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}
