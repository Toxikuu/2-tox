NAME="flameshot"
VERS="12.1.0"
DESC="Powerful, easy-to-use screenshot tool"
CATG="utils gui"
UPST="https://github.com/flameshot-org/flameshot.git"
DEPS=(
    "fuse2"
    "o^xdotool: used in flameshot.sh to refocus after taking a screenshot" 
)

# binary because i dont want to build qt5 just for this
EXTRA="https://github.com/flameshot-org/flameshot/releases/download/v$VERS/Flameshot-$VERS.x86_64.AppImage"

2b() {

APPIMG="Flameshot-$VERS.x86_64.AppImage"

cp -vf "$SRC/$APPIMG" .

install -vDm755 "$APPIMG" "$D/usr/share/flameshot/$APPIMG"

install -vDm755 "$PORT"/flameshot.sh "$D/usr/bin/flameshot.sh"
sed -i "s@_APPIMG_@$APPIMG@" "$D"/usr/bin/flameshot.sh
install -vDm644 "$PORT"/flameshot.desktop "$D/usr/share/applications/flameshot.desktop"

}
#d don't sed the port version of the script (oops!)
