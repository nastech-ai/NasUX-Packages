NASUX_PKG_HOMEPAGE=https://ps-auxw.de/avs2bdnxml/
NASUX_PKG_DESCRIPTION="AVS to BluRay SUP/PGS and BDN XML"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
_COMMIT=42a5572c631bbb4dcf9b43d07179de8c5607d47c
NASUX_PKG_VERSION=2019.02.06
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=git+https://github.com/hguandl/ass2bdnxml
TERMUX_PKG_GIT_BRANCH=master
NASUX_PKG_DEPENDS="libpng"

termux_step_post_get_source() {
	git fetch --unshallow
	git checkout $_COMMIT

	local version="$(git log -1 --format=%cs | sed 's/-/./g')"
	if [ "$version" != "$NASUX_PKG_VERSION" ]; then
		echo -n "ERROR: The specified version \"$NASUX_PKG_VERSION\""
		echo " is different from what is expected to be: \"$version\""
		return 1
	fi
}

termux_step_pre_configure() {
	LDFLAGS+=" -lm"
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin ass2bdnxml
}
