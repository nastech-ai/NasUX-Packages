NASUX_PKG_HOMEPAGE=https://freeglut.sourceforge.net/
NASUX_PKG_DESCRIPTION="Provides functionality for small OpenGL programs"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.6.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://downloads.sourceforge.net/freeglut/freeglut-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=9c3d4d6516fbfa0280edc93c77698fb7303e443c1aaaf37d269e3288a6c3ea52
NASUX_PKG_DEPENDS="glu, libx11, libxi, libxrandr, opengl"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DANDROID_NO_TERMUX=OFF
-DCMAKE_POLICY_VERSION_MINIMUM=3.5
"

termux_step_post_get_source() {
	sed -i CMakeLists.txt \
		-e 's/\([^A-Za-z0-9_]ANDROID\)\([^A-Za-z0-9_]\)/\1_NO_TERMUX\2/g' \
		-e 's/\([^A-Za-z0-9_]ANDROID\)$/\1_NO_TERMUX/g'
}
