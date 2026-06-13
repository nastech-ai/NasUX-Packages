NASUX_PKG_HOMEPAGE=https://github.com/linuxhw/hw-probe
NASUX_PKG_DESCRIPTION="Tool to probe for hardware and check its operability"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.6.6
NASUX_PKG_SRCURL=https://github.com/linuxhw/hw-probe/archive/refs/tags/$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=d8d31ed978095d0bd2ca7af51cfee8b97c97f7168ddb48a479a1632e1af84c7b
NASUX_PKG_DEPENDS="curl, hwinfo, net-tools, perl"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	:
}

termux_step_make_install() {
	install -Dm700 hw-probe.pl "$TERMUX_PREFIX"/bin/hw-probe
}
