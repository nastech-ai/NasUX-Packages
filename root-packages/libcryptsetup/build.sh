NASUX_PKG_HOMEPAGE=https://gitlab.com/cryptsetup/cryptsetup/
NASUX_PKG_DESCRIPTION="Userspace setup tool for transparent encryption of block devices using dm-crypt"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.8.6
NASUX_PKG_SRCURL=https://mirrors.edge.kernel.org/pub/linux/utils/cryptsetup/v${NASUX_PKG_VERSION:0:3}/cryptsetup-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=8004265fd993885d08f7b633dbe056851de1a210307613a4ebddc743fccefe5a
NASUX_PKG_DEPENDS="json-c, libblkid, libdevmapper, libgcrypt, libuuid, openssl, libiconv, argon2"
TERMUX_PKG_BREAKS="cryptsetup-dev, cryptsetup (<< 2.4.3-1)"
TERMUX_PKG_REPLACES="cryptsetup-dev, cryptsetup (<< 2.4.3-1)"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-luks2-lock-path=$TERMUX_PREFIX/var/run
--enable-libargon2
--disable-ssh-token
"

termux_step_pre_configure() {
	export LDFLAGS+=" -liconv"
}
