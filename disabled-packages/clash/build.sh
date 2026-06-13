NASUX_PKG_HOMEPAGE=https://github.com/Dreamacro/clash
NASUX_PKG_DESCRIPTION="A rule-based tunnel in Go"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.18.0"
NASUX_PKG_SRCURL="https://github.com/Dreamacro/clash/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=139794f50d3d94f438bab31a993cf25d7cbdf8ca8e034f3071e0dd0014069692
NASUX_PKG_DEPENDS="resolv-conf"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make() {
	nasux_setup_golang

	mkdir ./gopath
	export GOPATH="$PWD/gopath"

	GOBUILD=CGO_ENABLED=0 \
		go build \
			-trimpath \
			-ldflags "-X 'github.com/Dreamacro/clash/constant.Version=${NASUX_PKG_VERSION}'
								-X 'github.com/Dreamacro/clash/constant.BuildTime=$(date -u)'
								-w -s -buildid='" \
			-o "clash.bin" \
			main.go
}

termux_step_make_install() {
	mv ./clash.bin "${TERMUX_PREFIX}/bin/clash"
}
