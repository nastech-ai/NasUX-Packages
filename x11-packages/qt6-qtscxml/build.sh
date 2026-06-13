NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Qt6 SCXML Library"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.11.1"
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtscxml-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=8e495245e5d1fe75de612c8a07e4043635407a1979bb1dd588f1751d1390203f
NASUX_PKG_DEPENDS="libc++, qt6-qtbase (>= ${NASUX_PKG_VERSION}), qt6-qtdeclarative (>= ${NASUX_PKG_VERSION})"
TERMUX_PKG_HOSTBUILD=true
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX}/opt/qt6/cross
-DINSTALL_PUBLICBINDIR=${TERMUX_PREFIX}/opt/qt6/cross/bin
-DQT_HOST_PATH=${TERMUX_PREFIX}/opt/qt6/cross
"

termux_step_host_build() {
	nasux_setup_cmake
	nasux_setup_ninja

	cmake \
		-G Ninja \
		-S ${TERMUX_PKG_SRCDIR} \
		-DCMAKE_BUILD_TYPE=MinSizeRel \
		-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX}/opt/qt6/cross \
		-DINSTALL_PUBLICBINDIR=${TERMUX_PREFIX}/opt/qt6/cross/bin
	ninja \
		-j ${TERMUX_PKG_MAKE_PROCESSES} \
		install
}

termux_step_make_install() {
	cmake \
		--install "${TERMUX_PKG_BUILDDIR}" \
		--prefix "${TERMUX_PREFIX}" \
		--verbose

	# Remove *.la files
	find "${TERMUX_PREFIX}/lib" -iname \*.la -delete
}
