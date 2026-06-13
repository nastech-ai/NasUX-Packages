NASUX_PKG_HOMEPAGE=http://pkgconf.org
NASUX_PKG_DESCRIPTION="Program which helps to configure compiler and linker flags for development frameworks"
NASUX_PKG_LICENSE="ISC"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.5.3
NASUX_PKG_SRCURL=https://github.com/pkgconf/pkgconf/archive/pkgconf-$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=45b76f5037379b1e24b788379c74f31fc4f060b272a08bdda9e558c120e9f3b6

termux_step_pre_configure() {
	./autogen.sh
}
