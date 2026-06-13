NASUX_PKG_HOMEPAGE=https://ccid.apdu.fr/
NASUX_PKG_DESCRIPTION="A generic USB CCID (Chip/Smart Card Interface Devices) driver and ICCD (Integrated Circuit(s) Card Devices)."
NASUX_PKG_LICENSE="LGPL-2.1"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="1.8.2"
NASUX_PKG_SRCURL=https://github.com/LudovicRousseau/CCID/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=fe2bfe67df0627aaf81f10fed2cfeff653f16f2d515f5fa3bce222409fb4f279
TERMUX_PKG_AUTO_UPDATE=true
NASUX_PKG_DEPENDS="libusb, pcscd"
TERMUX_PKG_BUILD_DEPENDS="libpcsclite, flex"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dudev-rules=false
"
