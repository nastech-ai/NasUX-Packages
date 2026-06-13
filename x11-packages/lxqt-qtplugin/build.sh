NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="LXQt platform integration plugin for Qt"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-qtplugin/releases/download/${NASUX_PKG_VERSION}/lxqt-qtplugin-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=8c36b572613ccb0e35d39e87c044ac07e115c2de85bbdb646ffe4533af788a45
NASUX_PKG_DEPENDS="libc++, libdbusmenu-lxqt, libfm-qt, libqtxdg, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-D_QT_PLUGINS_DIR=${TERMUX_PREFIX}/lib/qt6/plugins
"
