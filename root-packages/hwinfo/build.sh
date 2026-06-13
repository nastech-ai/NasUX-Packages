NASUX_PKG_HOMEPAGE=https://github.com/openSUSE/hwinfo
NASUX_PKG_DESCRIPTION="Hardware detection tool from openSUSE"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=22.3
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=https://github.com/openSUSE/hwinfo/archive/refs/tags/$NASUX_PKG_VERSION.tar.gz
NASUX_PKG_SHA256=4ce5a852a9c58d70f59108382448097ffc4783ff336978ae49ec870ce02e99db
NASUX_PKG_DEPENDS="libandroid-shmem, libuuid, libx86emu"
TERMUX_PKG_BREAKS="hwinfo-dev"
TERMUX_PKG_REPLACES="hwinfo-dev"
NASUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	sed -i -E '/^SUBDIRS\s*=/d' Makefile
	echo -e '\n$(LIBHD):\n\t$(MAKE) -C src' >> Makefile
	echo -e '\t$(CC) -shared $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) \' >> Makefile
	echo -e '\t\t-Wl,--whole-archive $(LIBHD) -Wl,--no-whole-archive \' >> Makefile
	echo -e '\t\t-Wl,-soname=$(LIBHD_SONAME) -o $(LIBHD_SO) $(SO_LIBS)' >> Makefile
}

termux_step_configure() {
	echo 'touch changelog' > git2log
	LDFLAGS+=" -landroid-shmem"
	export HWINFO_VERSION="$NASUX_PKG_VERSION"
	export DESTDIR="$TERMUX_PREFIX"
}
