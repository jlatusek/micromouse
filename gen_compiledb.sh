#!/bin/bash

if ! command -v compiledb; then
    echo "Command compiledb does not exist."
    read -p "Do you wish to install this program using pip?[y/n]" yn
    case $yn in 
        [Yy]* ) pip install --user compiledb;;
        [Nn]* ) exit 1;;
        *) echo "Please answer yes or no"; exit 1;;
    esac
fi

compiledb make all -j4