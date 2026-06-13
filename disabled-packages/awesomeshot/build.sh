NASUX_PKG_HOMEPAGE=https://github.com/mayTermux/awesomeshot
NASUX_PKG_DESCRIPTION="A command-line screenshot tool written in bash"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.1.0
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/mayTermux/awesomeshot/archive/refs/tags/v.${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=5daefb4c02743503e08764fb604e6a811e4ce09a301fafe7cd00a43418a687b1
NASUX_PKG_DEPENDS="bash, bc, imagemagick, inotify-tools, nasux-api"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
