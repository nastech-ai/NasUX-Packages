NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kpeople"
NASUX_PKG_DESCRIPTION="A library that provides access to all contacts and the people who hold them"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kpeople-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=586407310370f9a7fe88773c90e83e227bec7f5f6f860df6540d69db425581d6
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-kcontacts, kf6-kcoreaddons, kf6-ki18n, kf6-kitemviews, kf6-kwidgetsaddons, libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qtdeclarative, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
