NASUX_PKG_HOMEPAGE=https://mate-desktop.org/
NASUX_PKG_DESCRIPTION="MATE menu editing tool"
NASUX_PKG_LICENSE="GPL-2.0-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.28.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL="https://github.com/mate-desktop/mozo/releases/download/v$NASUX_PKG_VERSION/mozo-$NASUX_PKG_VERSION.tar.xz"
NASUX_PKG_SHA256=fe98984ffd6aa8c36d0594bcefdba03de39b42d41e007251680384f3cef44924
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gtk3, python, mate-menus, pygobject, gettext, mate-panel"
TERMUX_PKG_BUILD_DEPENDS="autoconf-archive, mate-common"
TERMUX_PKG_RM_AFTER_INSTALL="
local
"

termux_step_pre_configure() {
	nasux_setup_python_pip
}

termux_step_post_make_install() {
	mkdir -p "$TERMUX_PYTHON_HOME/site-packages"
}
