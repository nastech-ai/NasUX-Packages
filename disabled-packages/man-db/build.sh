NASUX_PKG_HOMEPAGE=https://www.nongnu.org/man-db/
NASUX_PKG_DESCRIPTION="Utilities for examining on-line help files (manual pages)"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.7.5
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://download.savannah.nongnu.org/releases/man-db/man-db-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=5c4ddd0d67abbbcb408dc5804906f62210f7c863ef791198faca3d75681cca14
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-db=gdbm --with-pager=less --with-config-file=${TERMUX_PREFIX}/etc/man_db.conf --disable-setuid --with-browser=lynx --with-gzip=gzip --with-systemdtmpfilesdir=${TERMUX_PREFIX}/lib/tmpfiles.d"
NASUX_PKG_DEPENDS="flex, gdbm, groff, less, libandroid-support, libpipeline, lynx"

export GROFF_TMAC_PATH="${TERMUX_PREFIX}/lib/groff/site-tmac:${TERMUX_PREFIX}/share/groff/site-tmac:${TERMUX_PREFIX}/share/groff/current/tmac"
