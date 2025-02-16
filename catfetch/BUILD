NAME="catfetch"
VERS="1.0.1"
DESC="Cute little fetch script written in rust"
UPST="https://github.com/Toxikuu/catfetch.git"

SOURCE="https://github.com/Toxikuu/catfetch/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

. e-rust
cargo build --release
install -vDm755 target/release/catfetch "$D"/usr/bin/catfetch

}