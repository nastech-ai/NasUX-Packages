NASUX_PKG_HOMEPAGE=https://mate-desktop.org
NASUX_PKG_DESCRIPTION="MATE document viewer"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.6"
# https://pub.mate-desktop.org/releases/${NASUX_PKG_VERSION%.*}/atril-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SRCURL="https://github.com/mate-desktop/atril/releases/download/v${NASUX_PKG_VERSION}/atril-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=814427e0d5a2dc4e4b060b99ac3c80d8ef39052984d04df49d39135f424c624a
TERMUX_PKG_AUTO_UPDATE=true
# links with poppler-glib, not poppler
NASUX_PKG_DEPENDS="atk, djvulibre, gdk-pixbuf, glib, gtk3, harfbuzz, libarchive, libc++, libcairo, libice, libsecret, libsm, libspectre, libsoup3, libtiff, libxml2, mate-desktop, pango, poppler, texlive-bin, webkit2gtk-4.1, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dcaja=disabled
-Ddjvu=enabled
-Ddvi=enabled
-Depub=enabled
-Dintrospection=true
-Dpixbuf=enabled
"

termux_step_pre_configure() {
	# force meson
	rm configure

	# Workaround strict compiler error
	CFLAGS+=" -Wno-format-security -Wno-format-nonliteral"

	nasux_setup_glib_cross_pkg_config_wrapper
	nasux_setup_gir
}
