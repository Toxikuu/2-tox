NAME="catfetch"
VERS="1.2.0"
DESC="Cute fetch script featuring a cat"
UPST="https://github.com/Toxikuu/catfetch.git"
DEPS=(
    "rust"
)

SOURCE="https://github.com/Toxikuu/catfetch/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr
install -vDm755 target/release/catfetch "$D"/usr/bin/catfetch

}
