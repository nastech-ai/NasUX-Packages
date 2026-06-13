NASUX_PKG_HOMEPAGE=https://codeberg.org/dnkl/foot
NASUX_PKG_DESCRIPTION="Fast, lightweight and minimalistic Wayland terminal emulator"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.27.0"
NASUX_PKG_SRCURL=https://codeberg.org/dnkl/foot/archive/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=4e6131cc859ec6a36569f1978cf3617cc3836a681d13d228ded1b4885dab7770
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libandroid-support, fontconfig, freetype, libfcft, libpixman, libwayland, libxkbcommon, utf8proc"
TERMUX_PKG_BUILD_DEPENDS="libtllist, libwayland-protocols, libwayland-cross-scanner, scdoc, xdg-utils"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddocs=enabled
-Dterminfo-base-name=foot-extra
-Dtests=false
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper

	# libandroid-support provides this
	export CPPFLAGS+=" -D__STDC_ISO_10646__=201103L"

	cp "${TERMUX_PKG_BUILDER_DIR}/reallocarray.c" "${TERMUX_PKG_SRCDIR}"
}
