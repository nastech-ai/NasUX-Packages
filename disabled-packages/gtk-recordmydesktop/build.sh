# x11-packages
NASUX_PKG_HOMEPAGE=https://github.com/Enselic/recordmydesktop
NASUX_PKG_DESCRIPTION="GTK frontend to recordMyDesktop"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.4.0
NASUX_PKG_SRCURL=https://github.com/Enselic/recordmydesktop/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=69602d32c1be82cd92083152c7c44c0206ca0d6419d76a6144ffcfe07b157a72
NASUX_PKG_DEPENDS="gtk3, pygobject, python, recordmydesktop"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_RM_AFTER_INSTALL="lib/locale"

_PYTHON_VERSION=$(. $NASUX_SCRIPTDIR/packages/python/build.sh; echo $_MAJOR_VERSION)

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
am_cv_python_pythondir=$TERMUX_PREFIX/lib/python${_PYTHON_VERSION}/site-packages
"

termux_step_post_get_source() {
	TERMUX_PKG_SRCDIR+="/gtk-recordmydesktop"
}

termux_step_pre_configure() {
	autoreconf -fi

	nasux_setup_python_crossenv
	pushd $TERMUX_PYTHON_CROSSENV_SRCDIR
	_CROSSENV_PREFIX=$TERMUX_PKG_BUILDDIR/python-crossenv-prefix
	python${_PYTHON_VERSION} -m crossenv \
		$TERMUX_PREFIX/bin/python${_PYTHON_VERSION} \
		${_CROSSENV_PREFIX}
	popd
	. ${_CROSSENV_PREFIX}/bin/activate
}
