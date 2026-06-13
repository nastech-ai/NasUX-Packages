NASUX_PKG_HOMEPAGE=https://i3wm.org/i3status/
NASUX_PKG_DESCRIPTION="Generates status bar to use with i3bar"
NASUX_PKG_LICENSE="BSD 3-Clause"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2.15"
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://i3wm.org/i3status/i3status-${NASUX_PKG_VERSION}.tar.xz
NASUX_PKG_SHA256=6c67f52cae4f139df764ad1cc736562be0f97750791bc212b53f34c06eaf2205
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libandroid-glob, libconfuse, libnl, pulseaudio, yajl"
TERMUX_PKG_CONFFILES="etc/i3status.conf"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
