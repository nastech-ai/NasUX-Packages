NASUX_PKG_HOMEPAGE=https://gitlab.com/ve-nt/outfieldr
NASUX_PKG_DESCRIPTION="A TLDR client in Zig"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0.3
NASUX_PKG_SRCURL=git+https://gitlab.com/ve-nt/outfieldr
TERMUX_PKG_GIT_BRANCH=$NASUX_PKG_VERSION
NASUX_PKG_DEPENDS="libc++"
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_EXCLUDED_ARCHES="arm, i686"
TERMUX_ZIG_VERSION="0.9.1"

termux_step_make() {
	nasux_setup_zig
	ZIG_TARGET_NAME=${NASUX_ARCH}-linux-android
	zig build -Dtarget=$ZIG_TARGET_NAME
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin bin/tldr
}
