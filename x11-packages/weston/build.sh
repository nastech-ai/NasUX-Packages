NASUX_PKG_HOMEPAGE=https://gitlab.freedesktop.org/wayland/weston
NASUX_PKG_DESCRIPTION="Reference implementation of a wayland compositor"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="14.0.2"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://gitlab.freedesktop.org/wayland/weston/-/archive/${NASUX_PKG_VERSION}/weston-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=633f4e0f232ad150300c95ffcbc646fedf1349487bf389dbd2045fa69013d6e2
NASUX_PKG_DEPENDS="freerdp, libaml, libandroid-shmem, libcairo, libcairo, libevdev, libglvnd, libneatvnc, libseat, libwayland, libwebp, libxcb, libxcursor, libxkbcommon, littlecms, pango, xcb-util-cursor"
TERMUX_PKG_BUILD_DEPENDS="libwayland-cross-scanner, libwayland-protocols"
# XXX: Do not depend on gbm
TERMUX_PKG_ANTI_BUILD_DEPENDS="mesa"
TERMUX_PKG_AUTO_UPDATE=true
# Weston uses x.y.9z and x.9y.9z versions as unstable prereleases, do not update to them.
TERMUX_PKG_UPDATE_VERSION_REGEXP='^\d+(?:\.[0-8]?\d){2}$'
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dbackend-drm=false
-Dbackend-drm-screencast-vaapi=false
-Dremoting=false
-Dpipewire=false
-Drenderer-gl=true
-Dbackend-pipewire=false
-Dbackend-default=headless
-Dxwayland-path=$TERMUX_PREFIX/bin/Xwayland
-Dsystemd=false
-Dsimple-clients=damage,shm,touch
-Ddemo-clients=false
-Dtests=false
"

termux_step_pre_configure() {
	nasux_setup_wayland_cross_pkg_config_wrapper

	export LDFLAGS+=" -landroid-shmem"
}
