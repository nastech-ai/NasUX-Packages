NASUX_PKG_HOMEPAGE=https://landley.net/toybox/
NASUX_PKG_DESCRIPTION="Common Linux command line utilities"
NASUX_PKG_LICENSE="BSD"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.7.3
NASUX_PKG_SRCURL=https://landley.net/toybox/downloads/toybox-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=e6469b508224e0d2e4564dda05c4bb47aef5c28bf29d6c983bcdc6e3a0cd29d6
NASUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	make defconfig
}
