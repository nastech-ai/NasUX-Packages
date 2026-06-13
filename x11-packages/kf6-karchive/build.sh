NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/karchive"
NASUX_PKG_DESCRIPTION="Qt addon providing access to numerous types of archives (KDE)"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/karchive-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=434edf78df8f4c9f25000d107ad1520d7ac14db580a202047bf19cbf77376522
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_HOSTBUILD=true
NASUX_PKG_DEPENDS="libbz2, libc++, liblzma, qt6-qtbase, zlib, zstd"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_host_build() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "true" ]]; then
		return
	fi

	nasux_setup_cmake
	nasux_setup_ninja

	cmake -G Ninja \
		-S "${TERMUX_PKG_SRCDIR}" \
		-B "${TERMUX_PKG_HOSTBUILD_DIR}" \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_INSTALL_PREFIX=$TERMUX_PREFIX/opt/kf6/cross \
		-DCMAKE_PREFIX_PATH="$TERMUX_PREFIX/opt/qt6/cross/lib/cmake" \
		-DCMAKE_MODULE_PATH="$TERMUX_PREFIX/share/ECM/modules" \
		-DECM_DIR="$TERMUX_PREFIX/share/ECM/cmake" \
		-DTERMUX_PREFIX="$TERMUX_PREFIX" \
		-DCMAKE_INSTALL_LIBDIR=lib

	ninja -j ${TERMUX_PKG_MAKE_PROCESSES} install
}

termux_step_pre_configure() {
	rm -rf $TERMUX_HOSTBUILD_MARKER
}
