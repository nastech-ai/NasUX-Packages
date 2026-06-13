NASUX_PKG_HOMEPAGE="https://www.qt.io"
NASUX_PKG_DESCRIPTION="Qt6 module for speech functionality"
NASUX_PKG_LICENSE="GPL-3.0-only, LGPL-3.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.11.1"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${NASUX_PKG_VERSION%.*}/${NASUX_PKG_VERSION}/submodules/qtspeech-everywhere-src-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=c035c318012025875a653245701a23d3807e8e46b8bf7987877842219c273f14
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtmultimedia, speechd"
TERMUX_PKG_BUILD_DEPENDS="cmake, git, ninja, qt6-qtdeclarative"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
