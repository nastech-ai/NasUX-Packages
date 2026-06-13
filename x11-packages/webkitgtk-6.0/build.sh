NASUX_PKG_HOMEPAGE=https://webkitgtk.org
NASUX_PKG_DESCRIPTION="A full-featured port of the WebKit rendering engine"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.52.1"
NASUX_PKG_SRCURL="https://webkitgtk.org/releases/webkitgtk-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=238e7d53205b14004add7eeb4293c94d6fbf7097b3efef7cee5519e5c121a904
NASUX_PKG_DEPENDS="enchant, fontconfig, freetype, glib, gst-plugins-bad, gst-plugins-base, gst-plugins-good, gstreamer, gtk4, harfbuzz, harfbuzz-icu, libavif, libc++, libcairo, libdrm, libgcrypt, libhyphen, libicu, libjpeg-turbo, libpng, libsoup3, libtasn1, libwebp, libxml2, libx11, libxcomposite, libxdamage, libxslt, libxt, littlecms, openjpeg, pango, woff2, zlib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, xorgproto"
NASUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false

termux_step_post_get_source() {
	# Version guard
	local ver_e=${NASUX_PKG_VERSION#*:}
	local ver_x=$(. $NASUX_SCRIPTDIR/x11-packages/webkit2gtk-4.1/build.sh; echo ${NASUX_PKG_VERSION#*:})
	if [ "${ver_e}" != "${ver_x}" ]; then
		termux_error_exit "Version mismatch between webkit2gtk-4.1 and webkitgtk-6.0."
	fi

	local p
	for p in $NASUX_SCRIPTDIR/x11-packages/webkit2gtk-4.1/*.patch; do
		echo "Applying $(basename "${p}")"
		sed "s|@TERMUX_PREFIX@|${TERMUX_PREFIX}|g" "${p}" \
			| patch --silent -p1
	done
}

termux_step_pre_configure() {
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS=$(
		. $NASUX_SCRIPTDIR/x11-packages/webkit2gtk-4.1/build.sh
		echo $TERMUX_PKG_EXTRA_CONFIGURE_ARGS
	)
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+="
		-DUSE_GTK4=ON
		-DENABLE_WEBDRIVER=OFF
	"

	nasux_setup_gir

	if [ "$TERMUX_ON_DEVICE_BUILD" = "true" ]; then
		export CXXFLAGS+=" -Wno-missing-template-arg-list-after-template-kw"
	fi

	# Workaround for https://github.com/android/ndk/issues/1973
	[ "$NASUX_ARCH" == "arm" ] && sed -i '/#define MUST_TAIL_CALL \[\[clang::musttail]]/d' Source/WTF/wtf/Compiler.h

	CPPFLAGS+=" -DHAVE_MISSING_STD_FILESYSTEM_PATH_CONSTRUCTOR"
	CPPFLAGS+=" -DCMS_NO_REGISTER_KEYWORD"
	CPPFLAGS+=" -I${TERMUX_PREFIX}/lib/gstreamer-1.0/include"
	export PATH="${NASUX_SCRIPTDIR}/scripts/bin:$PATH" # for ldd
}

termux_step_post_massage() {
	local _GUARD_FILE="lib/lib${TERMUX_PKG_NAME}.so"
	if [ ! -e "${_GUARD_FILE}" ]; then
		termux_error_exit "file ${_GUARD_FILE} not found."
	fi
}
