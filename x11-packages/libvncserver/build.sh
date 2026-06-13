NASUX_PKG_HOMEPAGE=https://libvnc.github.io/
NASUX_PKG_DESCRIPTION="Cross-platform C libraries that allow you to easily implement VNC server or client functionality"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.9.15"
TERMUX_PKG_REVISION=2
NASUX_PKG_SRCURL=https://github.com/LibVNC/libvncserver/archive/refs/tags/LibVNCServer-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=62352c7795e231dfce044beb96156065a05a05c974e5de9e023d688d8ff675d7
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libgcrypt, libjpeg-turbo, liblzo, libpng, openssl, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_POLICY_VERSION_MINIMUM=3.5
-DWITH_GNUTLS=OFF
-DWITH_OPENSSL=ON
-DWITH_SASL=OFF
"

termux_step_post_massage() {
	local f
	for f in ./lib/pkgconfig/libvnc{client,server}.pc; do
		if [ -e "${f}" ]; then
			sed -i '/^Libs\.private:/s/ -l\(-pthread\)/ \1/' "${f}"
		fi
	done
}
