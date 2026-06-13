NASUX_PKG_HOMEPAGE=https://mate-terminal.mate-desktop.dev/
NASUX_PKG_DESCRIPTION="This is the MATE terminal emulator application"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.3"
NASUX_PKG_SRCURL=https://github.com/mate-desktop/mate-terminal/releases/download/v$NASUX_PKG_VERSION/mate-terminal-$NASUX_PKG_VERSION.tar.xz
NASUX_PKG_SHA256=9c7d4f884fc21342814a186020e04aa1a5d436e9a13ea128d132e232d04b07e4
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libvte, dconf, gtk3, libsm, mate-desktop"

termux_step_pre_configure() {
	autoreconf -vfi
}
