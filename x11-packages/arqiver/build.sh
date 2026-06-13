NASUX_PKG_HOMEPAGE=https://github.com/tsujan/Arqiver
NASUX_PKG_DESCRIPTION="A simple Qt archiver manager based on libarchive"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@Yisus7u7"
NASUX_PKG_VERSION="1.0.2"
NASUX_PKG_SRCURL=https://github.com/tsujan/Arqiver/releases/download/V${NASUX_PKG_VERSION}/Arqiver-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=9fc3645a5664aaa1898755fc8cdc5b8275d76736fd038f5c88f93361aec117ee
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_RECOMMENDS="bsdtar, gzip, hicolor-icon-theme"
TERMUX_PKG_BUILD_DEPENDS="qt6-qtbase-cross-tools, qt6-qttools-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DENABLE_QT5=OFF"
