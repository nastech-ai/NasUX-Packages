NASUX_PKG_HOMEPAGE=https://github.com/linuxmint/muffin
NASUX_PKG_DESCRIPTION="The window management library for the Cinnamon desktop"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.3"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/linuxmint/muffin/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=af1aa8e68699895a841415c007c7f3f48efc06f07c50d219d30f8131a981248e
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+(?!-)"
NASUX_PKG_DEPENDS="atk, fribidi, gdk-pixbuf, glib, gnome-desktop4, gobject-introspection, graphene, gsettings-desktop-schemas, gtk4, harfbuzz, libandroid-shmem, libcairo, libcanberra, libcolord, libdisplay-info, libdrm, libei, libice, libpixman, libsm, libwayland, libx11, libxau, libxcb, libxcomposite, libxcursor, libxdamage, libxext, libxfixes, libxi, libxinerama, libxkbcommon, libxkbfile, libxrandr, libxtst, littlecms, opengl, pango, pipewire, startup-notification, xkeyboard-config, xwayland, upower, cinnamon-desktop, json-glib, cogl, clutter, clutter-gtk"
TERMUX_PKG_BUILD_DEPENDS="glib-cross, libwayland-protocols"
NASUX_PKG_VERSIONED_GIR=false

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dudev=false
-Dnative_backend=false
-Dremote_desktop=false
-Dlibwacom=false
-Dintrospection=true
-Dtests=false
-Dcore_tests=false
-Dinstalled_tests=false
-Dprofiler=false
-Dxwayland_path=$TERMUX_PREFIX/bin/Xwayland
"

termux_step_pre_configure() {
	nasux_setup_gir
	nasux_setup_glib_cross_pkg_config_wrapper

	export TERMUX_MESON_ENABLE_SOVERSION=1
	LDFLAGS+=" -landroid-shmem"
}
