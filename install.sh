#!/usr/bin/env bash

echo "Est-ce une installation NixOS ? (y - n)"
read isNixosInstall

if [ $isNixosInstall == "y" ]
then
    echo "Cool c'est NixOS !"
else
    echo "Dommage, ce n'est pas Nixos :'("
fi