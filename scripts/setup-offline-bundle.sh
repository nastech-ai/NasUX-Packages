#!/usr/bin/env bash
##
## Download all package sources and install all build tools whether possible,
## so they will be available offline.
##

set -e -u

if [ "$(uname -o)" = "Android" ] || [ "$(uname -m)" != "x86_64" ]; then
	echo "This script supports only x86_64 GNU/Linux systems."
	exit 1
fi

export NASUX_SCRIPTDIR="$(dirname "$(readlink -f "$0")")/../"
mkdir -p "$NASUX_SCRIPTDIR"/build-tools

. "$NASUX_SCRIPTDIR"/scripts/properties.sh
: "${TERMUX_PKG_MAKE_PROCESSES:="$(nproc)"}"
export TERMUX_PKG_MAKE_PROCESSES
export TERMUX_PACKAGES_OFFLINE=true
export NASUX_ARCH=aarch64
export TERMUX_ON_DEVICE_BUILD=false
export TERMUX_PKG_TMPDIR="$NASUX_SCRIPTDIR/build-tools/_tmp"
export TERMUX_COMMON_CACHEDIR="$TERMUX_PKG_TMPDIR"
export TERMUX_HOST_PLATFORM=aarch64-linux-android
export NASUX_ARCH_BITS=64
export TERMUX_BUILD_TUPLE=x86_64-pc-linux-gnu
export TERMUX_PKG_API_LEVEL=24
export TERMUX_TOPDIR="$HOME/.nasux-build"
export TERMUX_PYTHON_CROSSENV_PREFIX="$TERMUX_TOPDIR/python-crossenv-prefix"
export TERMUX_PYTHON_VERSION=$(. "$NASUX_SCRIPTDIR/packages/python/build.sh"; echo "$_MAJOR_VERSION")
export TERMUX_PYTHON_HOME=$TERMUX_PREFIX/lib/python${TERMUX_PYTHON_VERSION}
export CC=gcc CXX=g++ LD=ld AR=ar STRIP=strip PKG_CONFIG=pkg-config
export CPPFLAGS="" CFLAGS="" CXXFLAGS="" LDFLAGS=""
export TERMUX_PACKAGE_LIBRARY=bionic
mkdir -p "$TERMUX_PKG_TMPDIR"

# Build tools.
. "$NASUX_SCRIPTDIR"/scripts/build/termux_download.sh
(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_cargo_c.sh
	nasux_setup_cargo_c
)
(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_cmake.sh
	nasux_setup_cmake
)
# GHC fails. Skipping for now.
#(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_ghc.sh
#	nasux_setup_ghc
#)
(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_golang.sh
	nasux_setup_golang
)
(
	. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_ninja.sh
	. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_meson.sh
	nasux_setup_meson
)
(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_protobuf.sh
	nasux_setup_protobuf
)
#(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_python_pip.sh
#	nasux_setup_python_pip
#)
# Offline rust is not supported yet.
#(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_rust.sh
#	nasux_setup_rust
#)
(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_swift.sh
	nasux_setup_swift
)
(. "$NASUX_SCRIPTDIR"/scripts/build/setup/nasux_setup_zig.sh
	nasux_setup_zig
)
(test -d "$NASUX_SCRIPTDIR"/build-tools/android-sdk && test -d "$NASUX_SCRIPTDIR"/build-tools/android-ndk && exit 0
	"$NASUX_SCRIPTDIR"/scripts/setup-android-sdk.sh
)
rm -rf "${TERMUX_PKG_TMPDIR}"

# Package sources.
for repo_path in $(jq --raw-output 'del(.pkg_format) | keys | .[]' $NASUX_SCRIPTDIR/repo.json); do
	for p in "$NASUX_SCRIPTDIR"/$repo_path/*; do
		(
			. "$NASUX_SCRIPTDIR"/scripts/build/get_source/termux_step_get_source.sh
			. "$NASUX_SCRIPTDIR"/scripts/build/get_source/termux_git_clone_src.sh
			. "$NASUX_SCRIPTDIR"/scripts/build/get_source/termux_download_src_archive.sh
			. "$NASUX_SCRIPTDIR"/scripts/build/get_source/termux_unpack_src_archive.sh

			# Disable archive extraction in termux_step_get_source.sh.
			termux_extract_src_archive() {
				:
			}

			TERMUX_PKG_NAME=$(basename "$p")
			TERMUX_PKG_BUILDER_DIR="${p}"
			TERMUX_PKG_CACHEDIR="${p}/cache"
			TERMUX_PKG_METAPACKAGE=false

			# Set some variables to dummy values to avoid errors.
			TERMUX_PKG_TMPDIR="${TERMUX_PKG_CACHEDIR}/.tmp"
			TERMUX_PKG_SRCDIR="${TERMUX_PKG_CACHEDIR}/.src"
			TERMUX_PKG_BUILDDIR="$TERMUX_PKG_SRCDIR"
			TERMUX_PKG_HOSTBUILD_DIR="$TERMUX_PKG_TMPDIR"
			TERMUX_PKG_GIT_BRANCH=""
			TERMUX_DEBUG_BUILD=false


			mkdir -p "$TERMUX_PKG_CACHEDIR" "$TERMUX_PKG_TMPDIR" "$TERMUX_PKG_SRCDIR"
			cd "$TERMUX_PKG_CACHEDIR"

			. "${p}"/build.sh || true
			if ! ${TERMUX_PKG_METAPACKAGE}; then
				echo "Downloading sources for '$TERMUX_PKG_NAME'..."
				termux_step_get_source

				# Delete dummy src and tmp directories.
				rm -rf "$TERMUX_PKG_TMPDIR" "$TERMUX_PKG_SRCDIR"
			fi
		)
	done
done

# Mark to tell build-package.sh to enable offline mode.
touch "$NASUX_SCRIPTDIR"/build-tools/.installed
