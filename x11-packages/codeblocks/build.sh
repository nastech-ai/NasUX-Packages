NASUX_PKG_HOMEPAGE=https://www.codeblocks.org/
NASUX_PKG_DESCRIPTION="Code::Blocks is the Integrated Development Environment (IDE)"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=25.03
NASUX_PKG_SRCURL=https://sourceforge.net/projects/codeblocks/files/Sources/${NASUX_PKG_VERSION}/codeblocks_${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=b0f6aa5908d336d7f41f9576b2418ac7d27efbc59282aa8c9171d88cea74049e
NASUX_PKG_DEPENDS="codeblocks-data, glib, gtk3, libc++, wxwidgets, zip"
TERMUX_PKG_HOSTBUILD=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-contrib-plugins --disable-compiler"

termux_step_host_build() {
	"${TERMUX_PKG_SRCDIR}/configure"
	make -j $TERMUX_PKG_MAKE_PROCESSES -C src/base
	make -j $TERMUX_PKG_MAKE_PROCESSES -C src/build_tools
}

termux_step_pre_configure() {
	local _libgcc_file="$($CC -print-libgcc-file-name)"
	local _libgcc_path="$(dirname $_libgcc_file)"
	local _libgcc_name="$(basename $_libgcc_file)"
	LDFLAGS+=" -L$_libgcc_path -l:$_libgcc_name"

	autoreconf -fi
}

termux_step_post_configure() {
	sed -i 's/ -shared / -Wl,-O1,--as-needed\0/g' ./libtool
	cp -r $TERMUX_PKG_HOSTBUILD_DIR/src/build_tools ./src/

	# We need to make sure the files are edited (or have their last modified date)
	# in a specific order to avoid accidentally triggering a recompilation.
	for file in ./src/build_tools/autorevision/{Makefile,autorevision.o,auto_revision}; do
		touch "${file}"
		sleep 0.1
	done
}
