NASUX_PKG_HOMEPAGE='https://invent.kde.org/frameworks/kwallet'
NASUX_PKG_DESCRIPTION='Secure and unified container for user passwords'
NASUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kwallet-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=daa03acc40eec873bb450fd8116ae7c788b86a7ceebc9fa555b4a166feeb7983
NASUX_PKG_DEPENDS="gpgme, gpgmepp, kf6-kcolorscheme (>= ${NASUX_PKG_VERSION%.*}), kf6-kconfig (>= ${NASUX_PKG_VERSION%.*}), kf6-kcoreaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kcrash (>= ${NASUX_PKG_VERSION%.*}), kf6-kdbusaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-ki18n (>= ${NASUX_PKG_VERSION%.*}), kf6-knotifications (>= ${NASUX_PKG_VERSION%.*}), kf6-kwidgetsaddons (>= ${NASUX_PKG_VERSION%.*}), kf6-kwindowsystem (>= ${NASUX_PKG_VERSION%.*}), libc++, libgcrypt, libsecret, qca, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), kf6-kservice (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_RECOMMENDS="kwalletmanager"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
