NASUX_PKG_HOMEPAGE=https://min.io/
NASUX_PKG_DESCRIPTION="Multi-Cloud Object Storage"
NASUX_PKG_LICENSE="AGPL-V3"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2025.10.15.17.29.55"
_VERSION=$(sed 's/\./T/3;s/\./-/g' <<< $NASUX_PKG_VERSION)
NASUX_PKG_SRCURL=https://github.com/minio/minio/archive/refs/tags/RELEASE.${_VERSION}Z.tar.gz
NASUX_PKG_SHA256=be6d0bd3696c3a13a35f02d3a0280b64319c67918b4501c5c3d87f96d000085c
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_SED_REGEXP='s/T/-/g;s/[^0-9-]//g;s/-/./g'
NASUX_PKG_DEPENDS="resolv-conf"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	nasux_setup_golang
}

termux_step_make() {
	local _COMMITID=$(git ls-remote https://github.com/minio/minio refs/tags/RELEASE.${_VERSION}Z | cut -f1)
	local _SHORTCOMMITID=$(git ls-remote https://github.com/minio/minio refs/tags/RELEASE.${_VERSION}Z | head -c 12)

	MINIOLDFLAGS="\
	-w -s \
	-X 'github.com/minio/minio/cmd.Version=${_VERSION}Z' \
	-X 'github.com/minio/minio/cmd.CopyrightYear=$(date +%Y)' \
	-X 'github.com/minio/minio/cmd.ReleaseTag=RELEASE.${_VERSION}Z'\
	-X 'github.com/minio/minio/cmd.CommitID=${_COMMITID}' \
	-X 'github.com/minio/minio/cmd.ShortCommitID=${_SHORTCOMMITID}' \
	-X 'github.com/minio/minio/cmd.GOPATH=$(go env GOPATH)' \
	-X 'github.com/minio/minio/cmd.GOROOT=$(go env GOROOT)' \
	"
	go build -tags kqueue -trimpath --ldflags="$MINIOLDFLAGS" -o minio
}
termux_step_make_install() {
	install -Dm700 -t "${TERMUX_PREFIX}"/bin minio
}
