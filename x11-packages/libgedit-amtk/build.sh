NASUX_PKG_HOMEPAGE=https://gitlab.gnome.org/World/gedit/libgedit-amtk
NASUX_PKG_DESCRIPTION="Actions, Menus and Toolbars Kit for GTK applications"
NASUX_PKG_LICENSE="LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.10.0"
NASUX_PKG_SRCURL=https://gitlab.gnome.org/World/gedit/libgedit-amtk/-/archive/${NASUX_PKG_VERSION}/libgedit-amtk-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=6c884bf4c9716110930c17f0103d01e1fa2fa5c5b705803b0d4ddf72ba6094f4
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk3"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgobject_introspection=true
-Dgtk_doc=false
-Dtests=false
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	export TERMUX_MESON_ENABLE_SOVERSION=1
}

termux_step_post_massage() {
	# Do not forget to bump revision of reverse dependencies and rebuild them
	# after SOVERSION is changed.
	local _GUARD_FILE="lib/libgedit-amtk-5.so.0"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
