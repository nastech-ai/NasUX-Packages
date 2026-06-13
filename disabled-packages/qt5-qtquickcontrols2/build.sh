NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Qt Quick Controls2 module"
NASUX_PKG_LICENSE="LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.15.14"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.qt.io/archive/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtquickcontrols2-everywhere-opensource-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=25ee6bffabb63d9612e7f544e5e1cab5d1776fa49c47aa3c9a02eb56573ec982
NASUX_PKG_DEPENDS="libc++, qt5-qtbase, qt5-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_NO_STATICSPLIT=true

termux_step_configure () {
	"${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
		-spec "${TERMUX_PREFIX}/lib/qt/mkspecs/nasux-cross"
}

termux_step_post_make_install() {
	#######################################################
	##
	##  Fixes & cleanup.
	##
	#######################################################

	## Drop QMAKE_PRL_BUILD_DIR because reference the build dir.
	find "${TERMUX_PREFIX}/lib" -type f -name "libQt5QuickControls2*.prl" \
		-exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' "{}" \;
	find "${TERMUX_PREFIX}/lib" -type f -name "libQt5QuickTemplates2*.prl" \
		-exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' "{}" \;

	## Remove *.la files.
	find "${TERMUX_PREFIX}/lib" -iname \*.la -delete
}
