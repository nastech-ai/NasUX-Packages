NASUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
NASUX_PKG_DESCRIPTION="X.Org font utilities"
# Licenses: MIT, BSD 2-Clause, UCD
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.4.2"
NASUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/font/font-util-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=02e4f8afdcf03cc8372ca9c37aa104b1e36b47722dbc79531be08f0a4c622999
TERMUX_PKG_AUTO_UPDATE=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-mapdir=${TERMUX_PREFIX}/share/fonts/util
--with-fontrootdir=${TERMUX_PREFIX}/share/fonts
"
