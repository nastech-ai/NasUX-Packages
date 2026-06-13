NASUX_PKG_HOMEPAGE="https://github.com/intel/libva"
NASUX_PKG_DESCRIPTION="Video Acceleration (VA) API for Linux"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.23.0"
NASUX_PKG_SRCURL="https://github.com/intel/libva/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=b10aceb30e93ddf13b2030eb70079574ba437be9b3b76065caf28a72c07e23e7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libdrm, libx11, libxext, libxfixes, libwayland"
TERMUX_PKG_BUILD_DEPENDS="libglvnd, mesa, mesa-dev"
termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper
}
