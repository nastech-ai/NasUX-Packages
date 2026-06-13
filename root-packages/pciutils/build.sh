NASUX_PKG_HOMEPAGE=https://mj.ucw.cz/sw/pciutils/
NASUX_PKG_DESCRIPTION="a collection of programs for inspecting and manipulating configuration of PCI devices"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.15.0"
NASUX_PKG_SRCURL=https://mj.ucw.cz/download/linux/pci/pciutils-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=a42e6e3f76fb6b1f6ac2e08cdd151f6bf78bc4f6312c591f4b6ec197582ede3a
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libandroid-glob, zlib"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"

	# ${str@U} returns upper case string
	local _ARCH=${NASUX_ARCH@U}
	if [[ ${_ARCH} == "ARM" ]]; then
		_ARCH="ARMV7L"
	fi

	local f
	for f in config.h config.mk; do
		local in=$TERMUX_PKG_BUILDER_DIR/${f}.in
		local out=$TERMUX_PKG_SRCDIR/lib/${f}
		sed \
			-e 's|@NASUX_PKG_VERSION@|'"$NASUX_PKG_VERSION"'|g' \
			-e 's|@NASUX_ARCH@|'"${_ARCH}"'|g' \
			-e 's|@TERMUX_PREFIX@|'"${TERMUX_PREFIX}"'|g' \
			${in} > ${out}
	done
}
