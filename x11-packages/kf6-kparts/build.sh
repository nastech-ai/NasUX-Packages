NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kparts'
NASUX_PKG_DESCRIPTION='Document centric plugin system'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kparts-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=0c2ce39f110e12ff0882c725bee7455b9085489c12d31eb4b3164b150fb8de24
NASUX_PKG_DEPENDS="kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kio (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kxmlgui (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
