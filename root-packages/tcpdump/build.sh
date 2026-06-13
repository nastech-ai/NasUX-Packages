NASUX_PKG_HOMEPAGE=https://www.tcpdump.org/
NASUX_PKG_DESCRIPTION="A powerful command-line packet analyzer"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=4.99.4
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://www.tcpdump.org/release/tcpdump-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=0232231bb2f29d6bf2426e70a08a7e0c63a0d59a9b44863b7f5e2357a6e49fea
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_linux_vers=3.4"
TERMUX_PKG_RM_AFTER_INSTALL="bin/tcpdump.${NASUX_PKG_VERSION}"
NASUX_PKG_DEPENDS="libcap-ng, libpcap, openssl"
