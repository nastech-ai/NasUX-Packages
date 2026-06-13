NASUX_PKG_HOMEPAGE=https://github.com/fcitx/fcitx5-chinese-addons
NASUX_PKG_DESCRIPTION="Addons related to Chinese, including IME previous bundled inside fcitx4"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="5.1.12"
NASUX_PKG_SRCURL="https://github.com/fcitx/fcitx5-chinese-addons/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=b60de3b84dbb091f1301367ba9d2e8228735bf7a0ff125b738b8363c74b2ff32
NASUX_PKG_DEPENDS="boost, fcitx5, fcitx5-qt, libc++, libcurl, libime, libopencc, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="aosp-libs, boost-headers, extra-cmake-modules"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_BROWSER=OFF
-DENABLE_DATA=OFF
-DENABLE_TEST=OFF
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		nasux_setup_proot
		patch -p1 -i "$TERMUX_PKG_BUILDER_DIR"/im-pinyin-CMakeLists.txt.diff
	fi
}

termux_step_post_make_install() {
	echo -e "nasux - building fcitx5-chinese-addons dictionary..."
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=' -DENABLE_DATA=ON'
	termux_step_configure
	termux_step_make

	# from add_custom_commands in im/pinyin/CMakeLists.txt
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		pushd im/pinyin
		nasux-proot-run "${TERMUX_PREFIX}"/bin/libime_pinyindict "${TERMUX_PKG_SRCDIR}"/im/pinyin/chaizi.txt chaizi.dict
		popd
	fi

	termux_step_make_install
}
