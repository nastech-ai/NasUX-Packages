NASUX_PKG_HOMEPAGE=https://www.falkon.org/
NASUX_PKG_DESCRIPTION="Cross-platform QtWebEngine Browser"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL=https://download.kde.org/stable/release-service/$NASUX_PKG_VERSION/src/falkon-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=8f9a6e3650b6ee3e22664cfd78207148ab7bf39c4a421193f69cd5bbccd819e2
NASUX_PKG_DEPENDS="kf6-karchive, kf6-ki18n, qt6-qtbase, qt6-qtdeclarative, qt6-qtwebsockets, qt6-qtwebengine"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"
# Qt6-Webengine doesn't support i686 on NasUX.
NASUX_PKG_EXCLUDED_ARCHES="i686"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_BUILD_TYPE=Release
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_PYTHON_SUPPORT=OFF
"
