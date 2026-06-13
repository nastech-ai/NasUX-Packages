NASUX_PKG_HOMEPAGE=https://www.tug.org/texworks/
NASUX_PKG_DESCRIPTION="TeXworks is an environment for authoring TeX (LaTeX, ConTeXt, etc) documents"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.6.11"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/TeXworks/texworks/archive/refs/tags/release-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=f4017afb359e7c91824bd32b06a96426db88498dc43edfd5fe041599b2a30f19
NASUX_PKG_DEPENDS="hunspell, libc++, lua53, poppler-qt, qt6-qtbase, qt6-qtdeclarative, qt6-qt5compat, qt6-qttools, zlib"
TERMUX_PKG_BUILD_DEPENDS="git, qt6-qtbase-cross-tools, qt6-qtdeclarative-cross-tools, qt6-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DLUA_MATH_LIBRARY=
-DQT_DEFAULT_MAJOR_VERSION=6
"

termux_step_pre_configure() {
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+="
		-DCMAKE_CXX_COMPILER_CLANG_SCAN_DEPS=${TERMUX_STANDALONE_TOOLCHAIN}/bin/clang-scan-deps
	"
}
