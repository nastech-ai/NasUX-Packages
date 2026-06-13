NASUX_PKG_HOMEPAGE=https://www.openexr.com/
NASUX_PKG_DESCRIPTION="Provides the specification and reference implementation of the EXR file format"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.5.8
NASUX_PKG_SRCURL=https://github.com/AcademySoftwareFoundation/openexr/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=db261a7fcc046ec6634e4c5696a2fc2ce8b55f50aac6abe034308f54c8495f55
NASUX_PKG_DEPENDS="zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_TESTING=OFF
-DPYILMBASE_ENABLE=OFF
"

termux_step_pre_configure() {
	case "$NASUX_PKG_VERSION" in
		2.*|*:2.* ) ;;
		* ) termux_error_exit "Invalid version '$NASUX_PKG_VERSION' for package '$TERMUX_PKG_NAME'." ;;
	esac
}
