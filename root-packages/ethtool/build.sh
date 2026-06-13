NASUX_PKG_HOMEPAGE=https://mirrors.edge.kernel.org/pub/software/network/ethtool/
NASUX_PKG_DESCRIPTION="standard Linux utility for controlling network drivers and hardware, particularly for wired Ethernet devices"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="7.0"
NASUX_PKG_SRCURL="https://git.kernel.org/pub/scm/network/ethtool/ethtool.git/snapshot/ethtool-$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=fb4b77f1e915e14a94f289bd1429ef5a68fe5e8eaaa28212d4f220eda5321b5e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libmnl"

termux_step_pre_configure() {
	autoreconf -fi
}
