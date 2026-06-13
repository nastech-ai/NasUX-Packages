NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="Building tools required by LXQt project"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_LICENSE_FILE="BSD-3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.13.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-build-tools/releases/download/${NASUX_PKG_VERSION}/lxqt-build-tools-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=fd3c199d0d7c61f23040a45ead57cc9a4f888af5995371f6b0ce1fa902eb59ce
NASUX_PKG_DEPENDS="cmake, libc++, qt5-qtbase"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
# Prevent updating to latest lxqt2-build-tools
TERMUX_PKG_AUTO_UPDATE=false
