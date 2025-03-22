NAME="egl-gbm"
VERS="1.1.2"
DESC="GBM EGL external platform library"
CATG="lib graphics"
UPST="https://github.com/NVIDIA/egl-gbm.git"
DEPS=()

SOURCE="https://github.com/NVIDIA/egl-gbm/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with meson

ms
meson compile
meson install --destdir "$D"

}
