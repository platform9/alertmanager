#!/usr/bin/env bash
set -x

# Set the Go version you want to install
GO_VERSION=1.17.13

# Set the OS and architecture
OS=linux
ARCH=amd64

# Download the Go binary
pushd $HOME || exit
curl -sL -o ~/.local/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
chmod +x ~/.local/bin/gimme
popd || exit
eval "$(gimme 1.17)"