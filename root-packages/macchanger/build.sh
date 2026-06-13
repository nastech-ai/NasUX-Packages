NASUX_PKG_HOMEPAGE=https://github.com/alobbs/macchanger
NASUX_PKG_DESCRIPTION="Utility that makes the maniputation of MAC addresses of network interfaces easier"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.7.0
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/alobbs/macchanger/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=1d75c07a626321e07b48a5fe2dbefbdb98c3038bb8230923ba8d32bda5726e4f

termux_step_pre_configure() {
	./autogen.sh
}
