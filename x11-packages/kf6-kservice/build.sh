NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kservice'
NASUX_PKG_DESCRIPTION='Advanced plugin and service introspection'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kservice-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=3736c6d6cd389efc89adbcb64fe7ba25ffc9d62eb8eaf6393f42bb85f655a8c7
NASUX_PKG_DEPENDS="kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
