## This is stripped down version of 'libfm' package.
## Primarily used for compiling 'menu-cache'.

NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/pcmanfm/
NASUX_PKG_DESCRIPTION="Extra library for file management"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.3.2
TERMUX_PKG_REVISION=5
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/pcmanfm/libfm-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=a5042630304cf8e5d8cff9d565c6bd546f228b48c960153ed366a34e87cad1e5
NASUX_PKG_DEPENDS="glib"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-extra-only
"
