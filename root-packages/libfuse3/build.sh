NASUX_PKG_HOMEPAGE=https://github.com/libfuse/libfuse
NASUX_PKG_DESCRIPTION="FUSE (Filesystem in Userspace) is an interface for userspace programs to export a filesystem to the Linux kernel"
NASUX_PKG_LICENSE="LGPL-2.1, GPL-2.0"
NASUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
NASUX_PKG_VERSION=3.16.2
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/libfuse/libfuse/archive/refs/tags/fuse-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=1bc306be1a1f4f6c8965fbdd79c9ccca021fdc4b277d501483a711cbd7dbcd6c

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddisable-mtab=true
-Dexamples=false
-Dtests=false
-Dsbindir=bin
-Dmandir=share/man
-Dudevrulesdir=$TERMUX_PREFIX/etc/udev/rules.d
-Duseroot=false
"

termux_step_pre_configure() {
	CPPFLAGS+=" -D__off64_t=off64_t"
}
