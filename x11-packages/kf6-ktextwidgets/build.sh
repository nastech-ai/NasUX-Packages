NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/ktextwidgets'
NASUX_PKG_DESCRIPTION='Advanced text editing widgets'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/ktextwidgets-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=03c35d8899559efc17b4f74e86eefd8358dafd7aa9311c89b9c09f7b35700756
NASUX_PKG_DEPENDS="kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kcompletion (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfigwidgets (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-sonnet (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DWITH_TEXT_TO_SPEECH=OFF
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
# qt6-qttexttospeech can be added to NASUX_PKG_DEPENDS when available, and -DWITH_TEXT_TO_SPEECH=OFF can be removed from TERMUX_PKG_EXTRA_CONFIGURE_ARGS
