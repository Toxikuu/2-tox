NAME="rust"
VERS="1.86.0"
CATG="lang"
DESC="The Rust programming language"
UPST="https://github.com/rust-lang/rust.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v 'release-' | sort -V | tail -n1"

2b() {

if [ "$VERS" = "9999" ]; then
    export VERS="nightly"
fi

export CARGO_HOME="$D"/opt/cargo
export RUSTUP_HOME="$D"/opt/rustup

mkdir -pv "$CARGO_HOME" "$RUSTUP_HOME"

curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
. "$CARGO_HOME"/env

rustup toolchain install "$VERS"
rustup default "$VERS"
rustup component add cargo clippy rustfmt

# mkdir -pv "$D"/usr/share/bash-completion/completions
# mv -vf /etc/bash_completion.d/cargo "$D"/usr/share/bash-completion/completions

rm -vf "$CARGO_HOME"/env

chmod 777 "$CARGO_HOME"
chmod 755 "$RUSTUP_HOME"

cp -av "$PORT"/etc "$D"

}