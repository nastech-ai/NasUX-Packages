NASUX_PKG_HOMEPAGE=http://projects.l3ib.org/nitrogen/
NASUX_PKG_DESCRIPTION="Background browser and setter for X windows"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.6.1
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/l3ib/nitrogen/releases/download/${NASUX_PKG_VERSION}/nitrogen-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=f40213707b7a3be87e556f65521cef8795bd91afda13dfac8f00c3550375837d
NASUX_PKG_DEPENDS="libc++, gtkmm2, gtk2"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	CFLAGS+=" -I${TERMUX_PREFIX}/include"
	# Fix "error: no member named bind2nd in namespace std" (bind2nd was removed in c++17):
	CXXFLAGS+=" -std=c++14"
	autoreconf -fi
}
