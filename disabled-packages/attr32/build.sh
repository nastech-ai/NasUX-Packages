NASUX_PKG_HOMEPAGE=http://savannah.nongnu.org/projects/attr/
NASUX_PKG_DESCRIPTION="Utilities for manipulating filesystem extended attributes (for testing multilib-compilation on bionic)"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.5.2"
NASUX_PKG_SRCURL=http://download.savannah.gnu.org/releases/attr/attr-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=39bf67452fa41d0948c2197601053f48b3d78a029389734332a6309a680c6c87
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-gettext=no"
TERMUX_PKG_RM_AFTER_INSTALL="share/man/man5/attr.5"
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_EXCLUDED_ARCHES="arm, i686"
TERMUX_PKG_BUILD_MULTILIB=true
