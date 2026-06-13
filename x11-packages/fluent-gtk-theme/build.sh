NASUX_PKG_HOMEPAGE=https://github.com/vinceliuice/Fluent-gtk-theme
NASUX_PKG_DESCRIPTION="Fluent is a Fluent design theme for GNOME/GTK based desktop environments"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2025.04.17"
NASUX_PKG_SRCURL=https://github.com/vinceliuice/Fluent-gtk-theme/archive/refs/tags/${NASUX_PKG_VERSION//./-}.tar.gz
NASUX_PKG_SHA256=bedc51e07ca4edaeb3bdd50e9e2a27c10f1b049f460b10e3b5668d11ff2b03cd
NASUX_PKG_DEPENDS="gnome-themes-extra, gtk2-engines-murrine, gtk3"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_AUTO_UPDATE=false

termux_step_make_install(){
	./install.sh -d ${TERMUX_PREFIX}/share/themes
}
