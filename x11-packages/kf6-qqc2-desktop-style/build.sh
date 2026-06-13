NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/qqc2-desktop-style'
NASUX_PKG_DESCRIPTION='A style for Qt Quick Controls 2 to make it follow your desktop theme'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/qqc2-desktop-style-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=6c005f06c5f8c4ac349238abf14999bb917215a8f7b8c51364e2fdd12e9e6355
NASUX_PKG_DEPENDS="kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kiconthemes (>= ${NASUX_PKG_VERSION%.*}), kf6-kirigami (>= ${NASUX_PKG_VERSION%.*}), kf6-sonnet (>= ${NASUX_PKG_VERSION%.*}), libc++, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_post_massage() {
	local file="lib/qt6/plugins/kf6/kirigami/platform/org.kde.desktop.so"
	if [[ ! -f "${TERMUX_PKG_MASSAGEDIR}${TERMUX_PREFIX}/${file}" ]]; then
		termux_error_exit "'$TERMUX_PKG_NAME' is malformed, '$file' must exist!"
	fi
}
