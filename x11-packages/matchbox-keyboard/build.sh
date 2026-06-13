NASUX_PKG_HOMEPAGE=https://www.yoctoproject.org/software-item/matchbox/
NASUX_PKG_DESCRIPTION="An on-screen virtual keyboard."
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.1.1
TERMUX_PKG_REVISION=31
NASUX_PKG_SRCURL=https://git.yoctoproject.org/matchbox-keyboard/snapshot/matchbox-keyboard-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=dd3e9494a9499a3bf3017c8c1e6572a4e91deb20e219717db17c0977750b8bcb
NASUX_PKG_DEPENDS="libexpat, libfakekey, libpng, libx11, libxft, libxrender"
TERMUX_PKG_RECOMMENDS="ttf-dejavu"

termux_step_pre_configure() {
	autoreconf -i
}
