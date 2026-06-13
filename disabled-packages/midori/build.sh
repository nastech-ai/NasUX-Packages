# x11-packages
NASUX_PKG_HOMEPAGE=https://github.com/midori-browser/core
NASUX_PKG_DESCRIPTION="A lightweight, fast and free web browser using WebKit and GTK+"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=9.0
NASUX_PKG_SRCURL=https://github.com/midori-browser/core/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=913a7cba95ddcc3dc5f6b12d861e765d6fa990fe7d4efc3768d3a3567ea460db
NASUX_PKG_DEPENDS="gcr, gdk-pixbuf, glib, gtk3, json-glib, libarchive, libcairo, libpeas, libsoup, libsqlite, webkit2gtk"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"

termux_step_pre_configure() {
	nasux_setup_gir
}
