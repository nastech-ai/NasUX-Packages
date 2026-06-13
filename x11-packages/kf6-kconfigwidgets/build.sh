NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kconfigwidgets'
NASUX_PKG_DESCRIPTION='Widgets for KConfig'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kconfigwidgets-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=404ed0606dfb13cc44c36deaf5f880eeec75018ae878125dabf83f32efeb0a7f
NASUX_PKG_DEPENDS="kf6-kcodecs (>= ${NASUX_PKG_VERSION%.*}), kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
