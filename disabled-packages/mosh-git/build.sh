NASUX_PKG_HOMEPAGE=https://mosh.org
NASUX_PKG_DESCRIPTION="Mobile shell that supports roaming and intelligent local echo. Bleeding edge git version."
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=2022.02.04
TERMUX_PKG_REVISION=2
TERMUX_PKG_GIT_BRANCH=master
NASUX_PKG_SRCURL=git+https://github.com/mobile-shell/mosh
NASUX_PKG_DEPENDS="libandroid-support, libc++, libprotobuf, ncurses, openssl, openssh, perl"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_CONFLICTS="mosh, mosh-perl"
TERMUX_PKG_REPLACES="mosh, mosh-perl"
TERMUX_PKG_PROVIDES="mosh, mosh-perl"
_COMMIT=dbe419d0e069df3fedc212d456449f64d0280c76

termux_step_pre_configure() {
	nasux_setup_protobuf
	./autogen.sh
}

termux_step_post_get_source() {
	git fetch --unshallow
	git checkout "$_COMMIT"

	local version
	version="$(git log -1 --format=%cs | sed 's/-/./g')"
	if [ "$version" != "$NASUX_PKG_VERSION" ]; then
		echo -n "ERROR: The specified version \"$NASUX_PKG_VERSION\""
		echo " is different from what is expected to be: \"$version\""
		return 1
	fi
}
