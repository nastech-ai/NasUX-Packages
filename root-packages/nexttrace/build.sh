NASUX_PKG_HOMEPAGE=https://github.com/nxtrace/Ntrace-V1
NASUX_PKG_DESCRIPTION="An open source visual routing tool that pursues light weight"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.7.0"
NASUX_PKG_SRCURL=https://github.com/nxtrace/Ntrace-V1/archive/refs/tags/v${NASUX_PKG_VERSION//\~/-}.tar.gz
NASUX_PKG_SHA256=d430b699e0f5f74d88de148185b3c67c596d05adec6d9b83c805c43eeca9fbeb
TERMUX_PKG_BREAKS="nexttrace-enhanced"
TERMUX_PKG_REPLACES="nexttrace-enhanced"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	nasux_setup_golang

	go mod init || :
	go mod tidy
}

termux_step_make() {
	local _BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ')
	local _COMMIT_SHA1=$(git ls-remote https://github.com/nxtrace/Ntrace-V1 refs/tags/v$NASUX_PKG_VERSION | head -c 9)
	go build -trimpath -o nexttrace \
	-ldflags "-X 'github.com/nxtrace/NTrace-core/config.Version=${NASUX_PKG_VERSION}' \
	-X 'github.com/nxtrace/NTrace-core/config.BuildDate=${_BUILD_DATE}' \
	-X 'github.com/nxtrace/NTrace-core/config.CommitID=${_COMMIT_SHA1}' -w -s"
}

termux_step_make_install() {
	install -Dm700 -t "${TERMUX_PREFIX}"/bin nexttrace
}
