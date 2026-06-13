NASUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-battery-plugin/start
NASUX_PKG_DESCRIPTION="A battery monitor plugin for the Xfce panel"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.2.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-battery-plugin/${NASUX_PKG_VERSION%.*}/xfce4-battery-plugin-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=1dba8f470d2b12517e7b86d83cd2ebf13eb57ff1a01a4f2d2d156cf5194d97b6
NASUX_PKG_DEPENDS="glib, gtk3, nasux-api, libxfce4ui, libxfce4util, xfce4-panel"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	cp -f $TERMUX_PKG_BUILDER_DIR/libacpi.c $TERMUX_PKG_SRCDIR/panel-plugin/
}
