NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kcompletion"
NASUX_PKG_DESCRIPTION='Text completion helpers and widgets'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kcompletion-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=006864dcba5d5fc87b4ca5dcc1239538657a5d052057bae5d3bc3e71eaba0551
NASUX_PKG_DEPENDS="kf6-kcodecs (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
