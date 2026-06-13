NASUX_PKG_HOMEPAGE=https://bundles.openttdcoop.org/opensfx
NASUX_PKG_DESCRIPTION="Free sound set for openttd"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="license.txt"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0.3
NASUX_PKG_SRCURL=https://cdn.openttd.org/opensfx-releases/$NASUX_PKG_VERSION/opensfx-$NASUX_PKG_VERSION-all.zip
NASUX_PKG_SHA256=e0a218b7dd9438e701503b0f84c25a97c1c11b7c2f025323fb19d6db16ef3759
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_get_source() {
	termux_download \
		"$NASUX_PKG_SRCURL" \
		"$TERMUX_PKG_CACHEDIR/opensfx-$NASUX_PKG_VERSION.zip" \
		"$NASUX_PKG_SHA256"
	unzip -d "$TERMUX_PKG_SRCDIR" "$TERMUX_PKG_CACHEDIR/opensfx-$NASUX_PKG_VERSION.zip"

	cd "$TERMUX_PKG_SRCDIR"
	tar xf "opensfx-$NASUX_PKG_VERSION.tar" --strip-components=1
}

termux_step_make_install() {
	install -d "$TERMUX_PREFIX"/share/openttd/data
	install -m600 opensfx.* "$TERMUX_PREFIX"/share/openttd/data
}
