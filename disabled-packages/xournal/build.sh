NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/xournal/
NASUX_PKG_DESCRIPTION="Notetaking and sketching application"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.4.8.2016
TERMUX_PKG_REVISION=38
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/xournal/xournal-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=b25898dbd7a149507f37a16769202d69fbebd4a000d766923bbd32c5c7462826
NASUX_PKG_DEPENDS="atk, desktop-file-utils, fontconfig, freetype, glib, gtk2, hicolor-icon-theme, libandroid-shmem, libart-lgpl, libcairo, libgnomecanvas, pango, poppler, libx11, shared-mime-info, zlib"
TERMUX_PKG_RM_AFTER_INSTALL="lib/locale"

termux_step_pre_configure() {
	CPPFLAGS+=" -D__USE_GNU"
	CXXFLAGS+=" -std=c++17"
	export LIBS="-Wl,--no-as-needed -landroid-shmem"
}
