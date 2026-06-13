NASUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/powerdevil"
NASUX_PKG_DESCRIPTION="Manages the power consumption settings of a Plasma Shell"
NASUX_PKG_LICENSE="LGPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.6.5"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${NASUX_PKG_VERSION}/powerdevil-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=b125f64e73cc8dcf9e3e7e3f154f4febb4406426597cad6ebbe8c48332e35e7b
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, plasma-activities, kf6-kauth, kf6-kcmutils, kf6-kconfig, kf6-kcoreaddons, kf6-kcrash, kf6-kdbusaddons, kf6-kglobalaccel, kf6-ki18n, kf6-kidletime, kf6-kirigami, kf6-kitemmodels, kf6-knotifications, kf6-kservice, kf6-kxmlgui, kinfocenter, libkscreen, libplasma, libxcb, plasma-workspace, qcoro, qt6-qtbase, qt6-qtdeclarative, kf6-solid, libwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, kf6-kdoctools, kf6-kdoctools-cross-tools, plasma-wayland-protocols"
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
