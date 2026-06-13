NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/libplasma"
NASUX_PKG_DESCRIPTION="Plasma library and runtime components"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/libplasma-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=82e02b2098f4bac90f28cdd4f9d3a4da4557440ec8347220d8fee293c1f98d8b
NASUX_PKG_DEPENDS="kf6-kcolorscheme, kf6-kconfig, kf6-kcoreaddons, kf6-kglobalaccel, kf6-kguiaddons, kf6-ki18n, kf6-kiconthemes, kf6-kio, kf6-kirigami, kf6-knotifications, kf6-kpackage, kf6-ksvg, kf6-kwidgetsaddons, kf6-kwindowsystem, libc++, libglvnd, libwayland, libx11, libxcb, plasma-activities, qt6-qt5compat, qt6-qtbase, qt6-qtdeclarative, qt6-qtwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, plasma-wayland-protocols, qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
