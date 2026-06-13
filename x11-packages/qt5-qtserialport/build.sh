NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Qt Serial Port Library"
NASUX_PKG_LICENSE="LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.15.18"
NASUX_PKG_SRCURL="https://download.qt.io/archive/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtserialport-everywhere-opensource-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=2227339d6e5f42cd3fbac5eb6290f2b768cc7f32c493b587c5735e342ef3a58f
NASUX_PKG_DEPENDS="libc++, qt5-qtbase"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_NO_STATICSPLIT=true

termux_step_configure () {
	"${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
		-spec "${TERMUX_PREFIX}/lib/qt/mkspecs/nasux-cross"
}

termux_step_make_install() {
	make install

	#######################################################
	##
	##  Fixes & cleanup.
	##
	#######################################################

	## Drop QMAKE_PRL_BUILD_DIR because reference the build dir.
	find "${TERMUX_PREFIX}/lib" -type f -name "libQt5SerialPort*.prl" \
		-exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' "{}" \;

	## Remove *.la files.
	find "${TERMUX_PREFIX}/lib" -iname \*.la -delete
}
