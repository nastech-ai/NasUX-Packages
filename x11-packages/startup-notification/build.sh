NASUX_PKG_HOMEPAGE=https://www.freedesktop.org/
NASUX_PKG_DESCRIPTION="Utility libraries for XC Binding"
NASUX_PKG_LICENSE="LGPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.12
TERMUX_PKG_REVISION=29
NASUX_PKG_SRCURL=https://www.freedesktop.org/software/startup-notification/releases/startup-notification-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=3c391f7e930c583095045cd2d10eb73a64f085c7fde9d260f2652c7cb3cfbe4a
NASUX_PKG_DEPENDS="libx11, libxcb, xcb-util"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="lf_cv_sane_realloc=yes"
