NASUX_PKG_HOMEPAGE=https://dunst-project.org/
NASUX_PKG_DESCRIPTION="Lightweight and customizable notification daemon"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.13.2"
NASUX_PKG_SRCURL="https://github.com/dunst-project/dunst/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=c68645cecef4a45840cd67c19a18a3a21ecae6b331e9864c2b745c31aee5fc85
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libandroid-wordexp, dbus, gdk-pixbuf, glib, harfbuzz, libcairo, libnotify, libx11, libxext, libxinerama, libxrandr, libxss, pango"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	# TODO: Meson support is still considered experimental and may still have issues.
	mv meson.build{,.orig}

	LDFLAGS+=" -landroid-wordexp"
}
