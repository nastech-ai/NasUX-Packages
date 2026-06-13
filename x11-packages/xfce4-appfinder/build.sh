NASUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/xfce4-appfinder/start
NASUX_PKG_DESCRIPTION="Application launcher and finder"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.20.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/xfce4-appfinder/${NASUX_PKG_VERSION%.*}/xfce4-appfinder-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=82ca82f77dc83e285db45438c2fe31df445148aa986ffebf2faabee4af9e7304
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="garcon, gdk-pixbuf, glib, gtk3, libcairo, libxfce4ui, libxfce4util, xfconf"
TERMUX_PKG_BUILD_DEPENDS="xfce4-dev-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-debug
"
