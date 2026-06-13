## Note: APG project seems dead. Official homepage & src urls
## disappeared.

NASUX_PKG_HOMEPAGE=http://www.adel.nursat.kz/apg/index.shtml
NASUX_PKG_DESCRIPTION="Automated Password Generator"
NASUX_PKG_LICENSE="BSD"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2.3.0b
TERMUX_PKG_REVISION=4
NASUX_PKG_SRCURL=https://github.com/nasux/distfiles/releases/download/2021.01.04/apg-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=d1e52029709e2d7f9cb99bedce3e02ee7a63cff7b8e2b4c2bc55b3dc03c28b92
NASUX_PKG_DEPENDS="libcrypt"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_post_extract_package() {
	# Fix permissions.
	find "$TERMUX_PKG_SRCDIR" -type d -exec chmod 700 "{}" \;
	find "$TERMUX_PKG_SRCDIR" -type f -executable -exec chmod 700 "{}" \;
	find "$TERMUX_PKG_SRCDIR" -type f ! -executable -exec chmod 600 "{}" \;
}
