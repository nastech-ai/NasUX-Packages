NASUX_PKG_HOMEPAGE=https://dev.openttdcoop.org/projects/opengfx
NASUX_PKG_DESCRIPTION="A free graphics set for openttd"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=7.1
NASUX_PKG_SRCURL=https://cdn.openttd.org/opengfx-releases/$NASUX_PKG_VERSION/opengfx-$NASUX_PKG_VERSION-all.zip
NASUX_PKG_SHA256=928fcf34efd0719a3560cbab6821d71ce686b6315e8825360fba87a7a94d7846
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_get_source() {
	termux_download \
		"$NASUX_PKG_SRCURL" \
		"$TERMUX_PKG_CACHEDIR/opengfx-$NASUX_PKG_VERSION.zip" \
		"$NASUX_PKG_SHA256"
	unzip -d "$TERMUX_PKG_SRCDIR" "$TERMUX_PKG_CACHEDIR/opengfx-$NASUX_PKG_VERSION.zip"

	cd "$TERMUX_PKG_SRCDIR"
	tar xf "opengfx-$NASUX_PKG_VERSION.tar" --strip-components=1
}

termux_step_make_install() {
	install -d "$TERMUX_PREFIX"/share/openttd/data
	install -m600 *.grf "$TERMUX_PREFIX"/share/openttd/data
	install -m600 *.obg "$TERMUX_PREFIX"/share/openttd/data
}
