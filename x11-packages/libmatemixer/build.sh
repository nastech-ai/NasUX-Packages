NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Mixer library for MATE Desktop"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.0"
NASUX_PKG_SRCURL="https://github.com/mate-desktop/libmatemixer/releases/download/v$NASUX_PKG_VERSION/libmatemixer-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=5d73b922397f60688e3c9530eb532bce46c30e262db1b5352fa32c40d870a0c7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="alsa-lib, glib, pulseaudio"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--sysconfdir=$TERMUX_PREFIX/etc
--localstatedir=$TERMUX_PREFIX/var
"
