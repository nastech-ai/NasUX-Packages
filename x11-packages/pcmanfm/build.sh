NASUX_PKG_HOMEPAGE=https://sourceforge.net/projects/pcmanfm/
NASUX_PKG_DESCRIPTION="Extremely fast and lightweight file manager"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.4.0"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/lxde/pcmanfm/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=cda4f5ad7e049dcdf3b051b9de4c779adcd55bd720e9c96c45275389aa84264e
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="atk, glib, gtk3, libcairo, libfm, libx11, lxmenu-data, pango"
TERMUX_PKG_RECOMMENDS="xarchiver"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-gtk=3
"

termux_step_pre_configure() {
	autoreconf -fi
}
