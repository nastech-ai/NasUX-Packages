NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="Official themes for the MATE desktop"
NASUX_PKG_LICENSE="LGPL-2.1-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.22.26"
NASUX_PKG_SRCURL="https://github.com/mate-desktop/mate-themes/releases/download/v$NASUX_PKG_VERSION/mate-themes-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=224e89d364eb3b73f1cf756d05494a98421a93cbf54349a2c85fc607eb755ed7
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, mate-common"
TERMUX_PKG_RECOMMENDS="mate-icon-theme"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_pre_configure() {
	# Remove check for gtk2
	sed -i '/Check GTK+ theme engines/,+3d' configure.ac

	autoreconf -fi
}
