NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kxmlgui'
NASUX_PKG_DESCRIPTION='User configurable main windows'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kxmlgui-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=36d5c9cf8a851a63c1064d6a9987e961c0860ebd1396cda99119e570847df721
NASUX_PKG_DEPENDS="kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfigwidgets (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kglobalaccel (>= ${NASUX_PKG_VERSION%.*}), kf6-kguiaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kiconthemes (>= ${NASUX_PKG_VERSION%.*}), kf6-kitemviews (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
