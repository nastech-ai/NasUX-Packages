NASUX_PKG_HOMEPAGE=https://www.chiark.greenend.org.uk/ucgi/~ian/git/authbind.git
NASUX_PKG_DESCRIPTION="Bind sockets to privileged ports without root"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.2.0
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/a/authbind/authbind_${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=8d265ee08e66fbda2e6c2b348624cd4552ff2c8fe72247d8904b06500c476adf
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_MAKE_INSTALL_TARGET="install install_man"

termux_step_pre_configure() {
	sed -i 's|/\.$|/|g' Makefile
}

termux_step_create_debscripts() {
	cat <<-EOF > ./postinst
		#!$TERMUX_PREFIX/bin/sh
		mkdir -p $TERMUX_PREFIX/etc/authbind/byaddr
		mkdir -p $TERMUX_PREFIX/etc/authbind/byport
		mkdir -p $TERMUX_PREFIX/etc/authbind/byuid
		echo
		echo "********"
		echo "Remember to setuid root the helper program"
		echo
		echo "    $TERMUX_PREFIX/libexec/authbind/helper"
		echo "********"
		echo
	EOF
}
