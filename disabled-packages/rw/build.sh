NASUX_PKG_HOMEPAGE="https://github.com/jridgewell/rw"
NASUX_PKG_DESCRIPTION="A Rust implementation of sponge(1) that never write to TMPDIR"
NASUX_PKG_LICENSE="MIT"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=1.0.1
TERMUX_PKG_REVISION=1
NASUX_PKG_SRCURL=("https://github.com/jridgewell/rw/archive/c13c24e011ef5a79ea60bc51bb0d3fa930326146.tar.gz")
NASUX_PKG_SHA256=(699c32045c713bcfc8e7b89d5bd24d89d1cbb887ba8570b857391f98b64e6a9a)
TERMUX_PKG_AUTO_UPDATE=false
NASUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	nasux_setup_rust
	cargo build --jobs $TERMUX_PKG_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/rw
}
