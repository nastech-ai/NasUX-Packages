NASUX_PKG_HOMEPAGE=https://github.com/Yisus7u7/lxqt-composer-settings
NASUX_PKG_DESCRIPTION="lxqt-composer-settings is an unofficial application to configure composition effects in LXQt."
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@Yisus7u7"
NASUX_PKG_VERSION=1.0.1
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/Yisus7u7/lxqt-composer-settings/releases/download/${NASUX_PKG_VERSION}/lxqt-composer-settings-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=d538a73302dd81c85fa3e9d3b2be7937435a73321b6dc11099db75d033181d50
NASUX_PKG_DEPENDS="libc++, qt5-qtbase, qt5-qtsvg, xcompmgr, picom"
TERMUX_PKG_RECOMMENDS="featherpad"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_configure(){
	"${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
		-spec "${TERMUX_PREFIX}/lib/qt/mkspecs/nasux-cross" PREFIX=${TERMUX_PREFIX}
}
