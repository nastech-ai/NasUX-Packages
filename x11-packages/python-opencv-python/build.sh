NASUX_PKG_HOMEPAGE=https://github.com/opencv/opencv-python
NASUX_PKG_DESCRIPTION="Python wrapper for Python bindings for OpenCV"
NASUX_PKG_LICENSE="Apache-2.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION="92"
TERMUX_PKG_REVISION=1
TERMUX_PKG_REPOLOGY_METADATA_VERSION="$(. "$NASUX_SCRIPTDIR/x11-packages/opencv/build.sh"; echo "$NASUX_PKG_VERSION").${NASUX_PKG_VERSION}"
NASUX_PKG_SRCURL="https://github.com/opencv/opencv-python/archive/refs/tags/${NASUX_PKG_VERSION}.tar.gz"
NASUX_PKG_SHA256=049293f56726a3ebb01bb7508b973e14e62752a4a0e067ac6af4e371d6aa30d3
NASUX_PKG_DEPENDS="opencv, opencv-python, python, python-pip"
TERMUX_PKG_PYTHON_COMMON_BUILD_DEPS="scikit-build"
NASUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	nasux_setup_cmake

	# prevent any downloading or compiling of opencv source code,
	# but allow the normal installation of all other files
	echo '' > pyproject.toml
	mkdir -p opencv/empty
	echo 'cmake_minimum_required(VERSION 4.0)' > opencv/CMakeLists.txt
	echo 'install(DIRECTORY empty DESTINATION "${CMAKE_INSTALL_PREFIX}")' >> opencv/CMakeLists.txt

	# force version.py to generate
	patch="$TERMUX_PKG_BUILDER_DIR/find_version.py.diff"
	echo "Applying patch: $(basename "$patch")"
	test -f "$patch" && sed \
		-e "s%\@TERMUX_PREFIX\@%${TERMUX_PREFIX}%g" \
		-e "s%\@NASUX_PKG_VERSION\@%${NASUX_PKG_VERSION}%g" \
		"$patch" | patch --silent -p1
}

termux_step_post_make_install() {
	# also provide the opencv-contrib-python variant because NasUX opencv also has the extra modules,
	# but some python projects might attempt to import either 'opencv-python' or 'opencv-contrib-python'.
	# which have different names
	export ENABLE_CONTRIB=1
	pip install --no-deps . --prefix "$TERMUX_PREFIX"
}
