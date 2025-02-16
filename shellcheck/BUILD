NAME="shellcheck"
VERS="0.10.0"
DESC="Static analysis tool for shell scripts"
UPST="https://github.com/koalaman/shellcheck.git"

# binary
SOURCE="https://github.com/koalaman/shellcheck/releases/download/v$VERS/shellcheck-v$VERS.linux.x86_64.tar.xz"
EXTRA=()

2b() {

# this package is written in haskell and i lowkey dont want to download haskell
# dev tools, so binary install time
install -vDm755 shellcheck "$D"/usr/bin/shellcheck

}
