NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/goffice/
NASUX_PKG_DESCRIPTION="A GLib/GTK+ set of document-centric objects and utilities"
NASUX_PKG_LICENSE="GPL-2.0, GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.10.61"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/goffice/${NASUX_PKG_VERSION%.*}/goffice-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=558597fd9ca59b93ff562750218d1e7ea8ec3c8d0ed6a5cc096aa715ef909a15
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libcairo, libgsf, librsvg, libspectre, libxml2, libxslt, pango, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
--with-lasem=no
--without-long-double
"

termux_step_pre_configure() {
	nasux_setup_gir

	CPPFLAGS+=" -D__USE_GNU"
}

termux_step_post_configure() {
	touch ./goffice/g-ir-scanner
}
