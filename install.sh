#!/usr/bin/env bash

echo "Installation pour quel OS ? (windows | nixos)"
read os

echo "Installer starship ? (y - n)"
read shouldInstallStarship

if [ $os == "nixos" ]
then
    # Add display link driver in the store to enable a second monitor displaying with a dock
    nix-prefetch-url --name displaylink-580.zip https://www.synaptics.com/sites/default/files/exe_files/2023-08/DisplayLink%20USB%20Graphics%20Software%20for%20Ubuntu5.8-EXE.zip
    stow nixos --target="/etc"
    nixos-rebuild switch
fi

if [ $shouldInstallStarship == "y" ]
then
    if [ $os == "windows" ]
    then
        export BIN_DIR=~/bin
    fi
    curl -sS https://starship.rs/install.sh | sh
fi

touch ~/.aliasctxrc
mkdir --parents ~/.config/git && touch ~/.config/git/user

if [ $os == "windows" ]
then
    echo "set bell-style none" >> ~/.inputrc
    export MSYS="winsymlinks:nativestrict"
fi

stow bash --target ~
stow git --target ~
stow nvim --target ~
stow starship --target ~
