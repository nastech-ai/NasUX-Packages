NASUX_PKG_HOMEPAGE=https://marco.mate-desktop.dev/
NASUX_PKG_DESCRIPTION="MATE default window manager"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.29.1"
NASUX_PKG_SRCURL=https://github.com/mate-desktop/marco/releases/download/v$NASUX_PKG_VERSION/marco-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=94066fff18837179a08b3400960bb80602d912363c134743d3c24f802ab940ed
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, libcairo, libcanberra, libice, libsm, libx11, libxcomposite, libxcursor, libxdamage, libxext, libxfixes, libxinerama, libxpresent, libxrandr, libxrender, libxres, mate-desktop, pango, startup-notification, zenity"

termux_step_pre_configure() {
	# force meson
	rm configure

	# Workaround: make compiler warning non-fatal
	sed -i "s/-Werror=/-Wno-error=/g" meson.build

	nasux_setup_glib_cross_pkg_config_wrapper
}
