NASUX_PKG_HOMEPAGE=https://nextcloud.com/
NASUX_PKG_DESCRIPTION="Command-line client tool for Nextcloud."
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="33.0.5"
NASUX_PKG_SRCURL="https://github.com/nextcloud/desktop/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=fcca0b2b74b9f68eec6df30a22a9f7017670775c8ae180c3536241f9d23ac8ca
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="dbus, dbus-glib, libc++, libp11, openssl, qtkeychain, qt6-qtbase, inotify-tools, libsqlite, kdsingleapplication, kf6-karchive, qt6-qtwebsockets, qt6-qtsvg, qt6-qt5compat"
TERMUX_PKG_BUILD_DEPENDS="qt6-qtbase-cross-tools, qt6-qttools-cross-tools, pkg-config, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_GUI=OFF
-DBUILD_SHELL_INTEGRATION=OFF
-DBUILD_WITH_WEBENGINE=OFF
-DBUILD_UPDATER=OFF
-DTOKEN_AUTH_ONLY=OFF
-DBUILD_TESTING=OFF
"
