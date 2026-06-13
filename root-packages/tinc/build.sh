NASUX_PKG_HOMEPAGE=https://www.tinc-vpn.org/
NASUX_PKG_DESCRIPTION="VPN daemon"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0.36
TERMUX_PKG_REVISION=5
NASUX_PKG_SRCURL=https://www.tinc-vpn.org/packages/tinc-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=40f73bb3facc480effe0e771442a706ff0488edea7a5f2505d4ccb2aa8163108
NASUX_PKG_DEPENDS="liblzo, openssl, zlib"

termux_step_pre_configure() {
	export LIBS="-llog"
}
