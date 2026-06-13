NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/syndication'
NASUX_PKG_DESCRIPTION='RSS/Atom parser library'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/syndication-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=e28036eba9bf94f62466eaff66f49305fff9dd576a317df2474d6bfe5bfbc759
NASUX_PKG_DEPENDS="kf6-kcodecs (>= ${NASUX_PKG_VERSION%.*}), qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
