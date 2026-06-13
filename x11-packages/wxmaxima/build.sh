NASUX_PKG_HOMEPAGE=https://wxmaxima-developers.github.io/wxmaxima/
NASUX_PKG_DESCRIPTION="A document based interface for the computer algebra system Maxima"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.06.1"
NASUX_PKG_SRCURL=https://github.com/wxMaxima-developers/wxmaxima/archive/refs/tags/Version-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=74590c5f18818977647e6ceb1ead74683788320dd0684abc02d0da57a18a67e7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, maxima, wxwidgets"
NASUX_PKG_EXCLUDED_ARCHES="i686, x86_64"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DwxWidgets_CONFIG_EXECUTABLE=$TERMUX_PREFIX/bin/wx-config
-DWXM_INCLUDE_FONTS=OFF
-DWXM_UNIT_TESTS=OFF
"
