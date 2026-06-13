NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Process viewer and system resource monitor for MATE"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.1"
NASUX_PKG_SRCURL="https://github.com/mate-desktop/mate-system-monitor/releases/download/v$NASUX_PKG_VERSION/mate-system-monitor-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=42d663d6b90fb5361ebc13f6547983d6f1e2ac75dc2ae4f1cac6ea6329965a25
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gettext, glib, gtkmm3, libgtop, libsm, librsvg"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, mate-common"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-systemd
"
