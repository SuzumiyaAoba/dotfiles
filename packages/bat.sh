#!/bin/bash

# Install bat
#   https://crates.io/crates/bat#installation

case ${OSTYPE} in
    darwin*)
        brew install bat
        ;;
    linux*)
        sudo apt install -y bat
        mkdir -p ~/.local/bin
        ln -s /usr/bin/batcat ~/.local/bin/bat
        ;;
esac
