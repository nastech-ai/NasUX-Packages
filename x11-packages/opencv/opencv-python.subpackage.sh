NASUX_SUBPKG_INCLUDE="lib/python*"
NASUX_SUBPKG_DESCRIPTION="Python bindings for OpenCV"
TERMUX_SUBPKG_DEPENDS="python, python-numpy"
TERMUX_SUBPKG_RECOMMENDS="python-opencv-python"

termux_step_create_subpkg_debscripts() {
	_NUMPY_VERSION=$(. $NASUX_SCRIPTDIR/packages/python-numpy/build.sh; echo $NASUX_PKG_VERSION)

	cat <<- EOF > ./postinst
	#!$TERMUX_PREFIX/bin/sh
	INSTALLED_NUMPY_VERSION=\$(dpkg --list python-numpy | grep python-numpy | awk '{print \$3; exit;}')
	if [ "\${INSTALLED_NUMPY_VERSION%%-*}" != "$_NUMPY_VERSION" ]; then
		echo "WARNING: opencv-python is compiled with numpy $_NUMPY_VERSION, but numpy \${INSTALLED_NUMPY_VERSION%%-*} is installed. Please report it to https://github.com/nastech-ai/NasUX-Packages if any bug happens."
	fi
	EOF
}
