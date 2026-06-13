NASUX_PKG_HOMEPAGE=https://github.com/linuxmint/cinnamon-desktop
NASUX_PKG_DESCRIPTION="The cinnamon-desktop library"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.2"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/linuxmint/cinnamon-desktop/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=4ed0d52a072551c6d536f1be68d4fcdb4166454fc9e48567ab2550282086b0f4
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+(?!-)"
NASUX_PKG_DEPENDS="glib, gtk3, libcairo, libx11, libxext, xkeyboard-config, libxkbfile, gobject-introspection, libxrandr, iso-codes, pulseaudio, gdk-pixbuf, gigolo, cinnamon-menus"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dsystemd=disabled
"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
	nasux_setup_meson
	nasux_setup_gir

	export TERMUX_MESON_ENABLE_SOVERSION=1
}
