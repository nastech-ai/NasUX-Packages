NASUX_PKG_HOMEPAGE=https://www.chiark.greenend.org.uk/~sgtatham/putty/
NASUX_PKG_DESCRIPTION="A terminal integrated SSH/Telnet client"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.84"
NASUX_PKG_SRCURL=https://the.earth.li/~sgtatham/putty/${NASUX_PKG_VERSION}/putty-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=06057862ae198f1dbd219d0c7493080d59f606194bb5056c549e342aa01b69fe
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libcairo, libx11, pango"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
