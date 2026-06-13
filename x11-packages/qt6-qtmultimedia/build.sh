NASUX_PKG_HOMEPAGE=https://www.qt.io/
NASUX_PKG_DESCRIPTION="Qt6 Multimedia Library"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.11.1"
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtmultimedia-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=390f8e52ddee3aca5c4de7eead900c84c4fa61ff6d1f0ebea9c7543365c09b0a
NASUX_PKG_DEPENDS="glib, gst-libav, gst-plugins-bad, gst-plugins-base, gstreamer, libc++, opengl, pulseaudio, qt6-qtbase (>= ${NASUX_PKG_VERSION}), qt6-qtdeclarative (>= ${NASUX_PKG_VERSION})"
TERMUX_PKG_BUILD_DEPENDS="qt6-shadertools"
TERMUX_PKG_HOSTBUILD=true
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_AUTO_UPDATE=true
# enable ffmpeg plugin if desired; depends on ffmpeg and libandroid-shmem
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_MESSAGE_LOG_LEVEL=STATUS
-DCMAKE_SYSTEM_NAME=Linux
-DINPUT_ffmpeg=no
"

termux_step_host_build() {
	nasux_setup_cmake
	nasux_setup_ninja

	cmake \
		-G Ninja \
		-S ${TERMUX_PKG_SRCDIR} \
		-DCMAKE_BUILD_TYPE=MinSizeRel \
		-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX}/opt/qt6/cross \
		-DCMAKE_MESSAGE_LOG_LEVEL=STATUS
	ninja \
		-j ${TERMUX_PKG_MAKE_PROCESSES} \
		install
}

termux_step_pre_configure() {
	nasux_setup_cmake
	nasux_setup_ninja

	CXXFLAGS+=" -Wno-c++11-narrowing"
}

termux_step_make_install() {
	cmake \
		--install "${TERMUX_PKG_BUILDDIR}" \
		--prefix "${TERMUX_PREFIX}" \
		--verbose

	# Drop QMAKE_PRL_BUILD_DIR because reference the build dir
	find "${TERMUX_PREFIX}/lib" -type f -name "libQt6Multimedia*.prl" \
		-exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' "{}" \;

	# Remove *.la files
	find "${TERMUX_PREFIX}/lib" -iname \*.la -delete
}
