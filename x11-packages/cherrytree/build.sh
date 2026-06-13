NASUX_PKG_HOMEPAGE=https://www.giuspen.net/cherrytree/
NASUX_PKG_DESCRIPTION="A hierarchical note taking application"
NASUX_PKG_LICENSE="GPL-3.0, LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.7.0"
NASUX_PKG_SRCURL=https://github.com/giuspen/cherrytree/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=0ea894dd41a14d93a721e64c059e92ec2dcd90b17bdbd243392d41ccb3478814
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="fmt, fribidi, glib, gspell, gtk3, gtkmm3, gtksourceview4, libatkmm-1.6, libc++, libcairo, libcairomm-1.0, libcurl, libglibmm-2.4, libpangomm-1.4, libsigc++-2.0, libsqlite, libuchardet, libvte, libxml++-2.6, libxml2, pango"
TERMUX_PKG_BUILD_DEPENDS="libspdlog"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_TESTING=OFF
-DUSE_NLS=OFF
-DUSE_SHARED_FMT_SPDLOG=ON
"
