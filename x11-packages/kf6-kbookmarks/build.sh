NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kbookmarks'
NASUX_PKG_DESCRIPTION='Support for bookmarks and the XBEL format'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kbookmarks-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=75a43775ef03cb0c577c70d9605203789b3c75b786efa17a2e8c286d0c55fb93
NASUX_PKG_DEPENDS="kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfigwidgets (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
