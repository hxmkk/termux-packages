TERMUX_PKG_HOMEPAGE=https://github.com/rust-analyzer/rust-analyzer
TERMUX_PKG_DESCRIPTION="A Rust compiler front-end for IDEs"
TERMUX_PKG_LICENSE="MIT, Apache-2.0"
TERMUX_PKG_LICENSE_FILE="LICENSE-MIT, LICENSE-APACHE"
TERMUX_PKG_MAINTAINER="@termux"
_VERSION=2023-01-02
TERMUX_PKG_VERSION=${_VERSION//-/}
TERMUX_PKG_SRCURL=https://github.com/rust-analyzer/rust-analyzer/archive/refs/tags/${_VERSION}.tar.gz
TERMUX_PKG_SHA256=1025d3d623d9c3a36bb5318bede99daf29a77f8af917e18dae998b3b4b042d76
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	termux_setup_rust
	cargo build --jobs $TERMUX_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm755 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/rust-analyzer
}
