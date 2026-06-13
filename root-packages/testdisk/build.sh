NASUX_PKG_HOMEPAGE=https://www.cgsecurity.org/wiki/TestDisk
NASUX_PKG_DESCRIPTION="Partition Recovery and File Undelete"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=7.1
TERMUX_PKG_REVISION=6
NASUX_PKG_SRCURL=https://www.cgsecurity.org/testdisk-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=1413c47569e48c5b22653b943d48136cb228abcbd6f03da109c4df63382190fe
NASUX_PKG_DEPENDS="libuuid, zlib, libjpeg-turbo, libiconv, ncurses, libandroid-glob"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--bindir=$TERMUX_PREFIX/bin
--sysconfdir=$TERMUX_PREFIX/etc
--localstatedir=$TERMUX_PREFIX/var
--mandir=$TERMUX_PREFIX/share/man
--without-ewf
--without-ntfs3g
--without-ntfs
--without-reiserfs
"

termux_step_pre_configure() {
	export LIBS="-lncurses -landroid-glob"
}

termux_step_make() {
	make -j2 static
}
