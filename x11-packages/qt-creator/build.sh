NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Integrated Development Environment for Qt"
NASUX_PKG_LICENSE="GPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="19.0.2"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qtcreator/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/qt-creator-opensource-src-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=92711b85a5642af5970dd3100982f724f4ce2af2181aea5fe0e335a30060dfc0
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="clang, glib, libandroid-execinfo, libarchive, libelf, libllvm, libsecret, opengl, python, qt6-qtbase, qt6-qtcharts, qt6-qtdeclarative, qt6-qttools, qt6-qtsvg, libyaml-cpp, zstd"
TERMUX_PKG_BUILD_DEPENDS="libllvm-static, qt6-qtbase-cross-tools, qt6-qtcharts-cross-tools, qt6-qtdeclarative-cross-tools, qt6-qttools-cross-tools, qt6-qtsvg-cross-tools"
TERMUX_PKG_RECOMMENDS="gdb, git, make, cmake, mlocate"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DCMAKE_INSTALL_LIBDIR=lib
-DCMAKE_INSTALL_INCLUDEDIR=include
-DBUILD_WITH_PCH=OFF
"

termux_step_pre_configure() {
	nasux_setup_golang

	LDFLAGS+=" -landroid-execinfo"

	# add the directories of all .so files found in the package
	# to the library run paths of all executables in the package
	# the 'qtcreator.sh' script sets LD_LIBRARY_PATH automatically so does not
	# seem to need this, but setting these makes the 'qtcreator' binary
	# possible to launch directly without errors.
	LDFLAGS+=" -Wl,-rpath=$TERMUX_PREFIX/lib/qtcreator"
	LDFLAGS+=" -Wl,-rpath=$TERMUX_PREFIX/lib/qtcreator/plugins"
	LDFLAGS+=" -Wl,-rpath=$TERMUX_PREFIX/lib/qtcreator/plugins/qmldesigner"
}
