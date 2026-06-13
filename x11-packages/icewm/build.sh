NASUX_PKG_HOMEPAGE=https://ice-wm.org/
NASUX_PKG_DESCRIPTION="Window manager with goals of speed, simplicity, and usability"
NASUX_PKG_LICENSE="LGPL-2.0-only"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="4.0.0"
NASUX_PKG_SRCURL="https://github.com/ice-wm/icewm/releases/download/$NASUX_PKG_VERSION/icewm-$NASUX_PKG_VERSION.tar.lz"
NASUX_PKG_SHA256=b8b22a2f0460c51f92ba785102bd122707966a618bb872c95fa6e6801d620cd1
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="alsa-lib, imlib2, libandroid-glob, libandroid-wordexp, libice, librsvg, libsm, libsndfile, libxcomposite, libxcursor, libxdamage, libxinerama, libxrandr, libxres, xdg-utils"
TERMUX_PKG_BUILD_DEPENDS="aosp-libs"
TERMUX_PKG_SUGGESTS="xdg-menu"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		nasux_setup_proot
		patch="$TERMUX_PKG_BUILDER_DIR/genpref.diff"
		echo "Applying patch: $(basename "$patch")"
		patch --silent -p1 < "$patch"
	fi

	LDFLAGS+=" -landroid-glob -landroid-wordexp"

	# Every instance of '/usr' in the code is replaceable with '$TERMUX_PREFIX'.
	# Every instance of 'xdg-open' in the code is replaceable with 'xdg-utils-xdg-open'.
	find "$TERMUX_PKG_SRCDIR" -type f | \
		xargs -n 1 sed -i \
		-e "s|/usr|$TERMUX_PREFIX|g" \
		-e "s|/etc|$TERMUX_PREFIX/etc|g" \
		-e "s|xdg-open|xdg-utils-xdg-open|g"
}
