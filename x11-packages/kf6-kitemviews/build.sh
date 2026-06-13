NASUX_PKG_HOMEPAGE="https://invent.kde.org/frameworks/kitemviews"
NASUX_PKG_DESCRIPTION="Set of item views extending the Qt model-view framework (KDE)"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="6.27.0"
NASUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${NASUX_PKG_VERSION%.*}/kitemviews-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=7a286f147144714aa9e8f567dd5a0638a8fb81df97a34a0112f725b72aa36979
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${NASUX_PKG_VERSION%.*}), qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
