NASUX_PKG_HOMEPAGE="https://apps.kde.org/konversation/"
NASUX_PKG_DESCRIPTION="A user-friendly and fully-featured IRC client"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/konversation-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=fc9ec5c697e0043ea86868068df77d7b6c60aa8ecc9664db3873b85270f1a1f5
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="keditbookmarks, kf6-karchive, kf6-kbookmarks, kf6-kcodecs, kf6-kcolorscheme, kf6-kcompletion, kf6-kconfig, kf6-kconfigwidgets, kf6-kcoreaddons, kf6-kcrash, kf6-kdbusaddons, kf6-kglobalaccel, kf6-ki18n, kf6-kidletime, kf6-kio, kf6-kitemviews, kf6-knewstuff, kf6-knotifications, kf6-knotifyconfig, kf6-kparts, kf6-kstatusnotifieritem, kf6-ktextwidgets, kf6-kwallet, kf6-kwidgetsaddons, kf6-kwindowsystem, kf6-kxmlgui, libc++, perl, python, qca, qt6-qt5compat, qt6-qtbase, qt6-qtmultimedia, qt6-qttools"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, kf6-kdoctools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DKF6_HOST_TOOLING=$TERMUX_PREFIX/opt/kf6/cross/lib/cmake/"
	fi
}
