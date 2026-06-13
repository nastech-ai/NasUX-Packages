NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kjobwidgets'
NASUX_PKG_DESCRIPTION='Widgets for tracking KJob instances'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kjobwidgets-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=3149cd07d82204c6bfa8d86c590bf0c92905e1b5b075c7b543540916a61d7a03
NASUX_PKG_DEPENDS="kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-knotifications (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_PYTHON_BINDINGS=OFF
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
