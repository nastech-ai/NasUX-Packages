NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/plasma-nm"
NASUX_PKG_DESCRIPTION="Plasma applet written in QML for managing network connections"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/plasma-nm-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256="c92d09d2978dbbe6b5c897beac822cd053c17473f1d61506e152bfcb46b70b9b"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="glib, kirigami-addons, kf6-kcmutils, kf6-kcolorscheme, kf6-kcompletion, kf6-kconfig, kf6-kcoreaddons, kf6-kdbusaddons, kf6-kdeclarative, kf6-ki18n, kf6-kio, kf6-kirigami, kf6-kjobwidgets, kf6-knotifications, kf6-kquickcharts, kf6-kservice, kf6-ksvg, kf6-kwallet, kf6-kwidgetsaddons, kf6-kwindowsystem, kf6-prison, kf6-solid, libc++, libplasma, plasma-workspace, qca, qcoro, qt6-qtbase, qt6-qtdeclarative, nasux-api"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_OPENCONNECT=OFF
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
