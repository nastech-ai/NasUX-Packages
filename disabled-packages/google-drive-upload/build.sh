NASUX_PKG_HOMEPAGE=https://github.com/labbots/google-drive-upload
NASUX_PKG_DESCRIPTION="Bash scripts to upload files to google drive"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.5"
NASUX_PKG_SRCURL=$NASUX_PKG_HOMEPAGE/archive/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=143bf7521fab80f5b8f5edf4180648043f900c8aa357f0b021f9ce8b06207df5
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_DEPENDS='bash, curl'
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	install -D release/bash/* -t "$TERMUX_PREFIX/bin"
}
