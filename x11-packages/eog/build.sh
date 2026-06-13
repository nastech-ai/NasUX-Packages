NASUX_PKG_HOMEPAGE=https://wiki.gnome.org/Apps/EyeOfGnome
NASUX_PKG_DESCRIPTION="Eye of GNOME, an image viewing and cataloging program"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="50.1"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/eog/${NASUX_PKG_VERSION%.*}/eog-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=6f5ee6d756548b88e25a987e0d06dabc3c6c32598fb7df49fb08945c1fe94a55
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gnome-desktop3, gobject-introspection, gsettings-desktop-schemas, gtk3, libcairo, libexif, libhandy, libjpeg-turbo, libpeas, librsvg, libx11, littlecms, shared-mime-info, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_RECOMMENDS="eog-help"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dxmp=false
-Dintrospection=true
-Dlibportal=false
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
