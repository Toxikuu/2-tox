NAME="st"
VERS="0.9.2"
DESC="Suckless terminal emulator"
CATG="gui term"
UPST="git://git.suckless.org/st"
DEPS=(
    "libxft"
)

SOURCE="https://dl.suckless.org/st/st-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i config.mk \
    -e '/X11INC = /s@/usr/X11R6/include@/usr/include/X11@'  \
    -e '/X11LIB = /s@/usr/X11R6/lib@/usr/lib@'              \
    -e '/PREFIX = /s@/local@@'

# Apply all patches
# Order is explicitly specified to (hopefully) avoid conflicts
tpatch "$PORT"/patches/st-boxdraw_v2-0.8.5.diff
tpatch "$PORT"/patches/st-clickurl-0.8.5.diff
tpatch "$PORT"/patches/st-clipboard-0.8.3.diff
tpatch "$PORT"/patches/st-desktopentry-0.8.5.diff
tpatch "$PORT"/patches/st-dynamic-cursor-color-0.9.diff
tpatch "$PORT"/patches/st-glyph-wide-support-boxdraw-20220411-ef05519.diff
tpatch "$PORT"/st-ligatures-boxdraw-20241226-0.9.2.diff
tpatch "$PORT"/st-scrollback-ringbuffer-0.9.2.diff
tpatch "$PORT"/st-scrollback-float-0.9.2.diff
tpatch "$PORT"/st-scrollback-reflow-0.9.2.diff
tpatch "$PORT"/st-scrollback-mouse-0.9.2.diff
tpatch "$PORT"/st-scrollback-mouse-altscreen-20220127-2c5edf2.diff
tpatch "$PORT"/st-scrollback-mouse-increment-0.9.2.diff
tpatch "$PORT"/st-vertcenter-20231003-eb3b894.diff
tpatch "$PORT"/st-workingdir-20200317-51e19ea.diff

for p in "$PORT"/patches/*; do
    tpatch "$p"
done

# Allow custom config.def.h
[[ -e "$PORT"/config.def.h ]] && cp -vf "$PORT"/config.def.h .

# Allow custom config.h
[[ -e "$PORT"/config.h ]] && cp -vf "$PORT"/config.h .

mi CC=gcc clean  # roughly desugars to ``make CC=gcc DESTDIR="$D" clean install``

}
#d added patches
