NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Qt 5 QMake"
NASUX_PKG_LICENSE="LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=5.15.5
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.qt.io/archive/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtbase-everywhere-opensource-src-${NASUX_PKG_VERSION}.tar.xz"
# NASUX_PKG_SHA256 is not used in nasux-build-qmake.sh.
NASUX_PKG_SHA256=SKIP_CHECKSUM
TERMUX_PKG_SKIP_SRC_EXTRACT=true
NASUX_PKG_DEPENDS="qt5-qtbase"
TERMUX_PKG_BREAKS="qt5-qtbase (<< 5.15.7)"
TERMUX_PKG_REPLACES="qt5-qtbase (<< 5.15.7)"

termux_step_make_install() {
	## Unpacking prebuilt qmake from archive.
	cd "${TERMUX_PKG_SRCDIR}" && {
		tar xf "${TERMUX_PKG_BUILDER_DIR}/prebuilt.tar.xz"
		install \
			-Dm700 "${TERMUX_PKG_SRCDIR}/bin/qmake-${TERMUX_HOST_PLATFORM}" \
			"${TERMUX_PREFIX}/bin/qmake"
	}
}
