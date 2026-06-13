NASUX_PKG_HOMEPAGE=https://avrdudes.github.io/avrdude/
NASUX_PKG_DESCRIPTION="Software for programming Microchip (former Atmel) AVR Microcontrollers"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="8.1"
NASUX_PKG_SRCURL=https://github.com/avrdudes/avrdude/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=2d3016edd5281ea09627c20b865e605d4f5354fe98f269ce20522a5b910ab399
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libusb"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
"
