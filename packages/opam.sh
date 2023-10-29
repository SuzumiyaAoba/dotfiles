#!/bin/bash

# Install opam
#   https://opam.ocaml.org/doc/Install.html

case ${OSTYPE} in
    darwin*)
        brew install opam
        ;;
    linux*)
        sudo apt install -y opam
        ;;
esac
