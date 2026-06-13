NASUX_PKG_HOMEPAGE=https://github.com/raboof/nethogs
NASUX_PKG_DESCRIPTION="Net top tool grouping bandwidth per process"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.8.7
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/raboof/nethogs/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=957d6afcc220dfbba44c819162f44818051c5b4fb793c47ba98294393986617d
NASUX_PKG_DEPENDS="libc++, ncurses, libpcap"
TERMUX_PKG_EXTRA_MAKE_ARGS="nethogs"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_post_get_source() {
	mv pyproject.toml{,.unused}
	mv setup.py{,.unused}
}

termux_step_pre_configure() {
	CPPFLAGS+=" -Dindex=strchr -Drindex=strrchr -Dquad_t=int64_t"
}
