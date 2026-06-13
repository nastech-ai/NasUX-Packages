NASUX_PKG_HOMEPAGE=https://github.com/lxqt/lxqt-menu-data
NASUX_PKG_DESCRIPTION="Menu files for LXQt Panel, Configuration Center and PCManFM-Qt/libfm-qt"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.4.0"
NASUX_PKG_SRCURL="https://github.com/lxqt/lxqt-menu-data/releases/download/$NASUX_PKG_VERSION/lxqt-menu-data-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=3487e47562dc19e63358a50c81e51cd0cf1a020397943cadd8db35daeb4866cc
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qtbase, qt6-qttools"
TERMUX_PKG_BREAKS="lxqt-panel (<= 1.3.0)"
TERMUX_PKG_CONFLICTS="lxqt-panel (<= 1.3.0)"
TERMUX_PKG_AUTO_UPDATE=true
