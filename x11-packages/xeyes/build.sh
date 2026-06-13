NASUX_PKG_HOMEPAGE=https://gitlab.freedesktop.org/xorg/app/xeyes
NASUX_PKG_DESCRIPTION="A follow the mouse X demo"
NASUX_PKG_LICENSE="X11"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.3.1
NASUX_PKG_SRCURL=https://gitlab.freedesktop.org/xorg/app/xeyes/-/archive/xeyes-${NASUX_PKG_VERSION}/xeyes-xeyes-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=6ba53dbe17ff644c325dc28a7faab5125dd6b8d780d3709b874180c5dfd9cbb2
NASUX_PKG_DEPENDS="libx11, libxcb, libxext, libxi, libxmu, libxrender, libxt"
TERMUX_PKG_BUILD_DEPENDS="libxfixes, xorg-util-macros"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE=newest-tag

termux_step_pre_configure() {
	autoreconf -fi
}
