NASUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-calculator-plugin/start
NASUX_PKG_DESCRIPTION="Simple command line based calculator for the Xfce panel"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.8.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-calculator-plugin/${NASUX_PKG_VERSION%.*}/xfce4-calculator-plugin-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=aaf3d7e9654ef6cf8ec442ad9e4316c481f9a6087a8e8949261140f5ae136aeb
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk3, libxfce4ui, libxfce4util, xfce4-panel"
TERMUX_PKG_BUILD_DEPENDS="xfce4-dev-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dtests=false
"
