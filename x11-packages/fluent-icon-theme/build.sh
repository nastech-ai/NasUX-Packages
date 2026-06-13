NASUX_PKG_HOMEPAGE=https://github.com/vinceliuice/Fluent-icon-theme
NASUX_PKG_DESCRIPTION="Fluent icon theme for linux desktops"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="2025.08.21"
NASUX_PKG_SRCURL=https://github.com/vinceliuice/Fluent-icon-theme/archive/refs/tags/${NASUX_PKG_VERSION//./-}.tar.gz
NASUX_PKG_SHA256=553305e3882c896b6f82e12db1dfc9549af63487a8cd26fd5a08303298aedbe3
NASUX_PKG_DEPENDS="hicolor-icon-theme"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_RM_AFTER_INSTALL="share/icons/*/icon-theme.cache"
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_REPOLOGY_METADATA_VERSION="${NASUX_PKG_VERSION//./}"

termux_step_make_install(){
	./install.sh -d ${TERMUX_PREFIX}/share/icons
}
