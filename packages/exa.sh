#!/bin/bash

# Install bat
#   https://crates.io/crates/bat#installation

case ${OSTYPE} in
    darwin*)
        brew install exa
        ;;
    linux*)
        sudo apt install -y exa
        ;;
esac
