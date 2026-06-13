NASUX_PKG_HOMEPAGE=http://www.daidouji.com/oneko
NASUX_PKG_DESCRIPTION="oneko-sakurais modified version of oneko, KINOMOTO Sakura chases around your mouse cursor"
NASUX_PKG_LICENSE="Public Domain"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.2.sakura.6"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=git+https://github.com/tie/oneko
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_GIT_BRANCH=master
NASUX_PKG_DEPENDS="libx11,libxext,xorgproto"
TERMUX_PKG_CMAKE_BUILD="Unix Makefiles"
TERMUX_PKG_GROUPS="games"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make_install() {
	install -Dm700 -t "${TERMUX_PREFIX}"/bin "$TERMUX_PKG_SRCDIR"/oneko
}
