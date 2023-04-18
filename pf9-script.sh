#!/usr/bin/env bash
eval "$(gimme 1.17)"
export PATH="$PATH:$HOME/go/bin"
make build || exit
make pf9-image || exit
make pf9-push || exit
