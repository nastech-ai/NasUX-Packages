NASUX_PKG_HOMEPAGE=https://bundles.openttdcoop.org/openmsx
NASUX_PKG_DESCRIPTION="Free music set for openttd"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.4.2
NASUX_PKG_SRCURL=https://cdn.openttd.org/openmsx-releases/$NASUX_PKG_VERSION/openmsx-$NASUX_PKG_VERSION-all.zip
NASUX_PKG_SHA256=5a4277a2e62d87f2952ea5020dc20fb2f6ffafdccf9913fbf35ad45ee30ec762
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_get_source() {
	termux_download \
		"$NASUX_PKG_SRCURL" \
		"$TERMUX_PKG_CACHEDIR/openmsx-$NASUX_PKG_VERSION.zip" \
		"$NASUX_PKG_SHA256"
	unzip -d "$TERMUX_PKG_SRCDIR" "$TERMUX_PKG_CACHEDIR/openmsx-$NASUX_PKG_VERSION.zip"

	cd "$TERMUX_PKG_SRCDIR"
	tar xf "openmsx-$NASUX_PKG_VERSION.tar" --strip-components=1
}

termux_step_make_install() {
	install -d "$TERMUX_PREFIX"/share/openttd/data
	install -m600 openmsx.obm "$TERMUX_PREFIX"/share/openttd/data
	install -m600 *.mid "$TERMUX_PREFIX"/share/openttd/data
}
