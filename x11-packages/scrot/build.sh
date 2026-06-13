NASUX_PKG_HOMEPAGE=https://github.com/dreamer/scrot
NASUX_PKG_DESCRIPTION="Simple command-line screenshot utility for X"
# License: MIT-feh
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.0.0"
NASUX_PKG_SRCURL=https://github.com/resurrecting-open-source-projects/scrot/releases/download/${NASUX_PKG_VERSION}/scrot-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=1b4b3acadfe07bf89234838675d1d23508a9a6810cb64584f1d9610103d6cdfa
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="imlib2, libx11, libxcomposite, libxfixes, libxrandr"

termux_step_pre_configure() {
	local _inc="$TERMUX_PKG_SRCDIR/_getsubopt/include"
	rm -rf "${_inc}"
	mkdir -p "${_inc}"
	cp "$TERMUX_PKG_BUILDER_DIR/getsubopt.h" "${_inc}"

	CPPFLAGS+=" -I${_inc} -D__force= -UANDROID"

	local _lib="$TERMUX_PKG_BUILDDIR/_getsubopt/lib"
	rm -rf "${_lib}"
	mkdir -p "${_lib}"
	pushd "${_lib}"/..
	$CC $CFLAGS $CPPFLAGS "$TERMUX_PKG_BUILDER_DIR/getsubopt.c" \
		-fvisibility=hidden -c -o ./getsubopt.o
	$AR cru "${_lib}"/libgetsubopt.a ./getsubopt.o
	popd

	LDFLAGS+=" -L${_lib} -l:libgetsubopt.a"
}
