##
## Since NasUX is continuing to use APT as package manager, abuild & apk-tools
## are disabled because don't have real use-cases currently.
##

NASUX_PKG_HOMEPAGE=https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management
NASUX_PKG_DESCRIPTION="Alpine Linux package management tools"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.10.4
NASUX_PKG_SRCURL=https://github.com/alpinelinux/apk-tools/archive/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=c08aa725a0437a6a83c5364a1a3a468e4aef5d1d09523369074779021397281c
NASUX_PKG_DEPENDS="openssl, zlib"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="LUAAPK="
TERMUX_PKG_CONFFILES="etc/apk/repositories"

termux_step_post_make_install() {
    mkdir -p $TERMUX_PREFIX/etc/apk/
    echo $NASUX_ARCH > $TERMUX_PREFIX/etc/apk/arch

    echo "https://nasux.net/apk/main" > $TERMUX_PREFIX/etc/apk/repositories
}

termux_step_post_massage() {
    mkdir -p "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/etc/apk/keys"
    mkdir -p "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/etc/apk/protected_paths.d"
    mkdir -p "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/lib/apk/db/"
    mkdir -p "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/var/cache/apk"

    ln -sfr \
	"$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/var/cache/apk" \
	"$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/etc/apk/cache"
}

termux_step_create_debscripts() {
    {
	echo "#!$TERMUX_PREFIX/bin/sh"
	echo "touch $TERMUX_PREFIX/etc/apk/world"
    } > ./postinst
    chmod 755 postinst
}
