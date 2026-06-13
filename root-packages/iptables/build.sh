NASUX_PKG_HOMEPAGE=https://www.netfilter.org/projects/iptables
NASUX_PKG_DESCRIPTION="Program used to configure the Linux 2.4 and later kernel packet filtering ruleset"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.8.13"
NASUX_PKG_SRCURL=https://www.netfilter.org/projects/iptables/files/iptables-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=1afcd33da9e8f913ace6a2126788162e207e26f5d5e29c6573c0e581ffc58b99
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libmnl, libnftnl, libandroid-spawn"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-xt-lock-name=$TERMUX_PREFIX/var/run/xtables.lock
"

termux_step_pre_configure() {
	export CFLAGS+=" -Dindex=strchr -Drindex=strrchr -D__STDC_FORMAT_MACROS=1"
}
