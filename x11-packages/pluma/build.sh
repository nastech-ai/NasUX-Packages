NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Powerful text editor for MATE"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.1"
NASUX_PKG_SRCURL="https://github.com/mate-desktop/pluma/releases/download/v$NASUX_PKG_VERSION/pluma-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=27137ff1bb1c53a90d2308b8a6b203e5d07f13a644a0d950f3ead7bb9cf1e241
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="iso-codes, mate-desktop, zenity, gtksourceview4, glib, gobject-introspection, libpeas, gettext, enchant, libsm"
TERMUX_PKG_SUGGESTS="pygobject"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, mate-common"
# the python plugins do not work because of a libpeas-related dependency conflict
# if upstream fixes that in the future, enable python in libpeas to resolve this
# (enabling python in libpeas will not resolve this
# until upstream pluma and/or libpeas and/or python-gobject fixes this problem)
# (setting --disable-python does not seem to hide the broken python plugins from the user,
# so there is no point to disabling python in pluma)
# More information:
# https://gitlab.archlinux.org/archlinux/packaging/packages/libpeas/-/commit/75310ec6c665e4104044b996e26b34c4ab169b2d
# https://gitlab.archlinux.org/archlinux/packaging/packages/pygobject/-/issues/3
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-python
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	autoreconf -fi
}
