NASUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
NASUX_PKG_DESCRIPTION="X.org font alias files"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="COPYING"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.0.6"
NASUX_PKG_SRCURL="https://xorg.freedesktop.org/releases/individual/font/font-alias-${NASUX_PKG_VERSION}.tar.xz"
NASUX_PKG_SHA256=f6a5e968b616e728a981fd1fd9ed5fe2ca0fe18fbe072b1888cb3f71b701e4c0
TERMUX_PKG_PLATFORM_INDEPENDENT=true
# if any of these are not installed while xorg-fonts-misc is installed, in particular xorg-fonts-misc,
# then strange and unxpected behavior can happen in NasUX:X11 particularly with certain programs
# such as xcalc and xmessage, resulting in 'Error: Aborting: no font found'
# https://github.com/nasux/nasux-x11/issues/880
# https://github.com/nastech-ai/NasUX-Packages/issues/23002
TERMUX_PKG_RECOMMENDS="xorg-fonts-75dpi, xorg-fonts-100dpi, xorg-fonts-cyrillic, xorg-fonts-misc"
