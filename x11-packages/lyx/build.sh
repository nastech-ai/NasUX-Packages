NASUX_PKG_HOMEPAGE=https://www.lyx.org
NASUX_PKG_DESCRIPTION="WYSIWYM (What You See Is What You Mean) Document Processor"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.5.1"
NASUX_PKG_SRCURL="https://ftp.lip6.fr/pub/lyx/stable/${NASUX_PKG_VERSION:0:3}.x/lyx-${NASUX_PKG_VERSION/p/-}.tar.xz"
NASUX_PKG_SHA256=f2a2387bcb3f2f546c1fc13e4c74cb4f8aa648706ce5788ef705dd51344d2cfd
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_SED_REGEXP='s/\./p/3; s/-/p/'
NASUX_PKG_DEPENDS="file, ghostscript, hunspell, imagemagick, libandroid-execinfo, libc++, libiconv, libxcb, lyx-data, qt5-qtbase, qt5-qtsvg, qt5-qtx11extras, texlive-bin, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, boost-headers, qt5-qtbase-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-build-type=rel
--without-included-boost
--without-aspell
--with-hunspell
"
TERMUX_PKG_RM_AFTER_INSTALL="share/lyx/examples"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-execinfo"

	# This is to allow the build script find the `moc` on cross-build host
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		export PATH="${TERMUX_PREFIX}/opt/qt/cross/bin:${PATH}"
	fi
}
