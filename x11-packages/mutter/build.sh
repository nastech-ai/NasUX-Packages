NASUX_PKG_HOMEPAGE=https://mutter.gnome.org/
NASUX_PKG_DESCRIPTION="A Wayland display server and X11 window manager and compositor library"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="48.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.gnome.org/sources/mutter/${NASUX_PKG_VERSION%%.*}/mutter-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=e9970b3d81c76aed1e91f3436a82e7b14c5e32cf55949b1c9a18d0f157bacafc
NASUX_PKG_DEPENDS="atk, fribidi, gdk-pixbuf, glib, gnome-desktop4, gobject-introspection, graphene, gsettings-desktop-schemas, gtk4, harfbuzz, libandroid-shmem, libcairo, libcanberra, libcolord, libdisplay-info, libdrm, libei, libice, libpixman, libsm, libwayland, libx11, libxau, libxcb, libxcomposite, libxcursor, libxdamage, libxext, libxfixes, libxi, libxinerama, libxkbcommon, libxkbfile, libxrandr, libxtst, littlecms, opengl, pango, pipewire, startup-notification, xkeyboard-config, xwayland"
TERMUX_PKG_BUILD_DEPENDS="glib-cross, libwayland-protocols"
NASUX_PKG_VERSIONED_GIR=false

# TODO: Add libwacom
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dlogind=false
-Dudev=false
-Dnative_backend=false
-Dlibwacom=false
-Dintrospection=true
-Dtests=disabled
-Dinstalled_tests=false
-Dbash_completion=false
-Dprofiler=false
-Dxwayland_path=$TERMUX_PREFIX/bin/Xwayland
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	export TERMUX_MESON_ENABLE_SOVERSION=1
	LDFLAGS+=" -landroid-shmem"
}
