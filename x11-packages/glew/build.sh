NASUX_PKG_HOMEPAGE=https://glew.sourceforge.net/
NASUX_PKG_DESCRIPTION="The OpenGL Extension Wrangler Library"
NASUX_PKG_LICENSE="BSD, GPL-2.0, MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.2.0
TERMUX_PKG_REVISION=13
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/glew/glew-${NASUX_PKG_VERSION}.tgz
NASUX_PKG_SHA256=d4fc82893cfb00109578d0a1a2337fb8ca335b3ceccf97b97e5cc7f08e4353e1
NASUX_PKG_DEPENDS="glu, libxi, libxmu"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="SYSTEM=linux-egl"

termux_step_pre_configure() {
	LD=$CC
}
