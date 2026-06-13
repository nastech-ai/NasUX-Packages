NASUX_PKG_HOMEPAGE=http://www.xbill.org/
NASUX_PKG_DESCRIPTION="The classic game of Bill vs. PCs"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="README"
NASUX_PKG_MAINTAINER="@IntinteDAO"
NASUX_PKG_VERSION=2.1
NASUX_PKG_SRCURL=http://www.xbill.org/download/xbill-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=0efdfff1ce2df70b7a15601cb488cd7b2eb918d21d78e877bd773f112945608d
NASUX_PKG_DEPENDS="libx11, libxaw, libxmu, libxpm, libxt"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-athena --disable-motif --disable-gtk"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_GROUPS="games"

termux_step_pre_configure() {
	autoreconf -fi
}

termux_step_post_make_install() {
	install -Dm644 -t "${TERMUX_PREFIX}/share/applications" "${TERMUX_PKG_BUILDER_DIR}/xbill.desktop"
	install -Dm644 -t "${TERMUX_PREFIX}/share/pixmaps" "${TERMUX_PKG_BUILDER_DIR}/xbill.xpm"
}
