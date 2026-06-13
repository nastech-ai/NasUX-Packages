NASUX_PKG_HOMEPAGE=https://gnome.pages.gitlab.gnome.org/libadwaita/
NASUX_PKG_DESCRIPTION="Building blocks for modern adaptive GNOME applications"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.9.1"
NASUX_PKG_SRCURL=https://gitlab.gnome.org/GNOME/libadwaita/-/archive/${NASUX_PKG_VERSION}/libadwaita-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=b475a571d5a25213a0279a9fba22985741a1085a16ce0c9707cc1b99bdd825b2
NASUX_PKG_DEPENDS="appstream, fribidi, glib, graphene, gtk4, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, valac"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE=latest-regex
# libadwaita sometimes releases tags for older versions with newer tag dates.
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=enabled
-Dvapi=true
-Dtests=false
-Dexamples=true
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/libadwaita-1.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
