NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="Building tools required by LXQt project"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_LICENSE_FILE="BSD-3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-build-tools/releases/download/${NASUX_PKG_VERSION}/lxqt-build-tools-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=14999ff954e820a23af44389b9f7c65f9e58b2f1c0a559f0badd38f9b459aee6
NASUX_PKG_DEPENDS="qt6-qttools"
TERMUX_PKG_BUILD_DEPENDS="qt6-qtbase, qt6-qtbase-cross-tools"
TERMUX_PKG_ANTI_BUILD_DEPENDS="qt6-qttools"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DLXQT_ETC_XDG_DIR=${TERMUX_PREFIX}/etc/xdg
-DQt6CoreTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6CoreTools
"
