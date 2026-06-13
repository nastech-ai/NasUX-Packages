NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kitemmodels"
NASUX_PKG_DESCRIPTION="Set of item models extending the Qt model-view framework (KDE)"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kitemmodels-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=f5aec7198b161562616c139ed037e562e7ae6822b839f67c8c2e2f97678fc58e
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtdeclarative"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
