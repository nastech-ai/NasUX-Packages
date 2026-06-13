NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/gnome-keyring
NASUX_PKG_DESCRIPTION="a collection of components in GNOME that store secrets, passwords, keys, certificates and make them available to applications"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="50.0"
NASUX_PKG_SRCURL=https://gitlab.gnome.org/GNOME/gnome-keyring/-/archive/$NASUX_PKG_VERSION/gnome-keyring-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=22a14fc7fc49d50aa5a3edb8cdb3cad341a09043cee7991da1decc923cdb9de6
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gcr"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dsystemd=disabled
-Dpam=false
"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
