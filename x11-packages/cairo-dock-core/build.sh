NASUX_PKG_HOMEPAGE=https://github.com/Cairo-Dock/cairo-dock-core
NASUX_PKG_DESCRIPTION="Cairo-Dock is a simple and avanzed dock for linux desktop."
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.6.2"
NASUX_PKG_SRCURL=https://github.com/Cairo-Dock/cairo-dock-core/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=71e351d904d86f04d489e5b58c510fe2276ab129aee9ba98308508abf2dcfa87
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="dbus-glib, gdk-pixbuf, glib, glu, gtk3, libcairo, libcurl, librsvg, libx11, libxcomposite, libxinerama, libxml2, libxrandr, libxrender, libxtst, opengl, pango, which"
TERMUX_PKG_BUILD_DEPENDS="valac"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DFORCE_NOT_LIB64=yes
-DCMAKE_INSTALL_LIBDIR=lib
"
