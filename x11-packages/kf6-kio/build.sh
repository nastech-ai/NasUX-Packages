NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kio'
NASUX_PKG_DESCRIPTION='Resource and network access abstraction'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kio-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=fc201b02c277a35ce81414b1de7e6f851e46b0b5d43beb784936a4a6dc6167d0
NASUX_PKG_DEPENDS="kf6-karchive (>= ${NASUX_PKG_VERSION%.*}), kf6-kauth (>= ${NASUX_PKG_VERSION%.*}), kf6-kbookmarks (>= ${NASUX_PKG_VERSION%.*}), kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kcompletion (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kdbusaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kguiaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-kiconthemes (>= ${NASUX_PKG_VERSION%.*}), kf6-kitemviews (>= ${NASUX_PKG_VERSION%.*}), kf6-kjobwidgets (>= ${NASUX_PKG_VERSION%.*}), kf6-kservice (>= ${NASUX_PKG_VERSION%.*}), kf6-kwallet (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kwindowsystem (>= ${NASUX_PKG_VERSION%.*}), kf6-solid (>= ${NASUX_PKG_VERSION%.*}), libacl, libandroid-shmem, libc++, libmount, libxml2, libxslt, qt6-qtbase, util-linux"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), kf6-kdoctools (>= ${NASUX_PKG_VERSION%.*}), kf6-kdoctools-cross-tools (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-shmem"
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DKF6_HOST_TOOLING=$TERMUX_PREFIX/opt/kf6/cross/lib/cmake"
	fi
}
