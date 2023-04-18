#!/usr/bin/env bash
export GOROOT="$HOME/go"
make build || exit
make pf9-image || exit
make pf9-push || exit
