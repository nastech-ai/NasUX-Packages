NASUX_PKG_HOMEPAGE=https://github.com/any1/wayvnc
NASUX_PKG_DESCRIPTION="A VNC server for wlroots based Wayland compositors"
NASUX_PKG_LICENSE="ISC"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.10.0"
NASUX_PKG_SRCURL=https://github.com/any1/wayvnc/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=fcfda018d0e07ec00a80071420c8cc2a75885dc6d5e55bb50a9b12353754338f
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libaml, libdrm, libjansson, libneatvnc, libpixman, libwayland, libxkbcommon"
TERMUX_PKG_BUILD_DEPENDS="libwayland-protocols, scdoc"
TERMUX_PKG_SUGGESTS="sway"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dman-pages=enabled
-Dscreencopy-dmabuf=disabled
-Dpam=disabled
"
