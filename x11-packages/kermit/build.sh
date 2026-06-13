NASUX_PKG_HOMEPAGE=https://github.com/orhun/kermit
NASUX_PKG_DESCRIPTION="A VTE-based simple and froggy terminal emulator"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/orhun/kermit/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=5ee5d7ed395b89a35678096ea7d3a7901714b9575f64813045fb3f6e7fc8c8a7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk3, libvte, pango"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin ./kermit
}
