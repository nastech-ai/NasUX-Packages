NASUX_PKG_HOMEPAGE=https://github.com/fcitx/libime
NASUX_PKG_DESCRIPTION="A library to support generic input method implementation"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.1.14"
NASUX_PKG_SRCURL=git+https://github.com/fcitx/libime
TERMUX_PKG_GIT_BRANCH="${NASUX_PKG_VERSION}"
NASUX_PKG_DEPENDS="boost, fcitx5, libc++, libime-data, zstd"
TERMUX_PKG_BUILD_DEPENDS="aosp-libs, boost-headers, extra-cmake-modules"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_DATA=OFF
-DENABLE_TEST=OFF
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		nasux_setup_proot
		patch -p1 -i "$TERMUX_PKG_BUILDER_DIR"/data-CMakeLists.txt.diff
	fi
}

termux_step_post_make_install() {
	echo -e "nasux - building libime-data..."
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=' -DENABLE_DATA=ON'
	termux_step_configure
	termux_step_make

	# from add_custom_commands in data/CMakeLists.txt
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		pushd data
		nasux-proot-run ../bin/libime_slm_build_binary -s -a 22 -q 8 trie lm_sc.arpa sc.lm
		nasux-proot-run ../bin/libime_prediction sc.lm lm_sc.arpa sc.lm.predict
		nasux-proot-run ../bin/libime_pinyindict dict_sc.txt sc.dict
		nasux-proot-run ../bin/libime_pinyindict dict_extb.txt extb.dict
		declare -a files=(db.txt erbi.txt qxm.txt wanfeng.txt wbpy.txt wbx.txt zrm.txt cj.txt)
		for file in "${files[@]}"; do
			nasux-proot-run ../bin/libime_tabledict "$file" "${file/.txt/.main.dict}"
		done
		popd
	fi

	termux_step_make_install
}
