NASUX_PKG_HOMEPAGE=https://github.com/rgburke/grv
NASUX_PKG_DESCRIPTION="A terminal based interface for viewing Git repositories"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.3.2
TERMUX_PKG_REVISION=3
NASUX_PKG_SRCURL=git+https://github.com/rgburke/grv
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libgit2, ncurses, ncurses-ui-libs, readline"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	nasux_setup_golang

	export GO111MODULE=off
	export GOPATH=$TERMUX_PKG_BUILDDIR/_go
	mkdir -p $GOPATH
	ln -sfT $TERMUX_PKG_SRCDIR/cmd/grv/vendor $GOPATH/src
}

termux_step_make() {
	local _DATE=$(date -u '+%Y-%m-%d %H:%M:%S %Z')
	go build -ldflags "-X \"main.version=$NASUX_PKG_VERSION\" -X \"main.buildDateTime=$_DATE\"" \
		./cmd/grv
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin grv
}
