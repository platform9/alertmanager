#!/usr/bin/env bash
export GOROOT="$HOME/go"
export PATH="$PATH:$HOME/go/bin"
make build || exit
make pf9-image || exit
make pf9-push || exit
