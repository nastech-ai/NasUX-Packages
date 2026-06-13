NASUX_PKG_HOMEPAGE=https://glade.gnome.org/
NASUX_PKG_DESCRIPTION="User interface designer for Gtk+ and GNOME"
NASUX_PKG_LICENSE="LGPL-2.0, GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.40.0"
TERMUX_PKG_REVISION=4
NASUX_PKG_SRCURL=https://download.gnome.org/sources/glade/${NASUX_PKG_VERSION%.*}/glade-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=31c9adaea849972ab9517b564e19ac19977ca97758b109edc3167008f53e3d9c
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libcairo, libxml2, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, xsltproc"
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgjs=disabled
-Dpython=disabled
-Dwebkit2gtk=disabled
-Dintrospection=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
