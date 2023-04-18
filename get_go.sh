#!/usr/bin/env bash
set -x

# Set the Go version you want to install
GO_VERSION=1.17.13

# Set the OS and architecture
OS=linux
ARCH=amd64

# Download the Go binary
pushd $HOME || exit
curl -LO "https://golang.org/dl/go$GO_VERSION.$OS-$ARCH.tar.gz"
# Extract the Go binary to $HOME/go
sudo tar -C /usr/loca/ -xzf go$GO_VERSION.$OS-$ARCH.tar.gz
popd || exit
# Add Go to the PATH environment variable
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc


# Refresh the PATH environment variable
source ~/.bashrc

# Verify that Go has been installed
go version || exit
