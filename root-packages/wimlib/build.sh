NASUX_PKG_HOMEPAGE=https://wimlib.net/
NASUX_PKG_DESCRIPTION="A library and command-line tools to create, extract, and modify Windows Imaging (WIM ) files"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@xingguangcuican6666"
NASUX_PKG_VERSION="1.14.4"

NASUX_PKG_SRCURL="https://github.com/ebiggers/wimlib/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=fceff5e4383480f4416353a218f480b257fff75775ccf364be8ef4c13c605d81

NASUX_PKG_DEPENDS="libandroid-glob, libandroid-utimes, libfuse3, liblzma, libxml2, ntfs-3g, openssl, zlib"

NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-static
ac_cv_lib_rt_mq_open=yes
"
termux_step_pre_configure() {
	autoreconf -fi
	LDFLAGS+=" -landroid-glob -landroid-utimes"
}
