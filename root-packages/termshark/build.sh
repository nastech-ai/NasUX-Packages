NASUX_PKG_HOMEPAGE=https://termshark.io
NASUX_PKG_DESCRIPTION="A terminal UI for tshark, inspired by Wireshark"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.4.0
TERMUX_PKG_REVISION=5
NASUX_PKG_SRCURL=git+https://github.com/gcla/termshark
NASUX_PKG_DEPENDS="tshark"

termux_step_make() {
	nasux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	export GO111MODULE=on

	cd $TERMUX_PKG_SRCDIR
	go install ./...
}

termux_step_make_install() {
	install -Dm700 bin/android_${GOARCH}/termshark $TERMUX_PREFIX/bin/termshark
}
