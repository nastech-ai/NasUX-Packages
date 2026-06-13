NASUX_PKG_HOMEPAGE=https://odin-lang.org/
NASUX_PKG_DESCRIPTION="The Odin programming language"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2022.04
NASUX_PKG_SRCURL=https://github.com/odin-lang/Odin/archive/refs/tags/dev-${NASUX_PKG_VERSION//./-}.tar.gz
NASUX_PKG_SHA256=42983d411902e837792f3cf4c60871da7be67a0b8c23d92a31ac6a069a8fc5c3
NASUX_PKG_DEPENDS="libiconv, libllvm"

# ```
# [...]/src/gb/gb.h:6754:2: error: "gb_rdtsc not supported"
# #error "gb_rdtsc not supported"
#  ^
# ```
NASUX_PKG_EXCLUDED_ARCHES="arm"

termux_step_pre_configure() {
	if [ "$TERMUX_PKG_API_LEVEL" -lt 28 ]; then
		CPPFLAGS+=" -Daligned_alloc=memalign"
	fi
	LDFLAGS+=" -lLLVM -liconv"
}

termux_step_make() {
	for s in src/main.cpp src/libtommath.cpp; do
		$CXX $CPPFLAGS $CXXFLAGS -c $TERMUX_PKG_SRCDIR/$s
	done
	$CXX $CXXFLAGS main.o libtommath.o -o odin $LDFLAGS
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin odin
}
