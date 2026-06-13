NASUX_PKG_HOMEPAGE=https://github.com/mikebrady/shairport-sync
NASUX_PKG_DESCRIPTION="An AirPlay audio player"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="LICENSES"
NASUX_PKG_MAINTAINER="@nastech-ai"
# Cannot simply be updated to a newer version due to `pthread_cancel` being used
NASUX_PKG_VERSION=3.1.2
TERMUX_PKG_REVISION=6
NASUX_PKG_SRCURL=https://github.com/mikebrady/shairport-sync/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=8c13f7ebbd417e8cab07ea9f74392ced0f54315d8697d4513580f472859a9c65
NASUX_PKG_DEPENDS="libconfig, libdaemon, libpopt, libsoxr, openssl, pulseaudio"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-pa
--with-soxr
--with-ssl=openssl
"

termux_step_pre_configure() {
	autoreconf -fi

	CFLAGS+=" -fcommon"
}
