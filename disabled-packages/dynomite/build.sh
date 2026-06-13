NASUX_PKG_HOMEPAGE=https://github.com/Netflix/dynomite
NASUX_PKG_DESCRIPTION="A thin, distributed dynamo layer for different storage engines and protocols"
NASUX_PKG_LICENSE="Apache-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.6.22
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/Netflix/dynomite/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=9c3c60d95b39939f3ce596776febe8aa00ae8614ba85aa767e74d41e302e704a
NASUX_PKG_DEPENDS="libyaml, openssl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_epoll_works=yes
ac_cv_evports_works=no
ac_cv_header_execinfo_h=no
ac_cv_kqueue_works=no
"
termux_step_pre_configure() {
	autoreconf -fi

	LDFLAGS+=" -Wl,-z,muldefs"
}
