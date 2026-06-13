NASUX_PKG_HOMEPAGE=https://github.com/jwilk/pdf2djvu
NASUX_PKG_DESCRIPTION="PDF to DjVu converter"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.9.19
TERMUX_PKG_REVISION=6
NASUX_PKG_SRCURL=https://github.com/jwilk/pdf2djvu/releases/download/${NASUX_PKG_VERSION}/pdf2djvu-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=eb45a480131594079f7fe84df30e4a5d0686f7a8049dc7084eebe22acc37aa9a
NASUX_PKG_DEPENDS="djvulibre, libc++, libiconv, poppler"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-xmp
--disable-openmp
"

termux_step_pre_configure() {
	CXXFLAGS+=" -std=c++20"
}
