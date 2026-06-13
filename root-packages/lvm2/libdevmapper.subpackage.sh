NASUX_SUBPKG_DESCRIPTION="A device-mapper library"
TERMUX_SUBPKG_DEPENDS="libandroid-support"
TERMUX_SUBPKG_DEPEND_ON_PARENT=false
NASUX_SUBPKG_INCLUDE="
include/libdevmapper.h
bin/dmstats
bin/dmsetup
lib/libdevmapper.so*
lib/pkgconfig/devmapper.pc
"
