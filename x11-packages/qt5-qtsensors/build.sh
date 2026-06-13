NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Qt 5 Sensors Library"
NASUX_PKG_LICENSE="LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.15.18"
NASUX_PKG_SRCURL="https://download.qt.io/archive/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtsensors-everywhere-opensource-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=c804836942c1cb363e71bb42d32cd78f4e8c32b11b712715dae191b9cd372040
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
	find "${TERMUX_PREFIX}/lib" -type f -name "libQt5Sensors*.prl" \
		-exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' "{}" \;

	## Remove *.la files.
	find "${TERMUX_PREFIX}/lib" -iname \*.la -delete
}
