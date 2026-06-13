NASUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
NASUX_PKG_DESCRIPTION="X.org cyrillic fonts"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.0.4"
# the ones with other versions just have to be like that because they don't have a version 1.0.4
NASUX_PKG_SRCURL=("https://xorg.freedesktop.org/releases/individual/font/font-cronyx-cyrillic-${NASUX_PKG_VERSION}.tar.xz"
					"https://xorg.freedesktop.org/releases/individual/font/font-misc-cyrillic-${NASUX_PKG_VERSION}.tar.xz"
					"https://xorg.freedesktop.org/releases/individual/font/font-screen-cyrillic-1.0.5.tar.xz"
					"https://xorg.freedesktop.org/releases/individual/font/font-winitzki-cyrillic-${NASUX_PKG_VERSION}.tar.xz")
NASUX_PKG_SHA256=(dc0781ce0dcbffdbf6aae1a00173a13403f92b0de925bca5a9e117e4e2d6b789
					76021a7f53064001914a57fd08efae57f76b68f0a24dca8ab1b245474ee8e993
					8f758bb8cd580c7e655487d1d0db69d319acae54d932b295d96d9d9b83fde5c0
					3b6d82122dc14776e3afcd877833a7834e1f900c53fc1c7bb2d67c781cfa97a8)
NASUX_PKG_LICENSE_FILE="
font-cronyx-cyrillic-$NASUX_PKG_VERSION/COPYING
font-misc-cyrillic-$NASUX_PKG_VERSION/COPYING
font-screen-cyrillic-1.0.5/COPYING
font-winitzki-cyrillic-$NASUX_PKG_VERSION/COPYING
"
NASUX_PKG_DEPENDS="fontconfig-utils, xorg-font-util, xorg-fonts-alias, xorg-fonts-encodings, xorg-mkfontscale"
TERMUX_PKG_CONFLICTS="xorg-fonts-lite"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
NASUX_PKG_BUILD_IN_SRC=true

termux_step_get_source() {
	mkdir -p "$TERMUX_PKG_SRCDIR"
	local i
	for i in {0..3}; do
		termux_download "${NASUX_PKG_SRCURL[i]}" "$(basename "${NASUX_PKG_SRCURL[i]}")" "${NASUX_PKG_SHA256[i]}"
		tar xf "$(basename "${NASUX_PKG_SRCURL[i]}")" -C "${TERMUX_PKG_SRCDIR}"
	done
}

termux_step_make_install() {
	local i
	for i in {0..3}; do
		local file=$(basename "${NASUX_PKG_SRCURL[i]}")
		local dir="${TERMUX_PKG_SRCDIR}/${file%%.tar.*}"

		pushd "${dir}"
		./configure \
			--prefix="${TERMUX_PREFIX}" \
			--host="${TERMUX_HOST_PLATFORM}" \
			--with-fontdir="${TERMUX_PREFIX}/share/fonts/cyrillic"
		make -j "${TERMUX_PKG_MAKE_PROCESSES}"
		make install
		popd
	done
}

termux_step_post_massage() {
	rm -f share/fonts/cyrillic/fonts.*
}
