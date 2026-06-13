NASUX_PKG_HOMEPAGE=https://github.com/dottedmag/x2x
NASUX_PKG_DESCRIPTION="Allows the keyboard, mouse on one X display to be used to control another X display"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1:1.30-10
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/dottedmag/x2x/archive/refs/tags/debian/${NASUX_PKG_VERSION#*:}.tar.gz
NASUX_PKG_SHA256=f41d5ed55d4b05fe28ab8c07bf41e19cdafcc6ecd08f588679aa0ee48f1eb627
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_METHOD=repology
NASUX_PKG_DEPENDS="libx11, libxext, libxtst"

termux_step_pre_configure() {
	./bootstrap.sh
}
