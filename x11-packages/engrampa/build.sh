NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="File archiver for MATE"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.3"
NASUX_PKG_SRCURL="https://github.com/mate-desktop/engrampa/releases/download/v$NASUX_PKG_VERSION/engrampa-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=d01b119981a3947f2072ef88319eca0f58600ff81dc933b5f4a7d8f0eb72e916
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gtk3, gzip, gettext, libarchive, tar, unzip, zip"
TERMUX_PKG_RECOMMENDS="caja, p7zip, unrar, brotli, rpm, cpio"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, caja, glib, mate-common, python"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-packagekit
"
