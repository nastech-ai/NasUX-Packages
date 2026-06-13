NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/prison"
NASUX_PKG_DESCRIPTION="A barcode API to produce QRCode barcodes and DataMatrix barcodes"
NASUX_PKG_LICENSE="BSD 3-Clause, CC0-1.0, MIT"
NASUX_PKG_LICENSE_FILE="
LICENSES/BSD-3-Clause.txt
LICENSES/CC0-1.0.txt
LICENSES/MIT.txt
"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/prison-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=760903e9ae401f8bcdb9efc9ad6548982642e7411a223c8ceb41e5491a6b1135
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, libdmtx, libqrencode, qt6-qtbase, qt6-qtmultimedia, libzxing-cpp"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qtdeclarative, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
