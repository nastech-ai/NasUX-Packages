NASUX_PKG_HOMEPAGE="https://www.qt.io/"
NASUX_PKG_DESCRIPTION="Virtual keyboard framework"
NASUX_PKG_LICENSE="GPL-3.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.11.1"
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtvirtualkeyboard-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=a1c6967b326243b2ca8d50bc7b7f7852c3975d9aa6ce4b186ebdf35bb1007e1c
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, hunspell, qt6-qtbase, qt6-qtdeclarative, qt6-qtpositioning, qt6-qtmultimedia, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="cmake, git, ninja"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
