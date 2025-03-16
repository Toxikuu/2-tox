#!/usr/bin/env bash

# assume gui as default if no arguments are passed
if [ $# -eq 0 ]; then
    set -- gui
fi

/usr/share/flameshot/_APPIMAGE_ "$@"

# regain focus if xdotool is available
if command -v xdotool > /dev/null 2>&1; then
    xdotool windowactivate "$(xdotool getactivewindow)"
fi
