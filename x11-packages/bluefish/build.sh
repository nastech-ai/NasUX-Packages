NASUX_PKG_HOMEPAGE=https://bluefish.openoffice.nl/
NASUX_PKG_DESCRIPTION="A powerful editor targeted towards programmers and webdevelopers"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.1"
NASUX_PKG_SRCURL=https://www.bennewitz.com/bluefish/stable/source/bluefish-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=02a9e6bd56c3f4959110b85e36ec277368ccd514a0d612eb3e801d6d99f1e64b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="atk, enchant, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libxml2, pango, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-xml-catalog-update
--disable-update-databases
--disable-python
--disable-gettext
"

termux_step_pre_configure() {
	CFLAGS+=" -fPIC -Dgettext\(a\)=a"
}
