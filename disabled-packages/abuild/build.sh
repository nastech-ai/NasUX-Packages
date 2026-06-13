##
## Since NasUX is continuing to use APT as package manager, abuild & apk-tools
## are disabled because don't have real use-cases currently.
##

## TODO: restore fakeroot functionality
NASUX_PKG_HOMEPAGE=https://github.com/alpinelinux/abuild
NASUX_PKG_DESCRIPTION="Build script to build Alpine packages"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=3.4.0
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/alpinelinux/abuild/archive/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=f6f704e34f9d388a0228b645050dc7db7bf92f15a088835ae2c9b244420b9b61
NASUX_PKG_DEPENDS="apk-tools, autoconf, automake, bash, clang, curl, libtool, make, openssl-tool, pkg-config, tar, zlib"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="sysconfdir=$TERMUX_PREFIX/etc"
TERMUX_PKG_CONFFILES="etc/abuild.conf"

TERMUX_PKG_RM_AFTER_INSTALL="
bin/abuild-adduser
bin/abuild-addgroup
bin/abuild-apk
bin/abuild-sudo
bin/buildlab
"

termux_step_post_make_install() {
    install -Dm600 "$TERMUX_PKG_SRCDIR/abuild.conf" "$TERMUX_PREFIX/etc/abuild.conf"
}
