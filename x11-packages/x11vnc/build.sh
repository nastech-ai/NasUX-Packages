NASUX_PKG_HOMEPAGE=https://github.com/LibVNC/x11vnc
NASUX_PKG_DESCRIPTION="VNC server for real X displays"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.17"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/LibVNC/x11vnc/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=3ab47c042bc1c33f00c7e9273ab674665b85ab10592a8e0425589fe7f3eb1a69
NASUX_PKG_DEPENDS="libandroid-shmem, libcairo, libvncserver, libx11, libxcomposite, libxcursor, libxdamage, libxext, libxfixes, libxi, libxinerama, libxrandr, libxtst, openssl, xorg-xdpyinfo"

# https://github.com/nastech-ai/NasUX-Packages/issues/15240
TERMUX_PKG_RM_AFTER_INSTALL="bin/Xdummy"

termux_step_pre_configure() {
	autoreconf -vi
	export LIBS="-landroid-shmem"
}
