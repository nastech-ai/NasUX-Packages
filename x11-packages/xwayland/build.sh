NASUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/wiki/
NASUX_PKG_DESCRIPTION="Wayland X11 server"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="24.1.12"
NASUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/xserver/xwayland-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=6df02c511b92c1b9848734d9d1b03a4c24f8375ba3cada44e9684a21b5f78e21
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libandroid-shmem, libdrm, libepoxy, libpciaccess, libpixman, libwayland, libwayland-protocols, libx11, libxau, libxcvt, libxfont2, libxinerama, libxkbfile, libxshmfence, opengl, openssl, xkeyboard-config, xorg-protocol-txt, xorg-xkbcomp"
TERMUX_PKG_BUILD_DEPENDS="libwayland-cross-scanner"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dmitshm=true
-Dxres=true
-Dxv=true
-Dsecure-rpc=false
-Dscreensaver=true
-Dxdmcp=true
-Dglx=true
-Ddri3=true
-Dxinerama=true
-Dxace=true
-Dxcsecurity=true
-Dxf86bigfont=true
-Ddrm=true
-Dglamor=false
-Dxvfb=false
-Dlibunwind=false
-Dipv6=true
-Dsha1=libcrypto
-Ddefault_font_path=$TERMUX_PREFIX/share/fonts
"

# Remove files conflicting with xorg-server:
TERMUX_PKG_RM_AFTER_INSTALL="
lib/xorg/protocol.txt
share/X11/xkb/compiled
share/man/man1/Xserver.1
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper

	CFLAGS+=" -fcommon -fPIC -DFNDELAY=O_NDELAY -Wno-int-to-pointer-cast -Wno-implicit-function-declaration"
	CPPFLAGS+=" -fcommon -fPIC -I${TERMUX_PREFIX}/include/libdrm"
	LDFLAGS+=" -landroid-shmem"
}
