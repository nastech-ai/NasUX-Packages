NASUX_PKG_HOMEPAGE=https://xcb.freedesktop.org/
NASUX_PKG_DESCRIPTION="Utility libraries for XC Binding - Port of Xlib's XImage and XShmImage functions"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.4.1
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://xcb.freedesktop.org/dist/xcb-util-image-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=ccad8ee5dadb1271fd4727ad14d9bd77a64e505608766c4e98267d9aede40d3d
NASUX_PKG_DEPENDS="libandroid-shmem, libxcb, xcb-util"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"

termux_step_pre_configure() {
	LDFLAGS+=' -landroid-shmem'
}
