NASUX_PKG_HOMEPAGE=https://github.com/qtwebkit/qtwebkit
NASUX_PKG_DESCRIPTION="Qt 5 WebKit Library"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.212.0-alpha4"
TERMUX_PKG_REVISION=16
NASUX_PKG_SRCURL="https://github.com/qtwebkit/qtwebkit/releases/download/qtwebkit-${NASUX_PKG_VERSION}/qtwebkit-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=9ca126da9273664dd23a3ccd0c9bebceb7bb534bddd743db31caf6a5a6d4a9e6
NASUX_PKG_DEPENDS="libc++, libhyphen, libicu, libjpeg-turbo, libpng, libsqlite, libwebp, libx11, libxml2, libxslt, qt5-qtbase, qt5-qtdeclarative, qt5-qtlocation, qt5-qtmultimedia, qt5-qtsensors, zlib"
TERMUX_PKG_BUILD_DEPENDS="libxcomposite, qt5-qtbase-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DPORT=Qt -DUSE_LD_GOLD=OFF -DUSE_GSTREAMER=OFF -DUSE_QT_MULTIMEDIA=ON -DENABLE_OPENGL=OFF -DENABLE_SAMPLING_PROFILER=OFF -DENABLE_WEBKIT2=OFF"

# TODO SAMPLING_PROFILER requires glibc. We might be able to patch the source to make it work with bionic
