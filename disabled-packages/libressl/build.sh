# Status: NasUX currently uses openssl. Transitioning to libressl
#	  is tempting, but on hold for now to see how widespread
#	  the adoption of libressl in Linux distributions is.
NASUX_PKG_HOMEPAGE=https://www.libressl.org/
NASUX_PKG_DESCRIPTION="Library implementing the TLS protocol as well as general purpose cryptography functions"
NASUX_PKG_LICENSE="OpenSSL, ISC"
TERMUX_PKG_MAINTEINER="@nastech-ai"
NASUX_PKG_VERSION=2.5.5
NASUX_PKG_SRCURL=https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=e57f5e3d5842a81fe9351b6e817fcaf0a749ca4ef35a91465edba9e071dce7c4
NASUX_PKG_DEPENDS="ca-certificates"
TERMUX_PKG_CONFLICTS="openssl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-openssldir=$TERMUX_PREFIX/etc/tls"
# etc/tls/cert.pem is provided by ca-certificates:
TERMUX_PKG_RM_AFTER_INSTALL="etc/tls/cert.pem"

termux_step_pre_configure() {
	CPPFLAGS+=" -DNO_SYSLOG"
}
