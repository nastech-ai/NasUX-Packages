NASUX_PKG_HOMEPAGE=https://github.com/protocolbuffers/protobuf
NASUX_PKG_DESCRIPTION="Protocol buffers C++ library (static)"
# utf8_range is licensed under MIT
NASUX_PKG_LICENSE="BSD 3-Clause, MIT"
NASUX_PKG_LICENSE_FILE="
LICENSE
third_party/utf8_range/LICENSE
"
NASUX_PKG_MAINTAINER="@nastech-ai"
# Please align the version and revision with `libprotobuf` package.
NASUX_PKG_VERSION=33.1
NASUX_PKG_SRCURL=https://github.com/protocolbuffers/protobuf/archive/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=0c98bb704ceb4e68c92f93907951ca3c36130bc73f87264e8c0771a80362ac97
TERMUX_PKG_AUTO_UPDATE=false
NASUX_PKG_DEPENDS="abseil-cpp, libc++, zlib"
TERMUX_PKG_BREAKS="libprotobuf"
TERMUX_PKG_CONFLICTS="libprotobuf, protobuf-dev"
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dprotobuf_ABSL_PROVIDER=package
-Dprotobuf_BUILD_TESTS=OFF
-DBUILD_SHARED_LIBS=OFF
-DCMAKE_INSTALL_LIBDIR=lib
"

termux_step_post_get_source() {
	# Version guard
	local ver_e=${NASUX_PKG_VERSION#*:}
	local ver_x=$(. $NASUX_SCRIPTDIR/packages/libprotobuf/build.sh; echo ${NASUX_PKG_VERSION#*:})
	if [ "${ver_e}" != "${ver_x}" ]; then
		termux_error_exit "Version mismatch between libprotobuf and protobuf-static."
	fi
}

termux_step_post_make_install() {
	# Copy lib/*.cmake to opt/protobuf-cmake/static for future use
	mkdir -p $TERMUX_PREFIX/opt/protobuf-cmake/static
	cp $TERMUX_PREFIX/lib/cmake/protobuf/protobuf-targets{,-release}.cmake \
		$TERMUX_PREFIX/opt/protobuf-cmake/static/
}
