NASUX_PKG_HOMEPAGE="https://libproxy.github.io/"
NASUX_PKG_DESCRIPTION="Automatic proxy configuration management library"
NASUX_PKG_LICENSE="LGPL-2.1-or-later"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="0.5.12"
NASUX_PKG_SRCURL="https://github.com/libproxy/libproxy/archive/refs/tags/${NASUX_PKG_VERSION}/libproxy-${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256="a1fa55991998b80a567450a9e84382421a7176a84446c95caaa8b72cf09fa86f"
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="curl, duktape, glib"
TERMUX_PKG_BUILD_DEPENDS="gsettings-desktop-schemas, g-ir-scanner"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dvapi=false
-Ddocs=false
-Dintrospection=false
"
