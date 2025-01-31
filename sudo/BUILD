NAME="sudo"
VERS="1.9.16p2"
DESC="Allows users to execute commands as root"
UPST="https://github.com/sudo-project/sudo.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep SUDO_ | sed -e 's@SUDO_@@' -e 's@_@.@g' | sort -V | tail -n1"

SOURCE="https://www.sudo.ws/dist/sudo-$VERS.tar.gz"
EXTRA=()

2b() {

NORMAL=$(tput sgr0)
BOLD=$(tput bold)
RED=$(tput setaf 1)
ITALIC=$(tput sitm)
PINK=$(tput setaf 5)
WHITE=$(tput setaf 7)

SUDO_PROMPT=" ${BOLD}[${RED}#${NORMAL}${BOLD}]${NORMAL} "
BADPASS_PROMPT="${BOLD}${ITALIC}${PINK}♡★  ✿ ,.♡${WHITE} ~ try again! ${PINK}՞ ${RED}⸝⸝${PINK}>  ̫ <${RED}⸝⸝${PINK} ՞⸜ ★ ♡⸝ ✿ ${NORMAL}"

b-cfg \
    --libexecdir=/usr/lib      \
    --with-secure-path         \
    --with-editor=/bin/nvim    \
    --without-lecture          \
    --disable-year2038         \
    --with-passwd-tries=5      \
    --with-timeout=30          \
    --with-password-timeout=1  \
    --with-passprompt="${SUDO_PROMPT}"  \
    --with-badpass-message="${BADPASS_PROMPT}"

b-make
b-mi

cp -av "$PORT/etc" "$D"

}
