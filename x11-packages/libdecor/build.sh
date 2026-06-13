NASUX_PKG_HOMEPAGE=https://gitlab.freedesktop.org/libdecor/libdecor
NASUX_PKG_DESCRIPTION="Client-side decorations library for Wayland clients"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.2.5"
NASUX_PKG_SRCURL=https://gitlab.freedesktop.org/libdecor/libdecor/-/archive/${NASUX_PKG_VERSION}/libdecor-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=39c109a9a7eae943ba34d18a282c447d5729f9c486c8bc05ea305e4acd341522
# gtk3 dependency makes libdecor a "x11" package
NASUX_PKG_DEPENDS="dbus, glib, gtk3, libcairo, libwayland, libxkbcommon, pango"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddemo=false
-Ddbus=enabled
-Dinstall_demo=false
-Dgtk=enabled
"
