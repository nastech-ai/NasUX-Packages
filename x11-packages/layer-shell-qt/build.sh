NASUX_PKG_HOMEPAGE=https://invent.kde.org/plasma/layer-shell-qt
NASUX_PKG_DESCRIPTION="Qt component to allow applications to make use of the Wayland wl-layer-shell protocol"
NASUX_PKG_LICENSE="LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
NASUX_PKG_SRCURL=https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/layer-shell-qt-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=e8c145545ac49d5325f16ff710b521deab6e5b9745fcc18ab431252224a8f982
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtdeclarative, libwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, libwayland-cross-scanner, libwayland-protocols"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper
}
