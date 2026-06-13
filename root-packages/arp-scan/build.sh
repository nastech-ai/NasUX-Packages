NASUX_PKG_HOMEPAGE=https://github.com/royhills/arp-scan
NASUX_PKG_DESCRIPTION="arp-scan is a command-line tool for system discovery and fingerprinting. It constructs and sends ARP requests to the specified IP addresses, and displays any responses that are received."
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.10.0
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/royhills/arp-scan/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=204b13487158b8e46bf6dd207757a52621148fdd1d2467ebd104de17493bab25
NASUX_PKG_DEPENDS="libpcap"

if [[ ${NASUX_ARCH_BITS} == 32 ]]; then
	# Retrieved from compilation on device:
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+="pgac_cv_snprintf_long_long_int_format=%lld"
fi

termux_step_pre_configure () {
	cp ${TERMUX_PKG_BUILDER_DIR}/hsearch/* ${TERMUX_PKG_SRCDIR}/
	autoreconf -fi
}
