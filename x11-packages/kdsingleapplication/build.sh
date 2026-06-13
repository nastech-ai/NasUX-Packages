NASUX_PKG_HOMEPAGE="https://github.com/KDAB/KDSingleApplication"
NASUX_PKG_DESCRIPTION="KDAB's helper class for single-instance policy applications"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.2.1"
NASUX_PKG_SRCURL="https://github.com/KDAB/KDSingleApplication/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=e3254ce9dc5ecf6d61ef83264bc61d486a307f0e3c9ed1bb2176f068cdbcbe09
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libc++, qt6-qtbase"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DKDSingleApplication_QT6=ON
"
