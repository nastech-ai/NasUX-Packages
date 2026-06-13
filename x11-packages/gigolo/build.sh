NASUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/gigolo/start
NASUX_PKG_DESCRIPTION="Gigolo is a frontend to easily manage connections to local and remote filesystems using GIO/GVfs."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.6.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://archive.xfce.org/src/apps/gigolo/${NASUX_PKG_VERSION%.*}/gigolo-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=f27dbb51abe8144c1b981f2d820ad1b279c1bc4623d7333b7d4f5f4777eb45ed
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, gtk3"

termux_step_pre_configure() {
	nasux_setup_glib_cross_pkg_config_wrapper
}
