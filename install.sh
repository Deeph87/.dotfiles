#!/usr/bin/env bash

echo "Est-ce une installation NixOS ? (y - n)"
read isNixosInstall

stow bash --target ~
stow git --target ~
stow nvim --target ~
stow starship --target ~

if [ $isNixosInstall == "y" ]
then
    # Add display link driver in the store to enable a second monitor displaying with a dock
    nix-prefetch-url --name displaylink-580.zip https://www.synaptics.com/sites/default/files/exe_files/2023-08/DisplayLink%20USB%20Graphics%20Software%20for%20Ubuntu5.8-EXE.zip
    stow nixos --target="/etc"
    nixos-rebuild switch
fi