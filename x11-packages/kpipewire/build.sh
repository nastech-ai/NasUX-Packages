NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/kpipewire"
NASUX_PKG_DESCRIPTION="Components relating to pipewire use in Plasma"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/kpipewire-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=7aed7f721c5ba05f20812ea8cde047dcc6e3375ba521bbddd82c25915abf334d
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, ffmpeg, kf6-kcoreaddons, kf6-ki18n, libdrm, libepoxy, pipewire, libva, mesa, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
