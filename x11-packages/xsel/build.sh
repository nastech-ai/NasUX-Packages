NASUX_PKG_HOMEPAGE=http://www.kfish.org/software/xsel/
NASUX_PKG_DESCRIPTION="Command-line program for getting and setting the contents of the X selection"
NASUX_PKG_LICENSE="HPND"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.2.1
NASUX_PKG_SRCURL=https://github.com/kfish/xsel/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=18487761f5ca626a036d65ef2db8ad9923bf61685e06e7533676c56d7d60eb14
NASUX_PKG_DEPENDS="libx11"

termux_step_pre_configure() {
	autoreconf -fi
}
