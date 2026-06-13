NASUX_PKG_HOMEPAGE=https://github.com/vergoh/vnstat
NASUX_PKG_DESCRIPTION="A console-based network traffic monitor"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@Denzy7"
NASUX_PKG_VERSION="2.13"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/vergoh/vnstat/releases/download/v${NASUX_PKG_VERSION}/vnstat-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=c9fe19312d1ec3ddfbc4672aa951cf9e61ca98dc14cad3d3565f7d9803a6b187
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libsqlite"
TERMUX_PKG_SERVICE_SCRIPT=("vnstat" "exec su -c \"PATH=\$PATH $TERMUX_PREFIX/bin/vnstatd -n 2>&1\"")

# from docker root package: https://github.com/nastech-ai/NasUX-Packages/blob/master/root-packages/docker/build.sh
termux_step_post_make_install() {
	mkdir -p $TERMUX_PREFIX/var/service/vnstat/
	{
		echo "#!$TERMUX_PREFIX/bin/sh"
		echo "su -c pkill vnstatd"
	} > $TERMUX_PREFIX/var/service/vnstat/finish
	chmod u+x $TERMUX_PREFIX/var/service/vnstat/finish
}
