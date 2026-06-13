NASUX_PKG_HOMEPAGE=https://github.com/flightlessmango/MangoHud/
NASUX_PKG_DESCRIPTION="A Vulkan overlay layer for monitoring FPS, temperatures, CPU/GPU load and more"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.8.4"
NASUX_PKG_SRCURL=https://github.com/flightlessmango/MangoHud/releases/download/v${NASUX_PKG_VERSION}/MangoHud-v${NASUX_PKG_VERSION}-Source.tar.xz
NASUX_PKG_SHA256=bbe5a2b976313c53f21dc24b98bbed03226589460a0cce20d923cb2c36c9d8b0
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libwayland, libx11, libxkbcommon"
TERMUX_PKG_BUILD_DEPENDS="dbus, libandroid-wordexp, nlohmann-json"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddynamic_string_tokens=false
-Dwith_xnvctrl=disabled
"

termux_step_pre_configure() {
	# Workaround linker error wit version script
	LDFLAGS+=" -Wl,--undefined-version"

	CFLAGS+=" -DRTLD_DEEPBIND=RTLD_NOW"
}
