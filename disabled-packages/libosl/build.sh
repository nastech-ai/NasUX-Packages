NASUX_PKG_HOMEPAGE="http://icps.u-strasbg.fr/~bastoul/development/openscop"
NASUX_PKG_DESCRIPTION="A Specification and a Library for Data Exchange in Polyhedral Compilation Tools"
TERMUX_PKG_GROUPS="science"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.7"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/periscop/openscop/archive/refs/tags/$NASUX_PKG_VERSION.tar.gz"
NASUX_PKG_SHA256=bdb566af5c68cb8bb66dc204b1dcafebaa843a25dfdbcc64dfcc21a1912c3e66
NASUX_PKG_DEPENDS="libgmp"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_post_get_source() {
	rm -f CMakeLists.txt
}
termux_step_pre_configure() {
	autoreconf -fi
}
