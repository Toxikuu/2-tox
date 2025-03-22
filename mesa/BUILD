NAME="mesa"
VERS="25.0.2"
DESC="Graphics software bundle (OpenGL, Vulkan, etc.)"
CATG="graphics"
UPST="https://gitlab.freedesktop.org/mesa/mesa.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '^mesa-[0-9]' | grep -Ev 'rc|devel' | sort -V | tail -n1"
DEPS=(
    "xorg/@lib"
    "libdrm"
    "mako"
    "pyyaml"
    "glslang"
    "meson"
    "wayland-protocols"
)

SOURCE="https://mesa.freedesktop.org/archive/mesa-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja rust

_cfg_opts=(
    -D gbm=enabled  # I only need gbm on nvidia
    -D osmesa=false
    -D platforms=x11,wayland
    -D gallium-drivers=
    -D vulkan-drivers=
    -D video-codecs=
    -D valgrind=disabled
    -D llvm=disabled
    -D glx=disabled
    -D libunwind=disabled
)

ms "${_cfg_opts[@]}"
nj
ni

}
#d typo
