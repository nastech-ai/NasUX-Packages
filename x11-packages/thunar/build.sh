NASUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/thunar/start
NASUX_PKG_DESCRIPTION="Modern file manager for XFCE environment"
NASUX_PKG_LICENSE="GPL-2.0, LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.20.8"
NASUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/thunar/${NASUX_PKG_VERSION%.*}/thunar-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=cc735954d948a88eba2e40016a94c598f876309b736686c9f4d0273a05870c69
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, desktop-file-utils, exo, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libexif, libice, libnotify, libsm, libx11, libxfce4ui, libxfce4util, pango, pcre2, shared-mime-info, xfce4-panel, xfconf, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, xfce4-dev-tools"
TERMUX_PKG_RECOMMENDS="gvfs, hicolor-icon-theme, thunar-archive-plugin, tumbler"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-debug
--disable-static
--enable-gtk-doc-html=no
--enable-introspection=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}
