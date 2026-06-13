NASUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/libxfce4util/start
NASUX_PKG_DESCRIPTION="Basic utility non-GUI functions for XFCE"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.20.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/libxfce4util/${NASUX_PKG_VERSION%.*}/libxfce4util-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=84bfc4daab9e466193540c3665eee42b2cf4d24e3f38fc3e8d1e0a2bebe3b8f1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, valac, xfce4-dev-tools"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-debug
--enable-introspection=yes
--enable-vala=yes
--enable-gtk-doc-html=no
"

termux_step_pre_configure() {
	nasux_setup_gir
}
