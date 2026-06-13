NASUX_PKG_HOMEPAGE=https://github.com/docker/compose
NASUX_PKG_DESCRIPTION="Compose is a tool for defining and running multi-container Docker applications."
NASUX_PKG_LICENSE="Apache-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.1.4"
NASUX_PKG_SRCURL="https://github.com/docker/compose/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=363ce6ccca46f836648f5f4ec9ecfdb6f631daa126570cc3fc69140edeed6794
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS=docker

termux_step_make() {
	nasux_setup_golang
	export GOPATH=$TERMUX_PKG_BUILDDIR
	cd $TERMUX_PKG_SRCDIR
	mkdir bin/
	if ! [ -z "$GOOS" ];then export GOOS=android;fi
	go build -o bin/docker-compose -ldflags="-s -w -X github.com/docker/compose/v2/internal.Version=${NASUX_PKG_VERSION}" ./cmd
}

termux_step_make_install() {
	install -Dm755 -t "${TERMUX_PREFIX}"/libexec/docker/cli-plugins "${TERMUX_PKG_SRCDIR}"/bin/docker-compose
}
