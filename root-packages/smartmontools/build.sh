NASUX_PKG_HOMEPAGE=https://www.smartmontools.org/
NASUX_PKG_DESCRIPTION="Utility programs (smartctl and smartd) to control and monitor storage systems"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="7.5"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://downloads.sourceforge.net/sourceforge/smartmontools/smartmontools-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=690b83ca331378da9ea0d9d61008c4b22dde391387b9bbad7f29387f2595f76e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libandroid-glob, libc++, libcap-ng"
TERMUX_PKG_CONFFILES="etc/smartd.conf"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-scriptpath=$TERMUX_PREFIX/bin"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
