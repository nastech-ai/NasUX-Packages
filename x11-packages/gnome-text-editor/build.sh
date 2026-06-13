NASUX_PKG_HOMEPAGE=https://apps.gnome.org/TextEditor/
NASUX_PKG_DESCRIPTION="GNOME Text Editor is a simple text editor focused on a pleasing default experience"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="50.1"
NASUX_PKG_SRCURL=https://download.gnome.org/sources/gnome-text-editor/${NASUX_PKG_VERSION%.*}/gnome-text-editor-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=f68036b09d378faa883bfe936e479c6ff37027c2ffed101daf912df70c51d0e6
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="editorconfig-core-c, glib, gtk4, gtksourceview5, libadwaita, libandroid-wordexp, libcairo, libspelling, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, valac"
TERMUX_PKG_RECOMMENDS="gnome-text-editor-help"

termux_step_pre_configure() {
	# Workaround strict compiler error
	sed -i "s/-Werror/-Wno-error/g" meson.build

	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	export LDFLAGS+=" -landroid-wordexp"
}
