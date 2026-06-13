NASUX_PKG_HOMEPAGE=https://github.com/stevenhoneyman/l3afpad
NASUX_PKG_DESCRIPTION="Simple text editor forked from Leafpad, supports GTK+ 3.x"
NASUX_PKG_MAINTAINER="@Yisus7u7"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_VERSION=0.8.18.1.11
TERMUX_PKG_REVISION=3
NASUX_PKG_SRCURL=https://github.com/stevenhoneyman/l3afpad/archive/refs/tags/v$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=86f374b2f950b7c60dda50aa80a5034b8e3c80ded5cd3284c2d5921b31652793
NASUX_PKG_DEPENDS="gtk3"

termux_step_pre_configure() {
	./autogen.sh
}
