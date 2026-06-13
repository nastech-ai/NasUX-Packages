NASUX_PKG_HOMEPAGE=https://www.bittorrent.com/btfs/
NASUX_PKG_DESCRIPTION="Decentralized file system integrating with TRON network"
NASUX_PKG_LICENSE="Apache-2.0, MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.6.0
NASUX_PKG_SRCURL=https://github.com/TRON-US/go-btfs/archive/refs/tags/btfs-v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=27de546a83f2c7655a0dbe2bc12e6a8ca7c05ab52f1246263667396fd374f83e
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	nasux_setup_golang
	export GOPATH=$TERMUX_PKG_CACHEDIR/go

	make build
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin $TERMUX_PKG_SRCDIR/cmd/btfs/btfs
}
