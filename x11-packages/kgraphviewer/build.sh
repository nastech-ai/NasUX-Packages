NASUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/kgraphviewer"
NASUX_PKG_DESCRIPTION="A Graphviz dot graph file viewer"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="26.04.2"
NASUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${NASUX_PKG_VERSION}/src/kgraphviewer-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=afae2f0e4befde8125c55b52be69089ebb02b5a1fd60075ac7536c3bf0d01c7e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="graphviz, kf6-kconfig, kf6-kconfigwidgets, kf6-kcoreaddons, kf6-ki18n, kf6-kparts, kf6-kwidgetsaddons, kf6-kxmlgui, libc++, qt6-qt5compat, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="boost, extra-cmake-modules, kf6-kdoctools"
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
