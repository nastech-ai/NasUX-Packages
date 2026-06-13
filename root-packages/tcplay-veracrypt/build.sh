NASUX_PKG_HOMEPAGE=https://github.com/bwalex/tc-play
NASUX_PKG_DESCRIPTION="Free and simple TrueCrypt implementation based on dm-crypt."
NASUX_PKG_LICENSE="BSD 2-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=3.3
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/bwalex/tc-play/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=ad53cd814a23b4f61a1b2b6dc2539624ffb550504c400c45cbd8cd1da4c7d90a
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
NASUX_PKG_DEPENDS="libdevmapper, libuuid, libgcrypt"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_POLICY_VERSION_MINIMUM=3.5
-DLIB_SUFFIX=
"
