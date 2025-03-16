#!/usr/bin/env bash

# assume gui as default if no arguments are passed
if [ $# -eq 0 ]; then
    set -- gui
fi

/usr/share/flameshot/_APPIMG_ "$@"
