NASUX_PKG_HOMEPAGE=https://github.com/spacejam/sled
NASUX_PKG_DESCRIPTION="A lightweight pure-rust high-performance transactional embedded database"
NASUX_PKG_LICENSE="Apache-2.0, MIT"
NASUX_PKG_LICENSE_FILE="LICENSE-APACHE, LICENSE-MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=0.34.7
NASUX_PKG_SRCURL=https://github.com/spacejam/sled/archive/refs/tags/v${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=dd1c757464b970a4eb73c954b345be63655c84bb1de249af3c3a609c57763046

termux_step_post_get_source() {
	sed -e "s%\@NASUX_PKG_VERSION\@%${NASUX_PKG_VERSION}%g" \
		$TERMUX_PKG_BUILDER_DIR/bindings-sled-native-Cargo.toml.diff | \
		patch --silent -p1
}

termux_step_pre_configure() {
	TERMUX_PKG_BUILDDIR="$TERMUX_PKG_SRCDIR/bindings/sled-native"
}

termux_step_make() {
	nasux_setup_rust
	cargo build --jobs $TERMUX_PKG_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm600 -t $TERMUX_PREFIX/lib target/${CARGO_TARGET_NAME}/release/libsled.so
}
