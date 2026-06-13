NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Image viewer for MATE"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.1"
NASUX_PKG_SRCURL="https://github.com/mate-desktop/eom/releases/download/v$NASUX_PKG_VERSION/eom-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=ccc169b8e240828b36965dfd84fa1478957dec2028ffeba553ae97e542e15120
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="dbus-glib, gobject-introspection, gettext, imagemagick, librsvg, littlecms, libexif, libjpeg-turbo, mate-desktop, libpeas"
TERMUX_PKG_RECOMMENDS="webp-pixbuf-loader"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, glib, mate-common"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--localstatedir=$TERMUX_PREFIX/var
-Dgdk-pixbuf-thumbnailer=false
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}
