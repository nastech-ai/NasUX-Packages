## * Requires pulseaudio build and source directory.
## * Uses scons build system which is not good at cross-compiling.

NASUX_PKG_HOMEPAGE=https://roc-project.github.io
NASUX_PKG_DESCRIPTION="Roc real-time streaming over the network"
NASUX_PKG_LICENSE="LGPL-2.0, MPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.1.1
TERMUX_PKG_REVISION=3
NASUX_PKG_SRCURL=https://github.com/roc-project/roc/archive/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=2aa63061b586a5f16cfcb0bfe304015a6effdcb373513cb62e76283bde7dd104
NASUX_PKG_DEPENDS="libltdl, libopenfec, libuv, pulseaudio"
TERMUX_PKG_BREAKS="roc-dev"
TERMUX_PKG_REPLACES="roc-dev"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	SCONS_CONFIGURE_ARGS=""
	SCONS_CONFIGURE_ARGS+=" --prefix=$TERMUX_PREFIX"
	SCONS_CONFIGURE_ARGS+=" --host=$TERMUX_HOST_PLATFORM"
	SCONS_CONFIGURE_ARGS+=" --compiler=clang"
	SCONS_CONFIGURE_ARGS+=" --disable-tools"
	SCONS_CONFIGURE_ARGS+=" --disable-tests"
	SCONS_CONFIGURE_ARGS+=" --disable-examples"
	SCONS_CONFIGURE_ARGS+=" --disable-doc"
	SCONS_CONFIGURE_ARGS+=" --disable-sox"
	#SCONS_CONFIGURE_ARGS+=" --disable-openfec"
	SCONS_CONFIGURE_ARGS+=" --enable-pulseaudio-modules"
	SCONS_CONFIGURE_ARGS+=" --with-openfec-includes=$TERMUX_PREFIX/include/openfec"
	SCONS_CONFIGURE_ARGS+=" --with-pulseaudio=$TERMUX_TOPDIR/pulseaudio/src"
	SCONS_CONFIGURE_ARGS+=" --with-pulseaudio-build-dir=$TERMUX_TOPDIR/pulseaudio/build"

	scons $SCONS_CONFIGURE_ARGS
}

termux_step_make_install() {
	scons $SCONS_CONFIGURE_ARGS install
}
