NASUX_PKG_HOMEPAGE=https://github.com/gansm/finalcut
NASUX_PKG_DESCRIPTION="A C++ class library and widget toolkit for creating a text-based user interface"
NASUX_PKG_LICENSE="LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.1"
NASUX_PKG_SRCURL=https://github.com/gansm/finalcut/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=6593b3c43ba1de98e4e0e3a563dbf9316fade71ef85c82e6b6f086184ec69a56
NASUX_PKG_DEPENDS="libc++, ncurses"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	autoreconf -fi

	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
