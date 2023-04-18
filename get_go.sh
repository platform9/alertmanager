#!/usr/bin/env bash
set -x
# Download the Go binary
pushd $HOME || exit
curl -sL -o ~/.local/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
chmod +x ~/.local/bin/gimme
popd || exit
eval "$(gimme 1.17)"