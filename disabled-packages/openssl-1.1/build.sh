NASUX_PKG_HOMEPAGE=https://www.openssl.org/
NASUX_PKG_DESCRIPTION="Library implementing the SSL and TLS protocols as well as general purpose cryptography functions"
NASUX_PKG_LICENSE="custom"
NASUX_PKG_LICENSE_FILE="LICENSE"
NASUX_PKG_MAINTAINER="@nastech-ai"
_VERSION=1.1.1w
NASUX_PKG_VERSION=1:${_VERSION}
NASUX_PKG_SRCURL=https://www.openssl.org/source/openssl-${_VERSION/\~/-}.tar.gz
NASUX_PKG_SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
TERMUX_PKG_AUTO_UPDATE=false
NASUX_PKG_DEPENDS="ca-certificates, zlib"
TERMUX_PKG_CONFFILES="etc/tls/openssl.cnf"
TERMUX_PKG_RM_AFTER_INSTALL="bin/c_rehash etc/"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_CONFLICTS="libcurl (<< 7.61.0-1)"
TERMUX_PKG_BREAKS="openssl (<< 1.1.1m)"
TERMUX_PKG_REPLACES="openssl (<< 1.1.1m)"

termux_step_pre_configure() {
	test -d $TERMUX_PREFIX/include/openssl && mv $TERMUX_PREFIX/include/openssl{,.tmp} || :
	LDFLAGS="-L$TERMUX_PREFIX/lib/openssl-1.1 -Wl,-rpath=$TERMUX_PREFIX/lib/openssl-1.1 $LDFLAGS"
}

termux_step_configure() {
	# Certain packages are not safe to build on device because their
	# build.sh script deletes specific files in $TERMUX_PREFIX.
	if $TERMUX_ON_DEVICE_BUILD; then
		termux_error_exit "Package '$TERMUX_PKG_NAME' is not safe for on-device builds."
	fi

	CFLAGS+=" -DNO_SYSLOG"

	perl -p -i -e "s@TERMUX_CFLAGS@$CFLAGS@g" Configure
	test $NASUX_ARCH = "arm" && TERMUX_OPENSSL_PLATFORM="android-arm"
	test $NASUX_ARCH = "aarch64" && TERMUX_OPENSSL_PLATFORM="android-arm64"
	test $NASUX_ARCH = "i686" && TERMUX_OPENSSL_PLATFORM="android-x86"
	test $NASUX_ARCH = "x86_64" && TERMUX_OPENSSL_PLATFORM="android-x86_64"

	install -m755 -d $TERMUX_PREFIX/lib/openssl-1.1

	./Configure $TERMUX_OPENSSL_PLATFORM \
		--prefix=$TERMUX_PREFIX \
		--openssldir=$TERMUX_PREFIX/etc/tls \
		--libdir=$TERMUX_PREFIX/lib/openssl-1.1 \
		shared \
		zlib-dynamic \
		no-ssl \
		no-hw \
		no-srp \
		no-tests
}

termux_step_make() {
	make depend
	make -j $TERMUX_PKG_MAKE_PROCESSES all
}

termux_step_make_install() {
	# "install_sw" instead of "install" to not install man pages:
	make -j 1 install_sw MANDIR=$TERMUX_PREFIX/share/man MANSUFFIX=.ssl

	mkdir -p $TERMUX_PREFIX/etc/tls/

	cp apps/openssl.cnf $TERMUX_PREFIX/etc/tls/openssl.cnf

	install -m755 -d $TERMUX_PREFIX/include/openssl-1.1
	mv $TERMUX_PREFIX/include/openssl $TERMUX_PREFIX/include/openssl-1.1/
	mv $TERMUX_PREFIX/bin/openssl $TERMUX_PREFIX/bin/openssl-1.1
}

termux_step_post_make_install() {
	test -d $TERMUX_PREFIX/include/openssl.tmp && mv $TERMUX_PREFIX/include/openssl{.tmp,} || :
}

termux_step_post_massage() {
	rm -rf include/openssl
}
