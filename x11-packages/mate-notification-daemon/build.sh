NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Notification daemon for MATE"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.5"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/mate-desktop/mate-notification-daemon/releases/download/v$NASUX_PKG_VERSION/mate-notification-daemon-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=d3090ea9d1a859e2def9c4d2319f9ac96a79b7a33598a97784db40be2508f668
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libcanberra, libwnck, libnotify, gettext, mate-panel"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, glib, mate-common, python"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--sysconfdir=$TERMUX_PREFIX/etc
"
