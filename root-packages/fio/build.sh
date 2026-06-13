NASUX_PKG_HOMEPAGE=https://github.com/axboe/fio
NASUX_PKG_DESCRIPTION="Flexible I/O Tester"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.42"
NASUX_PKG_SRCURL=https://github.com/axboe/fio/archive/refs/tags/fio-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=56b03497a918d07692257890fd759bf73168ad79df5be78a2bcbbdc8ce67895b
NASUX_PKG_DEPENDS="openssl, libandroid-shmem, libaio"
TERMUX_PKG_SUGGESTS="python"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+"

termux_step_pre_configure() {
	sed -i "s/@VERSION@/${NASUX_PKG_VERSION}/g" $TERMUX_PKG_SRCDIR/Makefile
}
