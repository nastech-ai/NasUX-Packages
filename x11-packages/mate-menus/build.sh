NASUX_PKG_HOMEPAGE=https://mate-desktop.org
NASUX_PKG_DESCRIPTION="mate-menus contains the libmate-menu library, the layout configuration"
NASUX_PKG_LICENSE="GPL-2.0, LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.1"
NASUX_PKG_SRCURL=https://github.com/mate-desktop/mate-menus/releases/download/v$NASUX_PKG_VERSION/mate-menus-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=d6a61d3bfbf58176fb52049f115d4e3a0d108fe5f1ef87438fafd86384e603d1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
"

termux_step_pre_configure() {
	nasux_setup_gir
}
