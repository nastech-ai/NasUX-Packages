NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/aurorae"
NASUX_PKG_DESCRIPTION="A themeable window decoration for KWin"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/aurorae-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=e7c3de710a75f99df8c4f80a741e3d1e90e5c5cadae44a3d180861d0f5c9dcf9
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="bash, kf6-kcmutils, kf6-kcolorscheme, kf6-kconfig, kf6-kcoreaddons, kdecoration, kf6-ki18n, kf6-kirigami, kf6-knewstuff, kf6-kpackage, kf6-ksvg, libc++, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
