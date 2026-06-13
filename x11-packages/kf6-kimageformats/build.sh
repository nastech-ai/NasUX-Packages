NASUX_PKG_HOMEPAGE=https://invent.kde.org/frameworks/kimageformats
NASUX_PKG_DESCRIPTION="Image format plugins for KDE"
NASUX_PKG_LICENSE="LGPL-2.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kimageformats-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=6a9f40936ba946279063cbdaea473b9eb735b53047b0124c88aca7db17ccabac
NASUX_PKG_DEPENDS="imath, kf6-karchive (>= ${NASUX_PKG_VERSION%.*}), libavif, libc++, libheif, libjxl, libraw, openjpeg, openexr"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
-DKIMAGEFORMATS_HEIF=ON
"
