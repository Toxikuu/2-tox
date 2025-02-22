NAME="mesa"
VERS="25.0.0"
DESC="Graphics software bundle (OpenGL, Vulkan, etc.)"
CATG="graphics"
UPST="https://gitlab.freedesktop.org/mesa/mesa.git"
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

with meson ninja

_cfg_opts=(
    -D osmesa=false
    -D platforms=x11
    -D gallium-drivers=nouveau
    -D vulkan-drivers=""
    -D valgrind=disabled
    -D llvm=disabled
    -D video-codecs=all
    -D libunwind=disabled
)

ms "${_cfg_opts[@]}"
nj
ni

}
