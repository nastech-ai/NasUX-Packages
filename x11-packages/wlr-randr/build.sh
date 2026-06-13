NASUX_PKG_HOMEPAGE=https://gitlab.freedesktop.org/emersion/wlr-randr
NASUX_PKG_DESCRIPTION="Utility to manage outputs of a Wayland compositor"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@JesusChapman <jesuschapmandev@outlook.com>"
NASUX_PKG_VERSION=0.5.0
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://gitlab.freedesktop.org/emersion/wlr-randr/-/archive/v${NASUX_PKG_VERSION}/wlr-randr-v${NASUX_PKG_VERSION}.zip
NASUX_PKG_SHA256=23382ce43bb7fe0fdca6b09daeec6b320018824c6cdbed5048ff36dc7fcd0fd5
NASUX_PKG_DEPENDS="libwayland"
TERMUX_PKG_BUILD_DEPENDS="libwayland-cross-scanner"

termux_step_pre_configure(){
	nasux_setup_wayland_cross_pkg_config_wrapper
}
