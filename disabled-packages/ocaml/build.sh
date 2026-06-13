NASUX_PKG_HOMEPAGE=https://ocaml.org
NASUX_PKG_DESCRIPTION="Programming language supporting functional, imperative and object-oriented styles"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=4.02.3
NASUX_PKG_SRCURL=https://caml.inria.fr/pub/distrib/ocaml-${NASUX_PKG_VERSION:0:4}/ocaml-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=83c6697e135b599a196fd7936eaf8a53dd6b8f3155a796d18407b56f91df9ce3
NASUX_PKG_DEPENDS="pcre, openssl, libuuid"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	./configure -prefix $TERMUX_PREFIX -mandir $TERMUX_PREFIX/share/man/man1 -cc "$CC $CFLAGS $CPPFLAGS $LDFLAGS" \
		-host $TERMUX_HOST_PLATFORM
}
