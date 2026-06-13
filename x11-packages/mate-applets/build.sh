NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Applets for use with the MATE panel"
NASUX_PKG_LICENSE="GPL-2.0-or-later, LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/mate-desktop/mate-applets/releases/download/v$NASUX_PKG_VERSION/mate-applets-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=a5967141527dc5b172d322a6003c23aeec253160f650bb36430a06ddaefa7e2e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gtksourceview4, libgtop, libnotify, mate-panel, libnl, upower"
TERMUX_PKG_SUGGESTS="fortune, gucharmap"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, mate-common, glib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--sysconfdir=$TERMUX_PREFIX/etc
--with-dbus-sys=$TERMUX_PREFIX/share/dbus-1/system.d
--disable-polkit
"
