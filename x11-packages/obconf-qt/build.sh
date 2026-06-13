NASUX_PKG_HOMEPAGE=https://lxqt.github.io
NASUX_PKG_DESCRIPTION="OpenBox window manager configuration tool"
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.16.6"
NASUX_PKG_SRCURL="https://github.com/lxqt/obconf-qt/releases/download/${NASUX_PKG_VERSION}/obconf-qt-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=23cc8d16fa639871a2087644527afddcdbac9553a65768f7847f598de29d0715
TERMUX_PKG_REPLACES="obconf"
TERMUX_PKG_BREAKS="obconf"
NASUX_PKG_DEPENDS="libc++, qt6-qtbase, glib, openbox, liblxqt, hicolor-icon-theme, libxml2"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt6-qtbase-cross-tools, qt6-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}

termux_step_post_make_install() {
	ln -sf obconf-qt "$TERMUX_PREFIX"/bin/obconf
}
