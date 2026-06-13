NASUX_PKG_HOMEPAGE="https://patriciogonzalezvivo.com/2015/glslViewer/"
NASUX_PKG_DESCRIPTION="Console-based GLSL Sandbox for 2D/3D shaders"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.5.2"
NASUX_PKG_SRCURL=git+https://github.com/patriciogonzalezvivo/glslViewer
TERMUX_PKG_GIT_BRANCH="$NASUX_PKG_VERSION"
NASUX_PKG_DEPENDS="ffmpeg, glfw, glu, libdrm, liblo, libxcb, mesa-dev, ncurses"
TERMUX_PKG_RECOMMENDS="xorg-server-xvfb"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE=latest-release-tag
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_POLICY_VERSION_MINIMUM=3.5
"

termux_step_pre_configure() {
	CPPFLAGS+=" -Wno-implicit-function-declaration"
}
