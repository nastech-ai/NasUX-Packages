NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Apps/FileRoller
NASUX_PKG_DESCRIPTION="File Roller is an archive manager for the GNOME desktop environment."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="44.6"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/file-roller/${NASUX_PKG_VERSION%.*}/file-roller-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=9e873b5005bc425799a8cd4b237e1fff430ec8d6b34a992c6033f1dfc6e3764e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk4, json-glib, libadwaita, libarchive, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross"
TERMUX_PKG_RECOMMENDS="arj, brotli, bsdtar, bzip2, cpio, file-roller-help, gzip, lz4, lzip, lzop, p7zip, tar, unrar, unzip, xz-utils, zip, zstd"
TERMUX_PKG_DISABLE_GIR=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Duse_native_appchooser=false
-Dcpio=$TERMUX_PREFIX/bin/cpio
-Dintrospection=enabled
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
