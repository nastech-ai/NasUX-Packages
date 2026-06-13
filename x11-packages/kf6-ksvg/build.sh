NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/svg"
NASUX_PKG_DESCRIPTION="Components for handling SVGs"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/ksvg-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=68d43f014639ae6097012cdd67bdbbefd5425b17d2322d94f55be2b138613e0a
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="kf6-karchive, kf6-kcolorscheme, kf6-kconfig, kf6-kcoreaddons, kf6-kguiaddons, libc++, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, kf6-kirigami, qt6-qttools, qt6-qtdeclarative"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
