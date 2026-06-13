NASUX_PKG_HOMEPAGE=https://otter-browser.org
NASUX_PKG_DESCRIPTION="Web browser with aspects of Opera (12.x)"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@licy183"
NASUX_PKG_VERSION=1.0.03
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL="https://github.com/OtterBrowser/otter-browser/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=2b07d22a5d921ec0b3d29a680eb913c3fe0713ca7d10e37873a3802d1a5154a3
NASUX_PKG_DEPENDS="hunspell, libc++, qt5-qtbase, qt5-qtdeclarative, qt5-qtmultimedia, qt5-qtsvg, qt5-qtwebengine, qt5-qtxmlpatterns"
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_QTWEBENGINE=ON
-DENABLE_QTWEBKIT=OFF
-DENABLE_CRASHREPORTS=OFF
-DENABLE_SPELLCHECK=ON
"
