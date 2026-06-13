NASUX_PKG_HOMEPAGE=https://github.com/aristocratos/btop
NASUX_PKG_DESCRIPTION="Resource monitor that shows usage and stats for processor, memory, disks, network and processes."
NASUX_PKG_LICENSE="Apache-2.0"
NASUX_PKG_MAINTAINER="@tstein <me@tedstein.net>"
NASUX_PKG_VERSION="1.4.7"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_SRCURL=https://github.com/aristocratos/btop/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=933de2e4d1b2211a638be463eb6e8616891bfba73aef5d38060bd8319baeefc6
TERMUX_PKG_BUILD_DEPENDS="aosp-libs, lowdown"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
	-DBTOP_LTO=OFF
	-DBTOP_GPU=OFF
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "true" ]]; then
		return
	fi

	nasux_setup_proot
	mkdir "${TERMUX_PKG_TMPDIR}/bin"
	printf '%s\ntermux-proot-run %s "$@"\n' \
		"#!/bin/sh" \
		"${TERMUX_PREFIX}/bin/lowdown" \
	> "${TERMUX_PKG_TMPDIR}/bin/lowdown"
	chmod +x "${TERMUX_PKG_TMPDIR}/bin/lowdown"

	PATH="${TERMUX_PKG_TMPDIR}/bin:$PATH"

	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DLOWDOWN_EXECUTABLE=${TERMUX_PKG_TMPDIR}/bin/lowdown"
}
