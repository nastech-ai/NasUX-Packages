NASUX_PKG_HOMEPAGE=https://github.com/linuxmint/python3-xapp
NASUX_PKG_DESCRIPTION="XApp library Python bindings"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="3.0.3"
NASUX_PKG_SRCURL="https://github.com/linuxmint/python3-xapp/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=30cf81249a7c5cabc25e465e369928724e091e95c5095704518f14ca6fd11f41
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
NASUX_PKG_DEPENDS="python, xapp"
TERMUX_PKG_BREAKS="python3-xapp"
TERMUX_PKG_REPLACES="python3-xapp"
TERMUX_PKG_CONFLICTS="python3-xapp"

termux_step_configure() {
	nasux_setup_meson
	export PYTHON_SITELIB="$TERMUX_PYTHON_HOME/site-packages"
	$TERMUX_MESON setup "$TERMUX_PKG_BUILDDIR" "$TERMUX_PKG_SRCDIR" \
		-Dlocaledir="$TERMUX_PREFIX"/share/locale \
		-Dpython.purelibdir="$PYTHON_SITELIB"
}
