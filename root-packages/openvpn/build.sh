NASUX_PKG_HOMEPAGE=https://openvpn.net
NASUX_PKG_DESCRIPTION="An easy-to-use, robust, and highly configurable VPN (Virtual Private Network)"
# License: GPL-2.0-with-OpenSSL-exception
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.7.4"
NASUX_PKG_SRCURL=https://github.com/OpenVPN/openvpn/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=2235b8479b4fca0c43a8cd6a767858ab5b1e14cb4170e6211aa94549ed5d419e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libcap-ng, liblz4, liblzo, net-tools, openssl"
NASUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-plugin-auth-pam
--disable-systemd
--disable-debug
--enable-iproute2
--enable-small
--enable-x509-alt-username
ac_cv_func_getpwnam=yes
IFCONFIG=$TERMUX_PREFIX/bin/ifconfig
ROUTE=$TERMUX_PREFIX/bin/route
IPROUTE=$TERMUX_PREFIX/bin/ip
NETSTAT=$TERMUX_PREFIX/bin/netstat
"

termux_step_pre_configure() {
	autoreconf -fi
}

termux_step_post_make_install() {
	# Examples.
	install -d -m700 "$TERMUX_PREFIX/share/openvpn/examples"
	cp "$TERMUX_PKG_SRCDIR"/sample/sample-config-files/* "$TERMUX_PREFIX/share/openvpn/examples"
}
